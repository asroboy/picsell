<%@ page import="com.picsell.data.ProfileUser" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin">
    <g:set var="entityName" value="${message(code: 'profileUser.label', default: 'ProfileUser')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="row">
    <div id="show-profileUser" class="content scaffold-show" role="main">
        <h1>My Profile</h1>
        <br/>

    %{--<p>--}%
    %{--<g:link class="list btn btn-outline btn-default" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link>--}%
    %{--<g:link class="create btn btn-outline btn-default" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>--}%

    %{--</p>--}%
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            <br/>
        </g:if>
        <table class="table">
            <tbody>

            <g:if test="${profileUserInstance?.namaDepan}">
                <tr>
                    <td><span id="namaDepan-label" class="property-label"><g:message code="profileUser.namaDepan.label"
                                                                                     default="Nama Depan"/></span>
                    </td>
                    <td><span class="property-value" aria-labelledby="namaDepan-label"><g:fieldValue
                            bean="${profileUserInstance}" field="namaDepan"/></span>
                    </td>

                </tr>
            </g:if>

            <g:if test="${profileUserInstance?.namaBelakang}">
                <tr>
                    <td><span id="namaBelakang-label" class="property-label"><g:message
                            code="profileUser.namaBelakang.label"
                            default="Nama Belakang"/></span>
                    </td>
                    <td>
                        <span class="property-value" aria-labelledby="namaBelakang-label"><g:fieldValue
                                bean="${profileUserInstance}" field="namaBelakang"/></span>
                    </td>
                </tr>

            </g:if>

            <g:if test="${profileUserInstance?.alamat}">
                <tr>
                    <td>
                        <span id="alamat-label" class="property-label"><g:message code="profileUser.alamat.label"
                                                                                  default="Alamat"/></span>

                    </td>
                    <td><span class="property-value" aria-labelledby="alamat-label"><g:fieldValue
                            bean="${profileUserInstance}"
                            field="alamat"/></span>

                    </td>
                </tr>

            </g:if>

            <g:if test="${profileUserInstance?.kecamatan}">
                <tr>
                    <td><span id="kecamatan-label" class="property-label"><g:message code="profileUser.kecamatan.label"
                                                                                     default="Kecamatan"/></span>
                    </td>
                    <td>
                        <span class="property-value" aria-labelledby="kecamatan-label"><g:fieldValue
                                bean="${profileUserInstance}" field="kecamatan"/></span>
                    </td>
                </tr>
            </g:if>

            <g:if test="${profileUserInstance?.kotaKabupaten}">
                <tr>
                    <td>
                        <span id="kotaKabupaten-label" class="property-label"><g:message
                                code="profileUser.kotaKabupaten.label"
                                default="Kota Kabupaten"/></span>
                    </td>
                    <td>
                        <span class="property-value" aria-labelledby="kotaKabupaten-label"><g:fieldValue
                                bean="${profileUserInstance}" field="kotaKabupaten"/></span>
                    </td>
                </tr>
            </g:if>

            <g:if test="${profileUserInstance?.provinsi}">
                <tr>
                    <td>
                        <span id="provinsi-label" class="property-label"><g:message code="profileUser.provinsi.label"
                                                                                    default="Provinsi"/></span>
                    </td>
                    <td>
                        <span class="property-value" aria-labelledby="provinsi-label"><g:fieldValue
                                bean="${profileUserInstance}" field="provinsi"/></span>
                    </td>
                </tr>

            </g:if>

            <g:if test="${profileUserInstance?.jenisKartuIdentitas}">
                <tr>
                    <td>
                        <span id="jenisKartuIdentitas-label" class="property-label"><g:message
                                code="profileUser.jenisKartuIdentitas.label" default="Jenis Kartu Identitas"/></span>
                    </td><td>
                    <span class="property-value" aria-labelledby="jenisKartuIdentitas-label"><g:fieldValue
                            bean="${profileUserInstance}" field="jenisKartuIdentitas"/></span>
                </td>
                </tr>
            </g:if>

            <g:if test="${profileUserInstance?.nomorIdIdentitas}">
                <tr>
                    <td>
                        <span id="nomorIdIdentitas-label" class="property-label"><g:message
                                code="profileUser.nomorIdIdentitas.label" default="Nomor Id Identitas"/></span>
                    </td>

                    <td>
                        <span class="property-value" aria-labelledby="nomorIdIdentitas-label"><g:fieldValue
                                bean="${profileUserInstance}" field="nomorIdIdentitas"/></span>
                    </td>
                </tr>
            </g:if>

            <g:if test="${profileUserInstance?.noTelp}">
                <tr>
                    <td>
                        <span id="noTelp-label" class="property-label"><g:message code="profileUser.noTelp.label"
                                                                                  default="No Telp"/></span>
                    </td>
                    <td>
                        <span class="property-value" aria-labelledby="noTelp-label"><g:fieldValue
                                bean="${profileUserInstance}"
                                field="noTelp"/></span>
                    </td>
                </tr>
            </g:if>

            <g:if test="${profileUserInstance?.tempatLahir}">
                <tr>
                    <td>
                        <span id="tempatLahir-label" class="property-label"><g:message
                                code="profileUser.tempatLahir.label"
                                default="Tempat Lahir"/></span>
                    </td><td>
                    <span class="property-value" aria-labelledby="tempatLahir-label"><g:fieldValue
                            bean="${profileUserInstance}" field="tempatLahir"/></span>

                </td></tr>
            </g:if>

            <g:if test="${profileUserInstance?.tglLahir}">
                <tr>
                    <td>
                        <span id="tglLahir-label" class="property-label"><g:message code="profileUser.tglLahir.label"
                                                                                    default="Tgl Lahir"/></span>
                    </td>
                    <td>
                        <span class="property-value" aria-labelledby="tglLahir-label"><g:formatDate
                                date="${profileUserInstance?.tglLahir}"/></span>

                    </td>
                </tr>
            </g:if>

            <g:if test="${profileUserInstance?.user}">
                <tr>
                    <td>
                        <span id="user-label" class="property-label"><g:message code="profileUser.user.label"
                                                                                default="User"/></span>
                    </td>
                    <td>
                        <span class="property-value" aria-labelledby="user-label"><g:link controller="user"
                                                                                          action="show"
                                                                                          id="${profileUserInstance?.user?.id}">${profileUserInstance?.user?.encodeAsHTML()}</g:link></span>
                    </td>
                </tr>
            </g:if>

            </tbody>

        </table>
        <g:form url="[resource: profileUserInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit btn btn-outline btn-warning" action="edit"
                        resource="${profileUserInstance}"><g:message
                        code="default.button.edit.label" default="Edit"/></g:link>
                %{--<g:actionSubmit class="delete" action="delete"--}%
                %{--value="${message(code: 'default.button.delete.label', default: 'Delete')}"--}%
                %{--onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>--}%
            </fieldset>
        </g:form>
    </div>
</div>

</body>
</html>
