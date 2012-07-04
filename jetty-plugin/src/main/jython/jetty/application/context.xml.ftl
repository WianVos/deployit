<?xml version="1.0"?>
<!DOCTYPE Configure PUBLIC "-//Jetty//Configure//EN" "http://www.eclipse.org/jetty/configure.dtd">
<Configure class="org.eclipse.jetty.webapp.WebAppContext">

  <Set name="contextPath">${deployed.contextRoot}</Set>
  <Set name="war">${deployed.warTargetDirectory}/${step.artifact.name}</Set>

  <!-- change java.io.tmpdir default value -->
  <Call class="java.lang.System" name="setProperty">
    <Arg>java.io.tmpdir</Arg>
    <Arg>${deployed.container.home}/tmp/${step.artifact.name}</Arg>
  </Call>
  
</Configure>
