<table class="table">
    <tr>
        <td><span id="name-label" class="property-label"><g:message code="profileUser.name.label"
                                                                    default="Account"/></span></td>
        <td>
            <g:if test="${accountInstance?.name}">
                <span class="property-value" aria-labelledby="user-label"><g:message message="${accountInstance?.name}"></g:message></span>

            </g:if>
        </td>
    </tr>
    <tr>
        <td><span id="type-label" class="property-label"><g:message code="profileUser.type.label"
                                                                    default="Type"/></span></td>
        <td>
            <g:if test="${accountInstance?.type}">
                <span class="property-value" aria-labelledby="user-label"><g:message message="${accountInstance?.type}"></g:message></span>

            </g:if>
        </td>
    </tr>
    <tr>
        <td><span id="lisence-label" class="property-label"><g:message code="profileUser.lisence.label"
                                                                    default="Lisence"/></span></td>
        <td>
            <g:if test="${accountInstance?.lisence}">
                <span class="property-value" aria-labelledby="user-label"><g:message message="${accountInstance?.lisence}"></g:message></span>

            </g:if>
        </td>
    </tr>
    <tr>
        <td><span id="maxImages-label" class="property-label"><g:message code="profileUser.maxImages.label"
                                                                       default="Max Allowed Images"/></span></td>
        <td>
            <g:if test="${accountInstance?.maxImages}">
                <span class="property-value" aria-labelledby="user-label"><g:message message="${accountInstance?.maxImages}"></g:message></span>

            </g:if>
        </td>
    </tr>
    <tr>
        <td><span id="maxTeamUser-label" class="property-label"><g:message code="profileUser.maxTeamUser.label"
                                                                         default="Max Allowed Team"/></span></td>
        <td>
            <g:if test="${accountInstance?.maxTeamUser}">
                <span class="property-value" aria-labelledby="user-label"><g:message message="${accountInstance?.maxTeamUser}"></g:message></span>

            </g:if>
        </td>
    </tr>

    <tr>
        <td><span id="info-label" class="property-label"><g:message code="profileUser.info.label"
                                                                           default="More info"/></span></td>
        <td>
            <g:if test="${accountInstance?.info}">
                <span class="property-value" aria-labelledby="user-label"><g:message message="${accountInstance?.info}"></g:message></span>

            </g:if>
        </td>
    </tr>
</table>