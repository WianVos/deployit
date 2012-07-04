<#include "resources.ftl">

<#assign filename = deployed.templateClasspathResources?first>
<#assign index = filename?last_index_of("/")>
<#assign filename = filename?substring(index + 1)>

RemoveEmptyLines
RemoveResource
InsertResource ${filename}
RemoveEmptyLines
