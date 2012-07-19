<#-- Uses FreeMarker template syntax, template guide can be found at http://freemarker.org/docs/dgui.html -->

<#import "common.ftl" as common>
<#import "responsibility.ftl" as resp>

<#global message>Investigation of ${testNames?size} tests in ${project.name} updated.
<@resp.subject responsibility testNames?size + ' tests'/>

<@resp.comment responsibility/>
${link.allResponsibilitiesLink}</#global>
