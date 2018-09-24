<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 9/21/2018
  Time: 9:37 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'ico_picsell.ico')}"/>
    <title>Picsell.ID</title>
    <style>
    .center {
        display: block;
        margin-left: auto;
        margin-right: auto;
    }
    </style>
</head>

<body style="background: grey">
<div class="text-center" id="image-preview-container">
    <img height="98%" class="center"
         src="${createLink(controller: 'document', action: 'photoWithWatermaark', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"/>

</div>

<script>
    var h = $(window).height();
    var container = $("image-preview-container");
    container.style.height = h;
</script>
</body>
</html>