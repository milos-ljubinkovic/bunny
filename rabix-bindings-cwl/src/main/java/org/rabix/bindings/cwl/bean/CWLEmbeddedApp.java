package org.rabix.bindings.cwl.bean;

import java.io.IOException;
import java.util.List;

import org.rabix.bindings.BindingException;
import org.rabix.bindings.Bindings;
import org.rabix.bindings.BindingsFactory;
import org.rabix.bindings.cwl.bean.CWLEmbeddedApp.CWLEmbededAppSerializer;
import org.rabix.bindings.model.Application;
import org.rabix.bindings.model.ApplicationPort;
import org.rabix.bindings.model.ValidationReport;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.google.common.base.Function;
import com.google.common.collect.Lists;

@JsonDeserialize(as = CWLEmbeddedApp.class)
@JsonSerialize(using = CWLEmbededAppSerializer.class)
public class CWLEmbeddedApp extends CWLJobApp {

  private Application application;
  private List<CWLInputPort> inputs;
  private List<CWLOutputPort> outputs;

  @JsonCreator
  public CWLEmbeddedApp(String raw) {
    try {
      Bindings bindings = BindingsFactory.create(raw);

      application = bindings.loadAppObject(raw);
      inputs = Lists.transform(application.getInputs(), new Function<ApplicationPort, CWLInputPort>() {
        @Override
        public CWLInputPort apply(ApplicationPort port) {
          return new CWLInputPort(port.getId(), port.getDefaultValue(), port.getSchema(), null, null, null,
              port.getScatter(), null, port.getLinkMerge(), port.getDescription(), null);
        }
      });
      outputs = Lists.transform(application.getOutputs(), new Function<ApplicationPort, CWLOutputPort>() {
        @Override
        public CWLOutputPort apply(ApplicationPort port) {
          return new CWLOutputPort(port.getId(), null, port.getDefaultValue(), port.getSchema(), null, port.getScatter(), null, port.getLinkMerge(), null, port.getDescription());
        }
      });
    } catch (BindingException e) {
      throw new RuntimeException(e);
    }
  }

  @Override
  public List<CWLInputPort> getInputs() {
    return inputs;
  }

  @Override
  public List<CWLOutputPort> getOutputs() {
    return outputs;
  }

  @Override
  public ValidationReport validate() {
    return application.validate();
  }

  @Override
  @JsonIgnore
  public CWLJobAppType getType() {
    return CWLJobAppType.EMBEDDED;
  }

  public static class CWLEmbededAppSerializer extends JsonSerializer<CWLEmbeddedApp> {
    @Override
    public void serialize(CWLEmbeddedApp value, JsonGenerator gen, SerializerProvider serializers) throws IOException, JsonProcessingException {
      gen.writeObject(value.application);
    }
  }
}
