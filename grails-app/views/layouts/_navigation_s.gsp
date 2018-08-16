<!-- Navigation -->
<header>
    <!-- header-area start -->
    <div id="sticker" class="header-area">
        <div>
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <nav class="navbar navbar-default navbar-expand-sm navbar-light"
                         style="background-color: rgba(242, 232, 198, 0.75)">
                        <a class="navbar-brand page-scroll sticky-logo"
                           href="${createLink(controller: 'home', action: 'main')}">
                            <img src="${resource(dir: 'images/logo', file: 'logo_no_text.png')}" width="40" height="40"
                                 alt=""
                                 style="margin: 0px">
                        </a>

                        <form class="form-inline" style="margin-right: 5px; width: 50%"
                              action="${createLink(controller: 'home', action: 'main')}">

                            <div class="input-group" style="width: 100%">
                                %{--<input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">--}%
                                <input class="form-control" type="search" name="key" placeholder="Search"
                                       value="${params.key}"
                                       aria-label="Search">

                                <div class="input-group-append">
                                    %{--<button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>--}%
                                    %{-- my-2 my-sm-0--}%
                                    <button class="btn btn-outline-secondary" type="submit" id="button-addon2"><i
                                            class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>

                            %{--mr-sm-1--}%
                        </form>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false"
                                aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="width: 50%">
                            %{--mr-auto untuk navbar di kiri--}%
                            %{--<ul class="navbar-nav mr-auto">--}%
                            %{--</ul>--}%

                            %{--ml-auto untuk navbar di kanan--}%
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item dropdown" style="margin-right: 5px">
                                    <a class="nav-link dropdown-toggle btn  my-2  my-sm-1 " href="#"
                                       id="navbarDropdown_mediatype"
                                       role="button" data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        ${params.media ?: "Media Type"}
                                    </a>

                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_mediatype">
                                        <g:each in="${mediaTypes}">
                                            <g:if test="${it.parent == null}">
                                                <a class="dropdown-item"
                                                   href="${createLink(controller: 'home', action: 'main', params: [media: it.name, cat: params.cat])}">${it.name}</a>
                                                <ul>
                                                    <g:each in="${it.child}">
                                                        <li>
                                                            <a class="dropdown-item"
                                                               href="${createLink(controller: 'home', action: 'main', params: [media: it.name, cat: params.cat])}">${it.name}</a>
                                                        </li>
                                                    </g:each>
                                                </ul>
                                            </g:if>

                                        </g:each>

                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item"
                                           href="${createLink(controller: 'home', action: 'main', params: [media: "All media", cat: params.cat])}">All media</a>
                                    </div>
                                </li>

                                <li class="nav-item dropdown" style="margin-right: 5px">
                                    <a class="nav-link dropdown-toggle btn  my-2 my-sm-1 " href="#" id="navbarDropdown"
                                       role="button" data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        ${params.cat ?: "Category"}
                                    </a>

                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <g:each in="${categories}">
                                            <a class="dropdown-item"
                                               href="${createLink(controller: 'home', action: 'main', params: [media: params.media, cat: it.name])}">${it.name}</a>
                                        </g:each>

                                    %{--<a class="dropdown-item" href="#">Action</a>--}%
                                    %{--<a class="dropdown-item" href="#">Another action</a>--}%

                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item"
                                           href="${createLink(controller: 'home', action: 'main', params: [media: params.media, cat: "All category"])}">All category</a>
                                    </div>
                                </li>

                                <li class="nav-item" style="margin-right: 20px">
                                    <sec:ifLoggedIn>
                                        <a href="${createLink(controller: 'Home', action: 'mychart')}"
                                           class="nav-link btn my-2  my-sm-1"><i
                                                class="fa  fa-shopping-basket"></i> My Chart
                                            <g:set var="chart_count"
                                                   value="${com.picsell.data.ItemChart.countByUserAndStatusNotEqual(userObject, "paid")}"/>
                                            <g:if test="${chart_count > 0}">
                                            %{--background: #d53b31; color: white--}%
                                                <span class="badge" style="">${chart_count}</span>
                                            </g:if>
                                        </a>
                                    </sec:ifLoggedIn>
                                </li>
                                <sec:ifNotLoggedIn>
                                    <li class="nav-item">
                                        <a class="nav-link  my-2  my-sm-1"
                                           href="${createLink(controller: 'login', action: 'auth')}">Login</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link  my-2  my-sm-1"
                                           href="${createLink(controller: 'register', action: 'register')}">Sign up</a>
                                    </li>
                                </sec:ifNotLoggedIn>
                                <sec:ifLoggedIn>

                                    <li class="nav-item" style="margin-right: 15px">
                                        <span class="navbar-text  my-2  my-sm-1" style="color: #fd2e2e">
                                            Hi, ${userObject?.username}<span class="caret"></span>
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

                                        <a class="nav-link dropdown-toggle btn" href="#"
                                           id="navbarDropdown3"
                                           role="button" data-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false" style="padding-left: 2px">
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right" style="right:0; left:auto;"
                                             aria-labelledby="navbarDropdown3">
                                            <div class="dropdown-divider" style="border-color:red;"></div>
                                            <a class="dropdown-item"
                                               href="${createLink(controller: 'home', action: 'index')}">Dashboard</a>


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
                </div>
            </div>
        </div>
    </div>
    <!-- header-area end -->
</header>

