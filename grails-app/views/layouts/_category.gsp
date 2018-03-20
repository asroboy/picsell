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
                <a class="nav-link" href="${createLink(controller: 'login', action: 'auth')}">Login</a>
            </li>
        </ul>

    </sec:ifNotLoggedIn>

    <sec:ifLoggedIn>
        <div class="navbar-nav ml-auto  dropdown ">
            <a href="#" class="nav-link  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
               aria-expanded="false">Hi, ${userObject?.username}<span class="caret"></span></a>
            %{--<button type="button" class="nav-link dropdown-toggle">--}%
            %{--Hi, ${userObject?.username}<span class="caret"></span>--}%
            %{--</button>--}%

            <ul class="dropdown-menu dropdown-menu-right">
                <li><a class="dropdown-item"
                       href="${createLink(controller: 'profileUser', action: 'show', id: com.picsell.data.ProfileUser.findByUser(userObject)?.id)}">Profile</a>
                </li>
                <li><a class="dropdown-item"
                       href="${createLink(controller: 'home', action: 'configuration')}">Configuration</a></li>

                <div class="dropdown-divider"></div>
                <li><a class="dropdown-item" href="${createLink(controller: 'logout', action: 'index')}">Logout</a>
                </li>
            </ul>
        </div>
    %{--<li class="nav-item">--}%
    %{--<a class="nav-link" href="${createLink(controller: 'logout', action: 'index')}">Logout</a>--}%
    %{--</li>--}%
    </sec:ifLoggedIn>
</div>