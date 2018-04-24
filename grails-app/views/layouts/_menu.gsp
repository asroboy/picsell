<%@ page import="com.picsell.security.Role" %>
<nav class="navbar  navbar-inverse  navbar-static-top" role="navigation"
     style="margin-bottom: 0; background-color: #00796B;">
    <div class="navbar-header ">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" style="color: white" href="${createLink(uri: '/')}">Picsell</a>
    </div>
    <!-- /.navbar-header -->
    %{--<ul class="nav navbar-nav navbar-right">--}%
    %{--<li><a href="#">Link</a></li>--}%
    %{--<li class="dropdown">--}%
    %{--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>--}%
    %{--<ul class="dropdown-menu">--}%
    %{--<li><a href="#">Action</a></li>--}%
    %{--<li><a href="#">Another action</a></li>--}%
    %{--<li><a href="#">Something else here</a></li>--}%
    %{--<li role="separator" class="divider"></li>--}%
    %{--<li><a href="#">Separated link</a></li>--}%
    %{--</ul>--}%
    %{--</li>--}%
    %{--</ul>--}%


    <ul class="nav navbar-nav navbar-top-links navbar-right">

        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-alerts">
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-comment fa-fw"></i> New Comment
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                            <span class="pull-right text-muted small">12 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-envelope fa-fw"></i> Message Sent
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-tasks fa-fw"></i> New Task
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-upload fa-fw"></i> Server Rebooted
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a class="text-center" href="#">
                        <strong>See All Alerts</strong>
                        <i class="fa fa-angle-right"></i>
                    </a>
                </li>
            </ul>
            <!-- /.dropdown-alerts -->
        </li>
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <g:set var="profilePicture" value="${com.picsell.data.ProfileUser.findByUser(userObject)?.id}"></g:set>
                <li>
                    <a class="dropdown-item"
                       href="${createLink(controller: 'profileUser', action: 'profile', id: profilePicture, params: [uid: userObject?.id])}"><i
                            class="fa fa-user fa-fw"></i> My Profile</a>

                </li>
                %{--<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>--}%
                %{--</li>--}%
                <li class="divider"></li>
                <li><a href="${createLink(controller: 'logout')}"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">

                <li>
                    <a href="#"><i class="fa fa-user fa-fw"></i> User Setting<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <g:if test="${com.picsell.security.UserRole.findByUserAndRole(userObject, com.picsell.security.Role.findByAuthority('ROLE_ADMIN')) != null}">
                            <li>
                                <a href="${createLink(controller: 'user', action: 'index')}">Users</a>
                            </li>
                            <li>
                                <a href="${createLink(controller: 'role', action: 'index')}">Role</a>
                            </li>
                            <li>
                                <a href="${createLink(controller: 'requestmap', action: 'index')}">Role Menu</a>
                            </li>
                        </g:if>
                    </ul>
                </li>


                <li>
                    <a href="#"><i class="fa fa-wrench fa-fw"></i> Master Setting<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${createLink(controller: 'category', action: 'index')}">Category</a>
                        </li>
                        <li>
                            <a href="${createLink(controller: 'item', action: 'index')}">Item</a>
                        </li>

                        <li>
                            <a href="${createLink(controller: 'fileItem', action: 'index')}">File Item</a>
                        </li>

                        <li>
                            <a href="${createLink(controller: 'account', action: 'index')}"> Account</a>
                        </li>
                    </ul>
                </li>

                <g:if test="${com.picsell.security.UserRole.findByUserAndRole(userObject, com.picsell.security.Role.findByAuthority('ROLE_ADMIN')) != null}">
                    <li>
                        <a href="#"><i class="fa fa-rocket fa-fw"></i> Configuration<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${createLink(controller: 'termOfService', action: 'index')}">Term Of Service</a>
                            </li>
                        </ul>
                    </li>
                </g:if>
                <li>
                    <a href="${createLink(controller: 'logout')}"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>
