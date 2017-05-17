package org.rabix.bindings;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public enum ProtocolType {
  CWL("org.rabix.bindings.cwl.CWLBindings", 3, new HashSet<String>(Arrays.asList("v1.0", "v1.1.0-dev1"))),
  DRAFT2("org.rabix.bindings.draft2.Draft2Bindings", 4, new HashSet<String>()),
  SB("org.rabix.bindings.sb.SBBindings", 1, new HashSet<String>(Arrays.asList("sbg:draft-2"))),
  DRAFT3("org.rabix.bindings.draft3.Draft3Bindings", 2, new HashSet<String>(Arrays.asList("cwl:draft-3")));

  public final int order;
  public final String bindingsClass;
  public final Set<String> appVersions;

  private ProtocolType(String bindingsClass, int order, Set<String> appVersions) {
    this.order = order;
    this.appVersions = appVersions;
    this.bindingsClass = bindingsClass;
  }

  public static ProtocolType create(String type) {
    for (ProtocolType protocolType : ProtocolType.values()) {
      if (protocolType.name().equalsIgnoreCase(type)) {
        return protocolType;
      }
    }
    return null;
  }
  
  public static boolean containsIgnoreCase(ProtocolType type, String version) {
    for (String appVersion : type.appVersions) {
      if (appVersion.equalsIgnoreCase(version)) {
        return true;
      }
    }
    return false;
  }
}
