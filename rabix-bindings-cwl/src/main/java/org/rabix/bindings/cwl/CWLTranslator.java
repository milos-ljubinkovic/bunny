package org.rabix.bindings.cwl;

import java.util.*;
import java.util.Map.Entry;
import java.util.stream.Collectors;

import org.rabix.bindings.BindingException;
import org.rabix.bindings.ProtocolTranslator;
import org.rabix.bindings.ProtocolType;
import org.rabix.bindings.cwl.bean.*;
import org.rabix.bindings.cwl.helper.CWLJobHelper;
import org.rabix.bindings.cwl.helper.CWLSchemaHelper;
import org.rabix.bindings.helper.DAGValidationHelper;
import org.rabix.bindings.model.*;
import org.rabix.bindings.model.dag.DAGContainer;
import org.rabix.bindings.model.dag.DAGLink;
import org.rabix.bindings.model.dag.DAGLinkPort;
import org.rabix.bindings.model.dag.DAGLinkPort.LinkPortType;
import org.rabix.bindings.model.dag.DAGNode;
import org.rabix.common.helper.InternalSchemaHelper;

public class CWLTranslator implements ProtocolTranslator {

  @Override
  public DAGNode translateToDAG(Job job) throws BindingException {
    CWLJob cwlJob = CWLJobHelper.getCWLJob(job);
    DAGNode dagNode = processBatchInfo(cwlJob, transformToGeneric(cwlJob.getId(), cwlJob));
    DAGValidationHelper.detectLoop(dagNode);
    DAGValidationHelper.detectUnconnectedOutputs(dagNode);
    processPorts(dagNode);
    return dagNode;
  }
  
  @SuppressWarnings("unchecked")
  private DAGNode processBatchInfo(CWLJob job, DAGNode node) {
    Object batch = job.getScatter();

    if (batch != null) {
      List<String> scatterList = new ArrayList<>();
      if (batch instanceof List<?>) {
        for (String scatter : ((List<String>) batch)) {
          scatterList.add(CWLSchemaHelper.normalizeId(scatter));
        }
      } else if (batch instanceof String) {
        scatterList.add(CWLSchemaHelper.normalizeId((String) batch));
      } else {
        throw new RuntimeException("Failed to process batch properties. Invalid application structure.");
      }

      for (String scatter : scatterList) {
        for (DAGLinkPort inputPort : node.getInputPorts()) {
          if (inputPort.getId().equals(scatter)) {
            inputPort.setScatter(true);
          }
        }

        if (node instanceof DAGContainer) {
          DAGContainer container = (DAGContainer) node;
          for (DAGLink link : container.getLinks()) {
            if (link.getSource().getId().equals(scatter) && link.getSource().getType().equals(LinkPortType.INPUT)) {
              link.getSource().setScatter(true);
            }
          }
        }
      }
    }
    return node;
  }

