<!-- ${deployed.name}:begin -->
<New id="${deployed.name}" class="org.eclipse.jetty.plus.jndi.Resource">
  <Arg></Arg>
  <Arg>${deployed.jndiName}</Arg>
  <Arg>
    <New class="${deployed.class}">
      <Set name="baseQueueName">${deployed.baseQueueName}</Set>
<#if deployed.baseQueueManagerName?? && deployed.baseQueueManagerName?has_content>
      <Set name="baseQueueManagerName">${deployed.baseQueueManagerName}</Set>
</#if>
    </New>
  </Arg>
</New>
<!-- ${deployed.name}:end -->
