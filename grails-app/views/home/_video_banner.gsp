<g:set var="big_banner" value="${com.picsell.data.Banner.findByType("big")}"/>
<g:if test="${big_banner?.isActive}">
    <g:set var="video_resource"
           value="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(big_banner?.id, big_banner.class.simpleName)?.id)}"/>

    <div class="big_banner_container">
        <video style=" object-fit: initial; width: 100%;" autoplay muted loop id="myVideo">
            <source src="${video_resource}" type="video/mp4">
            Your browser does not support HTML5 video.
        </video>

        <div class="video-banner-content-container">
            <div class="video-banner-content">

                <div class="layer-1-1 hidden-xs wow slideInDown" data-wow-duration="2s"
                     data-wow-delay=".2s">
                    %{--<h2 class="title1">The Best Business Information</h2>--}%
                </div>
                <!-- layer 2 -->
                <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                    <h2 class="title2" style="margin-left: 100px; margin-right: 100px">${big_banner?.description}</h2>
                </div>
                <!-- layer 3 -->
                <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                    %{--<a class="ready-btn right-btn page-scroll" href="#services">Spesifications</a>--}%
                    <a class="ready-btn page-scroll" href="#simpletest">Show More</a>
                </div>

            </div>

        </div>
    </div>
</g:if>
