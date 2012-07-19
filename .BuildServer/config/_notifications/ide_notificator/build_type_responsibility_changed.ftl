<#-- Uses FreeMarker template syntax, template guide can be found at http://freemarker.org/docs/dgui.html -->

<#import "common.ftl" as common>
<#import "responsibility.ftl" as resp>

<#global link>${link.buildTypeConfigLink}</#global>
<#global message><@resp.subject responsibility '${project.name}::${buildType.name}'/>

<@resp.comment responsibility/></#global>
