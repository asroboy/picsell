<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/8/2018
  Time: 2:13 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh_item"/>
    <title>Account</title>
</head>

<body>
<!-- Page Content -->
<div class="container">
    <!-- Portfolio Item Heading -->
    <h1 class="my-4">My Account
    %{--<small>The item sub name or category</small>--}%
    </h1>

    <!-- Portfolio Item Row -->
    <div class="row">

        %{--<div class="col-md-3">--}%
        %{--<a href="${createLink(controller: 'profileUser', action: '')}">--}%
        %{--<g:if test="${profilePicture}">--}%
        %{--<img class="profile-pic"--}%
        %{--src="${createLink(controller: 'image', action: 'download', id: profilePicture?.id)}"--}%
        %{--alt="">--}%
        %{--</g:if>--}%
        %{--<g:else>--}%
        %{--<img class="profile-pic"--}%
        %{--src="${resource(dir: 'images', file: 'profile_dmy.png')}"--}%
        %{--alt="">--}%
        %{--</g:else>--}%

        %{--</a>--}%

        %{--<div class="button-change">--}%
        %{--<button type="button" class="btn btn-sm btn-block btn-outline btn-success" data-toggle="modal"--}%
        %{--data-target="#myModal">--}%
        %{--Change--}%
        %{--</button>--}%
        %{--</div>--}%

        %{--</div>--}%

        <div class="col-md-12">
            <h3>You're registered as general user</h3>

            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu tellus, semper non feugiat eget, lacinia aliquet massa. Maecenas egestas rutrum dolor eget sagittis. Proin tempor, ante vitae tincidunt volutpat, nunc ante cursus massa, et sodales neque felis eget nulla. Praesent vitae nibh lectus. Duis consequat condimentum ipsum, non ornare felis auctor vitae. Aliquam a augue hendrerit, pharetra risus id, ullamcorper orci. Integer nec dictum dui.
            </p>

            <p>
                Nunc dolor tortor, tempor non justo at, blandit malesuada lorem. Donec tristique nunc ac enim volutpat, ut ultricies ante venenatis. Morbi feugiat mauris ac nibh commodo pharetra. Suspendisse potenti. Aliquam eu vehicula est. Donec massa tortor, lobortis eget pellentesque id, facilisis in urna. Curabitur ornare, massa sed lobortis rhoncus, ex neque pulvinar nunc, in facilisis mauris enim dictum dui. Aliquam ipsum metus, congue eu libero aliquet, mollis egestas libero. Pellentesque sit amet sem vel lacus molestie pulvinar pretium id sem.
            </p>

            <p>
                Aliquam hendrerit dignissim orci, non dignissim tellus lacinia ac. Etiam ornare ipsum sed augue dapibus consectetur. Donec egestas lectus at ex tempor pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin sed est orci. Nunc vulputate, elit vel efficitur pulvinar, dui odio euismod lectus, a lobortis libero sem ac arcu. Sed ultrices consequat efficitur.
            </p>

            <p>
                Nullam quis ex vel neque posuere porttitor sit amet sed dolor. Curabitur quis tristique turpis. Fusce ac massa libero. Duis iaculis enim vel aliquam sagittis. Morbi sit amet eleifend leo, ut condimentum lacus. Duis et leo et quam consequat scelerisque quis tempor elit. In fermentum posuere felis. Duis sit amet enim a justo vehicula vehicula et eget quam. Nam imperdiet cursus sagittis. Morbi commodo non neque sed scelerisque. Nullam vulputate sed leo vel maximus. Ut eu ipsum felis.
            </p>

            <p>
                Nam vitae tortor faucibus, pulvinar leo et, finibus velit. Suspendisse potenti. Cras blandit sodales tellus fringilla rutrum. Pellentesque a magna id nisi accumsan dignissim ut sed nulla. Proin rutrum orci id erat accumsan, eu convallis risus iaculis. In hendrerit pellentesque accumsan. Vestibulum ullamcorper viverra pellentesque.
            </p>
        </div>

    </div>

</div>

</body>
</html>