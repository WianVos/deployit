<!-- ${deployed.name}:begin -->
<New id="${deployed.name}" class="org.eclipse.jetty.plus.jndi.Resource">
  <Arg></Arg>
  <Arg>${deployed.jndiName}</Arg>
  <Arg>
    <New class="org.apache.commons.dbcp.BasicDataSource">
      <Set name="driverClassName">${deployed.class}</Set>
      <Set name="url">jdbc:db2://${deployed.servername}:${deployed.portnumber}/${deployed.databasename}</Set>
      <Set name="username">${deployed.user}</Set>
      <Set name="password">${deployed.password}</Set>
      <Set name="connectionProperties">progressiveStreaming=${deployed.progressiveStreaming}</Set>
      <Set name="defaultAutoCommit">${deployed.defaultAutoCommit?string("true", "false")}</Set>
      <Set name="defaultTransactionIsolation">${deployed.defaultTransactionIsolation}</Set>
      <Set name="initialSize">${deployed.initialSize}</Set>
      <Set name="maxActive">${deployed.maxActive}</Set>
      <Set name="maxIdle">${deployed.maxIdle}</Set>
      <Set name="minIdle">${deployed.minIdle}</Set>
      <Set name="maxWait">${deployed.maxWait}</Set>
    </New>
  </Arg>
</New>
<!-- ${deployed.name}:end -->
