package org.rabix.bindings;


public enum ProtocolType {
  CWL("org.rabix.bindings.cwl.CWLBindings", 1, "v1.0"),
  DRAFT2("org.rabix.bindings.draft2.Draft2Bindings", 3, null),
  SB("org.rabix.bindings.sb.SBBindings", 2, "sbg:draft-2"),
  DRAFT3("org.rabix.bindings.draft3.Draft3Bindings", 4, "cwl:draft-3");

  public final int order;
  public final String bindingsClass;
  public final String appVersion;

  private ProtocolType(String bindingsClass, int order, String appVersion) {
    this.order = order;
    this.appVersion = appVersion;
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
}
