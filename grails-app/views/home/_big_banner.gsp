
<g:set var="big_banner" value="${com.picsell.data.Banner.findByType("big")}"/>
<g:if test="${big_banner?.isActive}">
    <g:set var="video_resource" value="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(big_banner?.id, big_banner.class.simpleName)?.id)}"/>

    <div id="big_banner_container">
        <video autoplay muted loop id="myVideo">
            <source src="${video_resource}" type="video/mp4">
            Your browser does not support HTML5 video.
        </video>

        <div class="content">
            <h1 style="color: red">Picsell.ID</h1>

            <p>${big_banner?.description}</p>
            <button id="myBtn" style="background: red" onclick="myFunction()">Coninue</button>
        </div>
    </div>


    <script>
        var video = document.getElementById("myVideo");
        var btn = document.getElementById("myBtn");
        var big_banner_container = document.getElementById("big_banner_container");

        function myFunction() {
            video.pause();
            big_banner_container.style.display = "none";
        }
    </script>
</g:if>
