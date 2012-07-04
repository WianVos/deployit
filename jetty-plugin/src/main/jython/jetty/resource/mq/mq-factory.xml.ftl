<!-- ${deployed.name}:begin -->
<New id="${deployed.name}" class="org.eclipse.jetty.plus.jndi.Resource">
  <Arg></Arg>
  <Arg>${deployed.jndiName}</Arg>
  <Arg>
    <New class="${deployed.class}">
      <Set name="hostName">${deployed.hostName}</Set>
      <Set name="queueManager">${deployed.queueManager}</Set>
      <Set name="transportType">${deployed.transportType}</Set>
      <Set name="useConnectionPooling">${deployed.useConnectionPooling?string("true", "false")}</Set>
      <Set name="clientReconnectOptions">${deployed.clientReconnectOptions}</Set>
<#if deployed.port?? && deployed.port != 0>
      <Set name="port">${deployed.port}</Set>
</#if>
<#if deployed.channel?? && deployed.channel?has_content>
      <Set name="channel">${deployed.channel}</Set>
</#if>
<#if deployed.CCDTURL?? && deployed.CCDTURL?has_content>
      <Set name="CCDTURL">${deployed.CCDTURL}</Set>
</#if>
    </New>
  </Arg>
</New>
<!-- ${deployed.name}:end -->
