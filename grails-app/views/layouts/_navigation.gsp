<!-- Navigation -->
%{--<nav class="navbar navbar-expand-lg navbar-dark  fixed-top" style="background-color: #00796B;">--}%
%{--<div class="container-fluid">--}%
%{--<a class="navbar-brand" href="${createLink(controller: 'home', action: 'index')}">Picsell</a>--}%
%{--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"--}%
%{--aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">--}%
%{--<span class="navbar-toggler-icon"></span>--}%
%{--</button>--}%
%{--<g:render template="/layouts/category"></g:render>--}%

%{--</div>--}%
%{--</nav>--}%


<!-- Navigation -->
<g:set var="profileUser" value="${com.picsell.data.ProfileUser.findByUser(userObject)}"/>
<nav class="navbar navbar-expand-lg  fixed-top navbar-light" style="background-color: #ffffff;">
    <div class="container-fluid" style="padding-right: 0px">

        <a class="navbar-brand" href="${createLink(controller: 'home', action: 'index')}"><img
                src="${resource(dir: 'images/logo', file: 'logo_small.jpg')}" style="height: 60px; width:60px"/></a>


        <table style="width: 95%">
            <tbody>
            <tr>
                <td style="width: 60%"><div class="input-group">
                    <input id="search_text" type="text" placeholder="Search..." value="${params.key}" class="form-control"
                           aria-label="Text input with segmented dropdown button">

                    <div class="input-group-append">
                        <button type="button" class="btn btn-outline-secondary" onclick="search()"><i class="fa fa-search"></i></button>
                    </div>

                    <div class="dropdown" style="margin-left: 5px">
                        <button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>

                        <div class="input-group">
                            <div class="dropdown-menu">
                                <label class="dropdown-item">Search by category</label>

                                <div class="dropdown-divider" style="border-color:red;"></div>
                                <g:each in="${categories}">
                                    <a class="dropdown-item"
                                       href="${createLink(controller: 'home', action: 'index', params: [cat: it.name])}">${it.name}</a>
                                </g:each>
                                <a class="dropdown-item"
                                   href="${createLink(controller: 'home', action: 'index')}">All category</a>
                            </div>
                        </div>
                    </div>

                    <sec:ifLoggedIn><a href="${createLink(controller: 'Home', action: 'mychart')}"
                                       class="btn btn-outline-secondary" style="margin-left: 5px"><i
                                class="fa  fa-shopping-basket"></i></a></sec:ifLoggedIn>

                </div></td>
                <td style="width: 40%">
                    %{--<div class="col-md-2">--}%
                    %{--<a href="#">Login</a>--}%
                    %{--</div>--}%
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <g:render template="/layouts/category"></g:render>
                </td>
                <sec:ifLoggedIn>
                    <td rowspan="2">
                        <div style="margin-left:  10px;">

                            <g:set var="profilePicture_"
                                   value="${com.picsell.data.ImageFile.findByTableNameAndTableId(profileUser?.class?.simpleName, profileUser?.id)}"></g:set>
                            <g:if test="${profilePicture_}">
                                <img class="profile-pic"
                                     src="${createLink(controller: 'image', action: 'download', id: profilePicture_?.id)}"
                                     alt="" style="height: 60px; width: 60px">
                            </g:if>
                            <g:else>
                                <img src="${resource(dir: 'images', file: 'avatar-default.jpg')}"
                                     style="height: 60px; width: 60px"/>
                            </g:else>

                        </div>
                    </td>
                    <td rowspan="2">
                        <div style="margin-left: 5px; margin-left: 2px;">

                            <div class="btn-group">
                                <button class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                        style="background-color: white">
                                    <img style="height: 30px"
                                         src="${resource(dir: 'images', file: 'icon_menu_dots.png')}">
                                </button>

                                <div class="dropdown-menu dropdown-menu-right" style="right:0; left:auto;">
                                    <div class="dropdown-divider" style="border-color:red;"></div>
                                    <g:if test="${profileUser}">
                                        <a class="dropdown-item"
                                           href="${createLink(controller: 'profileUser', action: 'profile', id: profileUser?.id)}">Account Detail</a>

                                    </g:if>
                                    <g:else>
                                        <a class="dropdown-item"
                                           href="${createLink(controller: 'profileUser', action: 'profile', params: [uid: userObject?.id])}">Account Detail</a>

                                    </g:else>

                                    <g:each in="${userRoles}" var="userRole">
                                        <g:if test="${userRole?.role?.authority.equals("ROLE_CONTRIBUTOR")}">
                                            <div class="dropdown-divider" style="border-color:red;"></div>
                                            <a class="dropdown-item"
                                               href="${createLink(controller: 'userItem', action: 'index')}">
                                                My Items</a>
                                        </g:if>
                                        <g:if test="${userRole?.role?.authority.equals("ROLE_ADMIN")}">
                                            <div class="dropdown-divider" style="border-color:red;"></div>
                                            <a class="dropdown-item"
                                               href="${createLink(controller: 'userItem', action: 'contributorItems')}">
                                                Contributor Items</a>
                                        </g:if>
                                    </g:each>
                                    <div class="dropdown-divider" style="border-color:red;"></div>
                                    <a class="dropdown-item"
                                       href="${createLink(controller: 'home', action: 'helpCenter')}">Help Center</a>

                                    <div class="dropdown-divider" style="border-color:red;"></div>
                                    <a class="dropdown-item"
                                       href="${createLink(controller: 'Tos', action: 'index')}">Term & Condition</a>

                                    <div class="dropdown-divider" style="border-color:red;"></div>
                                    <a class="dropdown-item"
                                       href="${createLink(controller: 'home', action: 'setting')}">Setting</a>

                                    <div class="dropdown-divider" style="border-color:red;"></div>
                                    <a class="dropdown-item"
                                       href="${createLink(controller: 'logout', action: 'index')}">Logout</a>
                                </div>
                            </div>
                        </div>

                    </td>
                </sec:ifLoggedIn>

            </tr>
            <tr>
                <td></td>
                <td style="border-top: 1px solid lightslategray">
                    <div style="float:right;">
                        <a href="${createLink(controller: 'home', action: 'index')}">Show Top Search</a> |
                        <a href="${createLink(controller: 'home', action: 'packages')}">Package & Pricing</a> |
                        <a href="${createLink(controller: 'home', action: 'hotItems')}">Hot Item</a>
                    </div>

                </td>
                <td></td>
                <td></td>
            </tr>
            </tbody>
        </table>

    </div>
</nav>