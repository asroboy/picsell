<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/24/2018
  Time: 8:01 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<a href="${createLink(action: 'index')}">Back</a>

<g:each in="${images}" var="img">
    <p>
        ${img?.id} <img style="height:300px; width: 300px"
                        src="${createLink(action: 'download', id: img?.id)}"/>
    </p>
</g:each>

</body>
</html>