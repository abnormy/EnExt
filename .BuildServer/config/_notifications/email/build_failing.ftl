<#-- Uses FreeMarker template syntax, template guide can be found at http://freemarker.org/docs/dgui.html -->

<#import "common.ftl" as common>

<#global subject>[<@common.subjMarker/>, FAILING] Build ${project.name}::${buildType.name} #${build.buildNumber}</#global>

<#global body>Build ${project.name}::${buildType.name} #${build.buildNumber} failing ${var.buildShortStatusDescription}.
Agent: ${agentName}
Build results: ${link.buildResultsLink}

${var.buildCompilationErrors}${var.buildFailedTestsErrors}${var.buildChanges}
<@common.footer/></#global>

<#global bodyHtml>
<div>
  <div>
    Build <i>${project.name?html}::${buildType.name?html} <a href='${link.buildResultsLink}'>#${build.buildNumber}</a></i> failing
    ${var.buildShortStatusDescription}
  </div>
  <@common.build_agent build/>
  <@common.build_comment build/>
  <br>
  <@common.build_changes var.changesBean/>
  <@common.compilation_errors var.compilationBean/>
  <@common.test_errors var.failedTestsBean/>
  <@common.footerHtml/>
</div>
</#global>
