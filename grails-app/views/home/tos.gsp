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
<div class="container" >
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Term of Use</div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-12">
            <div style="text-align: justify; margin-bottom: 30px;">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet ullamcorper lectus, sed semper elit. Integer aliquet sit amet ligula nec hendrerit. Suspendisse non ultricies lorem. Curabitur est arcu, ultricies vitae sollicitudin nec, sodales et sem. Sed sollicitudin finibus turpis, pretium blandit felis hendrerit et. Sed posuere, nisi vitae faucibus varius, libero eros elementum magna, tempor eleifend felis neque quis nisi. Curabitur scelerisque nulla et orci sagittis, sit amet pulvinar diam mattis. Donec sagittis ultrices nibh quis consequat. Aliquam sed faucibus ante. Proin viverra commodo ultrices.</p>

                <p>
                    Etiam sit amet nibh lorem. Aliquam velit risus, maximus ac enim vitae, maximus vulputate tellus. Aliquam erat volutpat. Nullam ac mi ac massa congue ultrices. Nunc vitae ex aliquam libero pellentesque ultrices. Sed sed volutpat sapien. Donec ac bibendum ipsum. Ut efficitur nibh ut mauris ornare, eu gravida odio consectetur. Suspendisse ullamcorper libero in accumsan iaculis. Praesent tristique augue eu enim interdum suscipit. Vivamus sit amet dui sed risus vehicula efficitur eu nec sem. Vivamus lacinia varius lorem, in lacinia turpis tempor non. Maecenas in orci odio. Aliquam mauris velit, finibus sit amet nibh quis, facilisis mattis nulla. Sed faucibus porta pulvinar.

                </p>

                <p>
                    Ut pretium enim ut malesuada aliquet. Curabitur hendrerit ut tortor vel semper. Donec id sagittis nisi, a elementum nunc. Suspendisse pharetra magna sed felis imperdiet ornare. Pellentesque imperdiet neque massa, nec tempus ipsum tempus ut. Praesent sit amet libero interdum, interdum dui vitae, iaculis turpis. Vestibulum in ullamcorper augue. Proin ornare rhoncus dui, quis varius sapien viverra vel. Vivamus at massa sit amet purus congue semper. In lobortis ex at est maximus sodales. Aliquam sed mauris vel mauris tempor pretium ac sit amet ipsum. Morbi euismod eget dui quis venenatis. Aenean lacinia augue quis erat condimentum ultricies. Praesent at tellus at turpis pharetra commodo in nec lorem.

                </p>

                <p>Nam mattis turpis ut interdum commodo. Vestibulum pulvinar auctor nulla et condimentum. Pellentesque sagittis nisi urna, eget finibus mi dictum id. Vestibulum eu ullamcorper eros. Duis ornare sem vel nisl volutpat, id accumsan massa varius. Donec ultricies, arcu nec lobortis scelerisque, nunc magna lobortis ligula, et efficitur neque lorem at libero. Nullam eu lacinia enim. Vivamus fringilla viverra magna, molestie euismod libero vulputate vel. Nam a magna eu nisl ullamcorper fermentum. Aliquam venenatis sed mauris nec tempus. Duis dignissim congue mauris, sed interdum ligula porttitor eu. Phasellus quis vehicula est, eget mattis leo. Fusce sed bibendum libero. Donec id mi tortor. Sed eget condimentum libero, sed condimentum dui.</p>

                <p>Duis vitae placerat mauris. Integer elementum ex quis posuere porta. In egestas lacinia tortor, et finibus elit vulputate ut. Quisque vel nulla non tellus lacinia aliquam. Aliquam aliquet, elit ut vehicula pellentesque, magna nisi imperdiet libero, eu semper turpis augue quis sapien. Ut id dui magna. Praesent fringilla dignissim lorem, nec gravida dolor aliquam maximus.</p>
            </div>
        </div>
    </div>

</div>
</body>

</html>