<!-- Navigation -->


<nav class="navbar navbar-expand-sm navbar-light bg-light" style="background-color: #ffffff;">
    <a class="navbar-brand" href="${createLink(controller: 'home', action: 'index')}">
        <img src="${resource(dir: 'images/logo', file: 'logo_no_text.png')}" width="40" height="40" alt=""
             style="margin: 0px">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <form class="form-inline my-2 my-lg-0" style="margin-right: 5px"
              action="${createLink(controller: 'home', action: 'index')}">
            <input class="form-control mr-sm-1" type="search" name="key" placeholder="Search" value="${params.key}"
                   aria-label="Search">
            <button class="btn btn-outline-secondary my-2 my-sm-0" type="submit"><i class="fa fa-search"></i> Search
            </button>
        </form>
        <ul class="navbar-nav mr-auto">

            <li class="dropdown" style="margin-right: 5px">
                <a class="nav-item dropdown-toggle btn  my-2 my-sm-0 " href="#"
                   id="navbarDropdown_mediatype"
                   role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    ${params.media ?: "Media Type"}
                </a>

                <div class="dropdown-menu" aria-labelledby="navbarDropdown_mediatype">
                    <g:each in="${mediaTypes}">
                        <g:if test="${it.parent == null}">
                            <a class="dropdown-item"
                               href="${createLink(controller: 'home', action: 'index', params: [media: it.name, cat: params.cat])}">${it.name}</a>
                            <ul>
                                <g:each in="${it.child}">
                                    <li>
                                        <a class="dropdown-item"
                                           href="${createLink(controller: 'home', action: 'index', params: [media: it.name, cat: params.cat])}">${it.name}</a>
                                    </li>
                                </g:each>
                            </ul>
                        </g:if>

                    </g:each>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item"
                       href="${createLink(controller: 'home', action: 'index', params: [media: "All media", cat: params.cat])}">All media</a>
                </div>
            </li>

            <li class="dropdown" style="margin-right: 5px">
                <a class="nav-item dropdown-toggle btn  my-2 my-sm-0 " href="#" id="navbarDropdown"
                   role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    ${params.cat ?: "Category"}
                </a>

                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <g:each in="${categories}">
                        <a class="dropdown-item"
                           href="${createLink(controller: 'home', action: 'index', params: [media: params.media, cat: it.name])}">${it.name}</a>
                    </g:each>

                %{--<a class="dropdown-item" href="#">Action</a>--}%
                %{--<a class="dropdown-item" href="#">Another action</a>--}%

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item"
                       href="${createLink(controller: 'home', action: 'index', params: [media: params.media, cat: "All category"])}">All category</a>
                </div>
            </li>


            <li class="nav-item">
                <sec:ifLoggedIn>
                    <a href="${createLink(controller: 'Home', action: 'mychart')}"
                       class="btn   my-2 my-sm-0"><i
                            class="fa  fa-shopping-basket"></i> My Chart
                        <g:set var="chart_count" value="${com.picsell.data.ItemChart.countByUserAndStatusNotEqual(userObject, "paid")}"/>
                        <g:if test="${chart_count > 0}">
                            <span class="badge" style="background: #d53b31; color: white">${chart_count}</span>
                        </g:if>
                    </a>
                </sec:ifLoggedIn>
            </li>
        </ul>

        <ul class="navbar-nav ml-auto">
            <sec:ifNotLoggedIn>
                <li class="nav-item">
                    <a class="nav-link" href="${createLink(controller: 'login', action: 'auth')}">Login</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${createLink(controller: 'register', action: 'register')}">Sign up</a>
                </li>
            </sec:ifNotLoggedIn>
            <sec:ifLoggedIn>

                <li class="nav-item" style="margin-right: 15px">
                    <span class="navbar-text">
                        <b>Hi, ${userObject?.username}<span class="caret"></span></b>
                    </span>
                </li>
                <li class="nav-item">
                    <g:set var="profilePicture_"
                           value="${com.picsell.data.ImageFile.findByTableNameAndTableId("ProfileUser", profileUser?.id)}"></g:set>
                    <g:if test="${profilePicture_}">
                        <img class="profile-pic"
                             src="${createLink(controller: 'image', action: 'download', id: profilePicture_?.id)}"
                             alt="" style="height: 40px; width: 40px">
                    </g:if>
                    <g:else>
                        <img src="${resource(dir: 'images', file: 'avatar-default.jpg')}"
                             style="height: 40px; width: 40px"/>
                    </g:else>
                </li>
                <li class="nav-item">

                    <a class="nav-item dropdown-toggle btn my-2 my-sm-0 " href="#"
                       id="navbarDropdown3"
                       role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false" style="padding-left: 2px">
                    </a>
                    %{--<button class="btn btn-outline-secondary my-2 my-sm-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"--}%
                    %{--style="background-color: white">--}%
                    %{--Menu--}%
                    %{--<img style="height: 20px"--}%
                    %{--src="${resource(dir: 'images', file: 'icon_menu_dots.png')}">--}%
                    %{--</button>--}%

                    <div class="dropdown-menu dropdown-menu-right" style="right:0; left:auto;"
                         aria-labelledby="navbarDropdown3">
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

                                <div class="dropdown-divider" style="border-color:red;"></div>
                                <a class="dropdown-item"
                                   href="${createLink(controller: 'home', action: 'setting')}">Setting</a>

                            </g:if>
                        </g:each>
                        <div class="dropdown-divider" style="border-color:red;"></div>
                        <a class="dropdown-item"
                           href="${createLink(controller: 'home', action: 'helpCenter')}">Help Center</a>

                        <div class="dropdown-divider" style="border-color:red;"></div>
                        <a class="dropdown-item"
                           href="${createLink(controller: 'Tos', action: 'index')}">Term of Service</a>


                        <div class="dropdown-divider" style="border-color:red;"></div>
                        <a class="dropdown-item"
                           href="${createLink(controller: 'logout', action: 'index')}">Logout</a>
                    </div>

                </li>
            </sec:ifLoggedIn>

        </ul>

    </div>
</nav>
<nav class="navbar navbar-sticky navbar-expand-sm navbar-light bg-light"
     style="border-top: 1px solid red; background-color: #ffffff;">
    <ul class="navbar-nav ml-auto" style="flex-direction: row">
        <li class="nav-item" style="margin-left: 10px">
            <a class="linkred" href="${createLink(controller: 'home', action: 'index')}">Show top search</a>
        </li>
        <li class="nav-item" style="margin-left: 10px">
            <a class="linkred" href="${createLink(controller: 'home', action: 'packages')}">Package and pricing</a>
        </li>
        <li class="nav-item" style="margin-left: 10px">
            <a class="linkred" href="${createLink(controller: 'home', action: 'hotItems')}">Hot item</a>
        </li>
    </ul>

</nav>