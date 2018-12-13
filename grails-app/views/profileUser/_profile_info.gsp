<table class="table table-striped">
    <tr>
        <td>User ID</td>
        <td>:</td>
        <td>${userObject?.id}</td>
    </tr>
    <tr>
        <td>Username</td>
        <td>:</td>
        <td>${userObject?.username}</td>
    </tr>
    <tr>
        <td colspan="3">
            <button
                    class="myButton"
                    onclick="showChangePasswordModal()">Change password</button>
        </td>
    </tr>
    <tr>
        <td>Email</td>
        <td>:</td>
        <td>${userObject?.email}</td>
    </tr>
    <tr>
        <td>First Name</td>
        <td>:</td>
        <td>${userObject?.firstName}</td>
    </tr>

    <tr>
        <td>Last Name</td>
        <td>:</td>
        <td>${userObject?.lastName}</td>
    </tr>
    <tr>
        <td>Address</td>
        <td>:</td>
        <td>${(userObject?.alamat ?: "") + " " + (userObject?.kotaKabupaten ?: "") + " " + (userObject?.provinsi ?: "")}</td>
    </tr>
    <tr>
        <td colspan="3">
            <button
                    class="myButton"
                    onclick="updateProfileModal()">Update profile</button>
            %{--<g:if test="${profile}">--}%
            %{--<a--}%
            %{--href="${createLink(controller: 'profileUser', action: 'profile', id: profile?.id)}"--}%
            %{--class="btn btn-sm btn-danger">Update profile</a>--}%
            %{--</g:if>--}%
            %{--<g:else>--}%
            %{--<a--}%
            %{--href="${createLink(controller: 'profileUser', action: 'profile', params: [uid: userObject?.id])}"--}%
            %{--class="btn btn-sm btn-danger">Update profile</a>--}%
            %{--</g:else>--}%

        </td>
    </tr>
</table>


%{--<table class="table">--}%
    %{--<tr>--}%
        %{--<td><span id="user-label" class="property-label"><g:message code="profileUser.user.label"--}%
                                                                    %{--default="User"/></span></td>--}%
        %{--<td>--}%
            %{--<g:if test="${profileUserInstance?.user}">--}%
                %{--<span class="property-value" aria-labelledby="user-label"><g:link controller="user"--}%
                                                                                  %{--action="show"--}%
                                                                                  %{--id="${profileUserInstance?.user?.id}">${profileUserInstance?.user?.encodeAsHTML()}</g:link></span>--}%

            %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%
    %{--<tr>--}%
        %{--<td><span id="namaDepan-label" class="property-label">First Name</span></td>--}%
        %{--<td>--}%
            %{--<g:if test="${profileUserInstance?.namaDepan}">--}%
                %{--<b><span class="property-value" aria-labelledby="namaDepan-label"><g:fieldValue--}%
                        %{--bean="${profileUserInstance}" field="namaDepan"/></span></b>--}%
            %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%




    %{--<tr>--}%
        %{--<td><span id="namaBelakang-label" class="property-label">Last Name</span></td>--}%
        %{--<td>--}%
            %{--<g:if test="${profileUserInstance?.namaBelakang}">--}%
                %{--<b><span class="property-value" aria-labelledby="namaBelakang-label"><g:fieldValue--}%
                        %{--bean="${profileUserInstance}" field="namaBelakang"/></span></b>--}%
            %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%



    %{--<tr>--}%
        %{--<td><span id="alamat-label" class="property-label">Address</span></td>--}%
        %{--<td>--}%
            %{--<g:if test="${profileUserInstance?.alamat}">--}%
                %{--<span class="property-value" aria-labelledby="alamat-label"><g:fieldValue--}%
                        %{--bean="${profileUserInstance}"--}%
                        %{--field="alamat"/></span>--}%
            %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%




    %{--<tr>--}%
        %{--<td><span id="kecamatan-label" class="property-label">District</span></td>--}%
        %{--<td>--}%
            %{--<g:if test="${profileUserInstance?.kecamatan}">--}%
                %{--<span class="property-value" aria-labelledby="kecamatan-label"><g:fieldValue--}%
                        %{--bean="${profileUserInstance}" field="kecamatan"/></span>--}%
            %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%



    %{--<tr>--}%
        %{--<td><span id="kotaKabupaten-label" class="property-label">City</span>--}%
        %{--</td>--}%
        %{--<td>--}%
            %{--<g:if test="${profileUserInstance?.kotaKabupaten}">--}%
                %{--<span class="property-value" aria-labelledby="kotaKabupaten-label"><g:fieldValue--}%
                    %{--bean="${profileUserInstance}" field="kotaKabupaten"/></span--}%
            %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%



    %{--<tr>--}%
        %{--<td><span id="provinsi-label" class="property-label">Province</span>--}%
        %{--</td>--}%
        %{--<td>--}%
            %{--<g:if test="${profileUserInstance?.provinsi}">--}%
                %{--<span class="property-value" aria-labelledby="provinsi-label"><g:fieldValue--}%
                        %{--bean="${profileUserInstance}" field="provinsi"/></span>--}%
            %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%




    %{--<tr>--}%
        %{--<td><span id="jenisKartuIdentitas-label" class="property-label">ID Card Type</span>--}%
        %{--</td>--}%
        %{--<td>--}%
            %{--<g:if test="${profileUserInstance?.jenisKartuIdentitas}">--}%
                %{--<span class="property-value" aria-labelledby="jenisKartuIdentitas-label"><g:fieldValue--}%
                        %{--bean="${profileUserInstance}" field="jenisKartuIdentitas"/></span>--}%
            %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%



    %{--<tr>--}%
        %{--<td><span id="nomorIdIdentitas-label" class="property-label">ID Card Number</span></td>--}%
        %{--<td>--}%
            %{--<g:if test="${profileUserInstance?.nomorIdIdentitas}">--}%
                %{--<span class="property-value" aria-labelledby="nomorIdIdentitas-label"><g:fieldValue--}%
                        %{--bean="${profileUserInstance}" field="nomorIdIdentitas"/></span>--}%
            %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%




    %{--<tr>--}%
        %{--<td><span id="noTelp-label" class="property-label">Phone</span>--}%
        %{--</td>--}%
        %{--<td><g:if test="${profileUserInstance?.noTelp}">--}%
            %{--<span class="property-value" aria-labelledby="noTelp-label"><g:fieldValue--}%
                    %{--bean="${profileUserInstance}"--}%
                    %{--field="noTelp"/></span>--}%
        %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%



    %{--<tr>--}%
        %{--<td><span id="tempatLahir-label" class="property-label">Birth Place</span></td>--}%
        %{--<td>--}%
            %{--<g:if test="${profileUserInstance?.tempatLahir}">--}%
                %{--<span class="property-value" aria-labelledby="tempatLahir-label"><g:fieldValue--}%
                        %{--bean="${profileUserInstance}" field="tempatLahir"/></span>--}%
            %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%



    %{--<tr>--}%
        %{--<td><span id="tglLahir-label" class="property-label">Birth Date</span></td>--}%
        %{--<td>--}%
            %{--<g:if test="${profileUserInstance?.tglLahir}">--}%
                %{--<span class="property-value" aria-labelledby="tglLahir-label"><g:formatDate--}%
                        %{--date="${profileUserInstance?.tglLahir}"/></span>--}%
            %{--</g:if>--}%
        %{--</td>--}%
    %{--</tr>--}%

%{--</table>--}%

%{--<button id="btn-edit" onclick="changeProfile()" name="edit" class="btn btn-sm btn-block btn-outline-danger">Change Profile</button>--}%
