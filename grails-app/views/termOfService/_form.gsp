<%@ page import="com.picsell.config.TermOfService" %>



<div class="fieldcontain ${hasErrors(bean: termOfServiceInstance, field: 'tos', 'error')} ">
    %{--<label for="tos">--}%
    %{--<g:message code="termOfService.tos.label" default="Tos" />--}%

    %{--</label>--}%
    %{--<g:textArea name="tos" cols="40" rows="5" maxlength="10000" value="${termOfServiceInstance?.tos}"/>--}%
    <div id="summernote">${raw(termOfServiceInstance?.tos)}</div>
</div>