  @SuppressWarnings("unchecked")
  private DAGNode transformToGeneric(String globalJobId, CWLJob job) throws BindingException {
    List<DAGLinkPort> inputPorts = new ArrayList<>();
    
    for (ApplicationPort port : job.getApp().getInputs()) {
      DAGLinkPort linkPort = null;
      if(job.getInputs().containsKey(port.getId())) {
        Object value = job.getInputs().get(port.getId());
        Object defaultValue = null;
        Object transform = null;
        if(value instanceof CWLStepInputs) {
          defaultValue = CWLValueTranslator.translateToCommon(((CWLStepInputs) value).getDefaultValue());
          transform = ((CWLStepInputs) value).getValueFrom();
        }
        else {
          defaultValue = CWLValueTranslator.translateToCommon(value);
        }
        linkPort = new DAGLinkPort(CWLSchemaHelper.normalizeId(port.getId()), job.getId(), LinkPortType.INPUT, LinkMerge.merge_nested, port.getScatter() != null ? port.getScatter() : false, defaultValue, transform);
      }
      else {
        linkPort = new DAGLinkPort(CWLSchemaHelper.normalizeId(port.getId()), job.getId(), LinkPortType.INPUT, LinkMerge.merge_nested, port.getScatter() != null ? port.getScatter() : false, null, null);
      }
      inputPorts.add(linkPort);
    }
    List<DAGLinkPort> outputPorts = new ArrayList<>();
    for (ApplicationPort port : job.getApp().getOutputs()) {
      DAGLinkPort linkPort = new DAGLinkPort(CWLSchemaHelper.normalizeId(port.getId()), job.getId(), LinkPortType.OUTPUT, LinkMerge.merge_nested, false, null, null);
      outputPorts.add(linkPort);
    }
    
    ScatterMethod scatterMethod = translateScatterMethod(job.getScatterMethod());
    if (!job.getApp().isWorkflow()) {
      Map<String, Object> commonDefaults = (Map<String, Object>) CWLValueTranslator.translateToCommon(extractDefaults(job.getInputs()));
      return new DAGNode(job.getId(), inputPorts, outputPorts, scatterMethod, job.getApp(), commonDefaults, ProtocolType.CWL);
    }

    CWLWorkflow workflow = (CWLWorkflow) job.getApp();

    List<DAGNode> children = new ArrayList<>();
    for (CWLStep step : workflow.getSteps()) {
      if ("nested_crossproduct".equals(step.getScatterMethod())) {
        children.add(transformNestedScatter(globalJobId, step));
      } else {
        children.add(transformToGeneric(globalJobId, step.getJob()));
      }
    }

    List<DAGLink> links = new ArrayList<>();
    for (CWLDataLink dataLink : workflow.getDataLinks()) {
      String source = dataLink.getSource();
      String sourceNodeId = null;
      String sourcePortId = null;
      if (!source.contains(InternalSchemaHelper.SLASH_SEPARATOR)) {
        sourceNodeId = job.getId();
        sourcePortId = source.substring(0);
      } else {
        sourceNodeId = job.getId() + InternalSchemaHelper.SEPARATOR + source.substring(0, source.indexOf(InternalSchemaHelper.SLASH_SEPARATOR));
        sourcePortId = source.substring(source.indexOf(InternalSchemaHelper.SLASH_SEPARATOR) + 1);
      }

      String destination = dataLink.getDestination();
      String destinationPortId = null;
      String destinationNodeId = null;
      if (!destination.contains(InternalSchemaHelper.SLASH_SEPARATOR)) {
        destinationNodeId = job.getId();
        destinationPortId = destination.substring(0);
      } else {
        destinationNodeId = job.getId() + InternalSchemaHelper.SEPARATOR + destination.substring(0, destination.indexOf(InternalSchemaHelper.SLASH_SEPARATOR));
        destinationPortId = destination.substring(destination.indexOf(InternalSchemaHelper.SLASH_SEPARATOR) + 1);
      }
      boolean isSourceFromWorkflow = !dataLink.getSource().contains(InternalSchemaHelper.SLASH_SEPARATOR);

      DAGLinkPort sourceLinkPort = new DAGLinkPort(sourcePortId, sourceNodeId, isSourceFromWorkflow ? LinkPortType.INPUT : LinkPortType.OUTPUT, LinkMerge.merge_nested, false, null, null);
      DAGLinkPort destinationLinkPort = new DAGLinkPort(destinationPortId, destinationNodeId, dataLink.isOutputSource()? LinkPortType.OUTPUT : LinkPortType.INPUT, dataLink.getLinkMerge(), dataLink.getScattered() != null ? dataLink.getScattered() : false, null, null);

      int position = dataLink.getPosition() != null ? dataLink.getPosition() : 1;
      links.add(new DAGLink(sourceLinkPort, destinationLinkPort, dataLink.getLinkMerge(), position));
    }
    Map<String, Object> commonDefaults = (Map<String, Object>) CWLValueTranslator.translateToCommon(extractDefaults(job.getInputs()));
    return new DAGContainer(job.getId(), inputPorts, outputPorts, job.getApp(), scatterMethod, links, children, commonDefaults, ProtocolType.CWL);
  }
  
  private Map<String, Object> extractDefaults(Map<String, Object> inputs) {
    Map<String, Object> defaults = new HashMap<>();
    
    for (Entry<String, Object> entry : inputs.entrySet()) {
      if (entry.getValue() != null) {
        if (entry.getValue() instanceof CWLStepInputs) {
          defaults.put(entry.getKey(), ((CWLStepInputs)entry.getValue()).getDefaultValue());
        } else {
          defaults.put(entry.getKey(), entry.getValue());
        }
      }
    }
    return defaults;
  }
  
  private void processPorts(DAGNode dagNode) {
    if (dagNode instanceof DAGContainer) {
      DAGContainer dagContainer = (DAGContainer) dagNode;
      
      for (DAGLink dagLink : dagContainer.getLinks()) {
        dagLink.getDestination().setLinkMerge(dagLink.getLinkMerge());
        processPorts(dagLink, dagNode);
        
        for (DAGNode childNode : dagContainer.getChildren()) {
          processPorts(dagLink, childNode);
          if (childNode instanceof DAGContainer) {
            processPorts(childNode);
          }
        }
      }
    }
  }
  
