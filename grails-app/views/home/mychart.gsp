<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 3/16/2018
  Time: 10:25 AM
--%>

<%@ page import="com.picsell.security.Role; com.picsell.security.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <title></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
    <g:set var="userRoles" value="${com.picsell.security.UserRole.findAllByUser(userObject)}"/>
    <g:set var="userAccounts" value="${com.picsell.data.UserAccount.findAllByUser(userObject)}"/>

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="label-red">
                <b>My Chart</b>
            </div>

            <div class="row">
                <div style="text-align: justify; margin-bottom: 30px; margin-top: 20px">
                    <div class="sub-part1">
                        Unpaid Item
                    </div>

                    <p>
                        Etiam sit amet nibh lorem. Aliquam velit risus, maximus ac enim vitae, maximus vulputate tellus. Aliquam erat volutpat. Nullam ac mi ac massa congue ultrices. Nunc vitae ex aliquam libero pellentesque ultrices. Sed sed volutpat sapien. Donec ac bibendum ipsum. Ut efficitur nibh ut mauris ornare, eu gravida odio consectetur. Suspendisse ullamcorper libero in accumsan iaculis. Praesent tristique augue eu enim interdum suscipit. Vivamus sit amet dui sed risus vehicula efficitur eu nec sem. Vivamus lacinia varius lorem, in lacinia turpis tempor non. Maecenas in orci odio. Aliquam mauris velit, finibus sit amet nibh quis, facilisis mattis nulla. Sed faucibus porta pulvinar.

                    <div class="sub-part1">
                        Paid Item
                    </div>

                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet ullamcorper lectus, sed semper elit. Integer aliquet sit amet ligula nec hendrerit. Suspendisse non ultricies lorem. Curabitur est arcu, ultricies vitae sollicitudin nec, sodales et sem. Sed sollicitudin finibus turpis, pretium blandit felis hendrerit et. Sed posuere, nisi vitae faucibus varius, libero eros elementum magna, tempor eleifend felis neque quis nisi. Curabitur scelerisque nulla et orci sagittis, sit amet pulvinar diam mattis. Donec sagittis ultrices nibh quis consequat. Aliquam sed faucibus ante. Proin viverra commodo ultrices.</p>

                    <div class="sub-part1">
                        Wish List
                    </div>

                    <p>
                        Etiam sit amet nibh lorem. Aliquam velit risus, maximus ac enim vitae, maximus vulputate tellus. Aliquam erat volutpat. Nullam ac mi ac massa congue ultrices. Nunc vitae ex aliquam libero pellentesque ultrices. Sed sed volutpat sapien. Donec ac bibendum ipsum. Ut efficitur nibh ut mauris ornare, eu gravida odio consectetur. Suspendisse ullamcorper libero in accumsan iaculis. Praesent tristique augue eu enim interdum suscipit. Vivamus sit amet dui sed risus vehicula efficitur eu nec sem. Vivamus lacinia varius lorem, in lacinia turpis tempor non. Maecenas in orci odio. Aliquam mauris velit, finibus sit amet nibh quis, facilisis mattis nulla. Sed faucibus porta pulvinar.

                    </p>
                </div>

            </div>
        </div>

    </div>
</div>
</body>

</html>