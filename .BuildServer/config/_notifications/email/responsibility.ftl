<#-- Uses FreeMarker template syntax, template guide can be found at http://freemarker.org/docs/dgui.html -->

<#macro subject responsibility object>
  <#-- @ftlvariable name="responsibility" type="jetbrains.buildServer.responsibility.ResponsibilityEntry" -->
  <#-- @ftlvariable name="object" type="java.lang.Object" -->
  <#compress>
    <#if responsibility.state.active>
      <#if responsibility.reporterUser?? && responsibility.responsibleUser?? &&
           responsibility.reporterUser.id == responsibility.responsibleUser.id>
        ${responsibility.responsibleUser.descriptiveName?html} started investigation of ${object}
      <#else>
        <#assign byWhom>
          <#if responsibility.reporterUser??>by ${responsibility.reporterUser.descriptiveName?html}</#if>
        </#assign>
        ${responsibility.responsibleUser.descriptiveName?html} is assigned for investigation of ${object} ${byWhom}
      </#if>
    </#if>
    <#if responsibility.state.fixed>
      ${responsibility.responsibleUser.descriptiveName?html} fixed ${object}
    </#if>
    <#if responsibility.state.givenUp>
      ${responsibility.responsibleUser.descriptiveName?html} gave up fixing ${object}
    </#if>
  </#compress>
</#macro>

<#macro comment responsibility>
<#-- @ftlvariable name="responsibility" type="jetbrains.buildServer.responsibility.ResponsibilityEntry" -->
<#if responsibility.comment?length != 0>
Comment: ${responsibility.comment?html}
</#if>
</#macro>
