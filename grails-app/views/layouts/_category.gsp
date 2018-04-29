<div class="collapse navbar-collapse" id="navbarResponsive">

    <ul class="navbar-nav mr-auto">
        <g:each in="${categories}">
            <g:if test="${params.cat.equals(it.name)}">
                <li class="nav-item active">
                    <a class="nav-link"
                       href="${createLink(controller: 'home', action: 'index', params: [cat: it.name])}">${it.name}
                        <span class="sr-only">(current)</span>
                    </a>
                </li>

            </g:if>
            <g:else>
                <li class="nav-item">
                    <a class="nav-link"
                       href="${createLink(controller: 'home', action: 'index', params: [cat: it.name])}">${it.name}</a>
                </li>
            </g:else>

        </g:each>

    </ul>

    <sec:ifNotLoggedIn>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="${createLink(controller: 'subcribtion', action: 'index')}">Pricing</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${createLink(controller: 'login', action: 'auth')}">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${createLink(controller: 'register', action: 'register')}">Sign up</a>
            </li>
        </ul>

    </sec:ifNotLoggedIn>

    <sec:ifLoggedIn>
        <div class="navbar-nav ml-auto  dropdown ">
            <img src="${resource(dir: 'images', file: 'profile_dmy.png')}"
                 style="height: 30px; margin: 5px; border-radius: 50%;"/>
            <a href="#" class="nav-link  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
               aria-expanded="false">Hi, ${userObject?.username}<span class="caret"></span></a>
            %{--<button type="button" class="nav-link dropdown-toggle">--}%
            %{--Hi, ${userObject?.username}<span class="caret"></span>--}%
            %{--</button>--}%

            <ul class="dropdown-menu dropdown-menu-right">
                <g:set var="profilePicture" value="${com.picsell.data.ProfileUser.findByUser(userObject)?.id}"></g:set>
                <li><a class="dropdown-item"
                       href="${createLink(controller: 'profileUser', action: 'profile', id: profilePicture, params: [uid: userObject?.id])}"><i
                            class="fa fa-user fa-fw"></i> My Profile</a>
                </li>

                <g:each in="${userRoles}" var="userRole">
                    <g:if test="${userRole?.role?.authority.equals("ROLE_USER")}">
                        <li><a class="dropdown-item"
                               href="${createLink(controller: 'userAccount', action: 'myAccount')}"><i
                                    class="fa fa-at fa-fw"></i> My Account</a></li>

                        <g:if test="${userRole?.role?.authority.equals("ROLE_CONTRIBUTOR")}">
                            <li><a class="dropdown-item"
                                   href="${createLink(controller: 'userItem', action: 'index')}"><i
                                        class="fa fa-rocket fa-fw"></i> My Items</a></li>
                        </g:if>
                        <li><a class="dropdown-item"
                               href="${createLink(controller: 'myChart', action: 'index')}"><i
                                    class="fa fa-shopping-basket fa-fw"></i> My Chart</a></li>
                    </g:if>

                    <g:if test="${userRole?.role?.authority.equals("ROLE_ADMIN")}">
                        <li><a class="dropdown-item"
                               href="${createLink(controller: 'home', action: 'configuration')}"><i
                                    class="fa fa-gear fa-fw"></i> Configuration</a></li>
                    </g:if>

                </g:each>
                <div class="dropdown-divider"></div>


                <li><a class="dropdown-item" href="${createLink(controller: 'logout', action: 'index')}"><i
                        class="fa fa-lock fa-fw"></i> Logout</a>
                </li>
            </ul>
        </div>
    %{--<li class="nav-item">--}%
    %{--<a class="nav-link" href="${createLink(controller: 'logout', action: 'index')}">Logout</a>--}%
    %{--</li>--}%
    </sec:ifLoggedIn>
</div>