  private void processPorts(DAGLink dagLink, DAGNode dagNode) {
    for (DAGLinkPort dagLinkPort : dagNode.getInputPorts()) {
      if (dagLinkPort.equals(dagLink.getDestination())) {
        dagLinkPort.setLinkMerge(dagLink.getLinkMerge());
      }
    }
    for (DAGLinkPort dagLinkPort : dagNode.getOutputPorts()) {
      if (dagLinkPort.equals(dagLink.getDestination())) {
        dagLinkPort.setLinkMerge(dagLink.getLinkMerge());
      }
    }
  }

  private ScatterMethod translateScatterMethod(String scatterMethod) throws BindingException {
    if (scatterMethod == null || "dotproduct".equals(scatterMethod) || "nested_crossproduct".equals(scatterMethod)) {
      return ScatterMethod.dotproduct;
    }

    if ("flat_crossproduct".equals(scatterMethod)) {
      return ScatterMethod.crossproduct;
    }

    throw new BindingException("Unknown scatter method: " + scatterMethod);
  }

  private List<String> readScatter(Object scatter) throws BindingException {
    if (scatter instanceof String) {
      return Collections.singletonList((String) scatter);
    }

    if (scatter instanceof List) {
      return (List<String>) scatter;
    }

    throw new BindingException("Scatter must be a string or a list of strings.");
  }

  private CWLJob rescatter(CWLJob job, String port) {

    return new CWLJob(new NestingApp(job.getApp(), port), job.getInputs(), job.getOutputs(), job.getRuntime(), job.getId(), port, job.getScatterMethod());
  }

  private DAGNode transformNestedScatter(String globalJobId, List<String> ports, CWLJob nestedJob) throws BindingException {

    String port = ports.remove(0);
    String nodeId = nestedJob.getId();
    if (ports.isEmpty()) {
      return transformToGeneric(globalJobId, rescatter(nestedJob, port));
    }

    nestedJob.setId(nodeId + ".by_" + port);

    DAGNode nestedNode = transformNestedScatter(globalJobId, ports, nestedJob);

    List<DAGLinkPort> inputPorts = new ArrayList<>();
    List<DAGLinkPort> outputPorts = new ArrayList<>();
    List<DAGLink> links = new ArrayList<>();
    List<DAGNode> children = Collections.singletonList(nestedNode);

    for (DAGLinkPort inp: nestedNode.getInputPorts()) {
      DAGLinkPort dlp = new DAGLinkPort(inp.getId(), nodeId, LinkPortType.INPUT, inp.getLinkMerge(), inp.getId().equals(port), null, null);
      inputPorts.add(dlp);
      links.add(new DAGLink(dlp, inp, LinkMerge.merge_nested, 0));
    }

    for (DAGLinkPort out: nestedNode.getOutputPorts()) {
      DAGLinkPort dlp = new DAGLinkPort(out.getId(), nodeId, LinkPortType.OUTPUT, out.getLinkMerge(), false, null, null);
      outputPorts.add(dlp);
      links.add(new DAGLink(out, dlp, LinkMerge.merge_nested, 0));
    }

    return new DAGContainer(nodeId, inputPorts, outputPorts, nestedJob.getApp(), ScatterMethod.dotproduct, links, children, null, nestedNode.getProtocolType());

  }

  private DAGNode transformNestedScatter(String globalJobId, CWLStep step) throws BindingException {

    List<String> scatterPorts = readScatter(step.getScatter());

    if (scatterPorts.size() < 2) {
      return transformToGeneric(globalJobId, step.getJob());
    }

    return transformNestedScatter(globalJobId, scatterPorts, step.getJob());
  }

  private class NestingApp extends CWLJobApp {

    public NestingApp(CWLJobApp nestedApp, String port) {
      inputs = nestedApp.getInputs().stream().map(inp -> new CWLInputPort(inp.getId(), inp.getDefaultValue(), inp.getSchema(), inp.getInputBinding(), inp.getStreamable(), inp.getFormat(), inp.getId().equals(port), inp.getStageInput(), inp.getLinkMerge(), inp.getDescription(), inp.getSecondaryFiles())).collect(Collectors.toList());

      outputs = nestedApp.getOutputs().stream().map(out -> new CWLOutputPort(out.getId(), out.getFormat(), out.getDefaultValue(), out.getSchema(), out.getOutputBinding(), out.getScatter(), out.getSource(), out.getLinkMerge(), out.getSecondaryFiles(), out.getDescription())).collect(Collectors.toList());

      cwlVersion = nestedApp.getCwlVersion();
    }

    @Override
    public ValidationReport validate() {
      return new ValidationReport();
    }

    @Override
    public CWLJobAppType getType() {
      return CWLJobAppType.EMBEDDED;
    }
  }

}
