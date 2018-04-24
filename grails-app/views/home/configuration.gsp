<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="theme_sbadmin_gh"/>
    <title></title>


    %{--<sec:ifNotLoggedIn>--}%
    %{--<meta http-equiv="refresh"--}%
    %{--content="0; url=${createLink(controller: 'login', action: 'auth')}">--}%
    %{--</sec:ifNotLoggedIn>--}%

</head>

<body>
<div class="row" >
    %{--<div style="background: ${resource(dir: 'images', file: 'background.jpeg')}">--}%

        %{--<img src="${resource(dir: 'images', file: 'background.jpeg')}" style="height: 100%">--}%
        %{--<h1>Selamat datang di ${meta(name: "app.name")}</h1>--}%

        %{--<p><b>Congratulations, you have successfully started your first Grails application!</b> <br/> At the moment--}%
        %{--this is the default page, feel free to modify it to either redirect to a controller or display whatever--}%
        %{--content you may choose. Below is a list of controllers that are currently deployed in this application,--}%
        %{--click on each to execute its default action:</p>--}%

        %{--<div id="controller-list" role="navigation">--}%
        %{--<h2>Available Controllers:</h2>--}%
        %{--<ul>--}%
        %{--<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">--}%
        %{--<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>--}%
        %{--</g:each>--}%
        %{--</ul>--}%
        %{--</div>--}%
    %{--</div>--}%
</div>

</body>
</html>
