<%@ page import="com.picsell.config.TermOfService" %>

<div class="fieldcontain ${hasErrors(bean: termOfServiceInstance, field: 'tos', 'error')} form-group">
    <textarea id="summernote" name="tos" >${termOfServiceInstance?.tos}</textarea>
    %{--<g:textArea name="tos" cols="40" rows="25" maxlength="10000" value="${termOfServiceInstance?.tos}"--}%
                %{--class="form-control"/>--}%

    %{--<div id="summernote">${raw(termOfServiceInstance?.tos)}</div>--}%
</div>




