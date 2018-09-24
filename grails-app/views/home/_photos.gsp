<div class="gallery_justify">
%{--<div class="image_container" style="padding: 5px;">--}%
    <g:each in="${items}" var="item" status="i">
        <g:set var="image" value="${com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)}"/>
        <div class="image_container">
            <a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">
                <img src="${createLink(controller: 'document', action: 'download', id: image?.id)}"
                     style="border-radius: 10px;"/>
            </a>

            <div class="overlay">
                <sec:ifLoggedIn>
                    <a id="like_${item?.id}" class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"
                       title="Like"
                       style="color: white" onclick="like(${item?.id})">
                        <script>
                            islike(${item?.id});
                        </script></a>
                    <a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Add to chart"
                       style="color: white" onclick="add_to_chart(${item?.id})"><i
                            class="fa fa-shopping-basket"></i></a>
                </sec:ifLoggedIn>
                <a  href="${createLink(controller: 'document', action: 'preview', id: image?.id)}" class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Download preview"
                   style="color: white"><i class="fa fa-download"></i></a>
                <a href="${createLink(cotroller: 'home', action: 'main', params: [cat: item?.category?.name])}"
                   class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"
                   style="color: white"><i class="fa fa-th-large"></i></a>

            </div>
        </div>

    </g:each>
</div>

<!-- Paging Content -->

<ul class="pagination justify-content-center" style="margin-bottom: 15px">
    <g:if test="${itemInstanceCount > params.max}">
        <% def mod = itemInstanceCount % params.max %>
        <% Integer page = itemInstanceCount / params.max %>
        <% def offsetNow = params.offset ? Integer.parseInt(params.offset) : 0 %>

        <g:if test="${offsetNow > 0}">
            <li class="page-item">
                <a class="page-link"
                   href="${createLink(action: 'main', params: [media: params.media, cat: params.cat, key: params.key, offset: (offsetNow - params.max), max: params.max])}"
                   aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>
        </g:if>


        <g:each in="${(1..page).toList()}" var="i">
            <li class="page-item">
                <a class="page-link"
                   href="${createLink(action: 'main', params: [media: params.media, cat: params.cat, key: params.key, offset: ((i - 1) * params.max), max: params.max])}">${i}</a>
            </li>
        </g:each>
        <g:if test="${mod > 0}">
            <li class="page-item">
                <a class="page-link"
                   href="${createLink(action: 'main', params: [media: params.media, cat: params.cat, key: params.key, offset: page * params.max, max: params.max])}">${page + 1}</a>
            </li>
        </g:if>

        <g:if test="${offsetNow < page * params.max}">
            <li class="page-item">
                <a class="page-link"
                   href="${createLink(action: 'main', params: [media: params.media, cat: params.cat, key: params.key, offset: offsetNow + params.max, max: params.max])}"
                   aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </g:if>

    </g:if>
</ul>

%{--<div style="padding-left: 20px; padding-right: 20px; margin-top: 30px; margin-bottom: 30px;">--}%

    %{--<div class="row" style=" margin-bottom: 20px">--}%

    %{--</div>--}%
    %{--<!-- /.row -->--}%
    %{--<!-- Pagination -->--}%
    %{--<ul class="pagination justify-content-center">--}%
        %{--<li class="page-item">--}%
            %{--<a class="page-link" href="#" aria-label="Previous">--}%
                %{--<span aria-hidden="true">&laquo;</span>--}%
                %{--<span class="sr-only">Previous</span>--}%
            %{--</a>--}%
        %{--</li>--}%
        %{--<li class="page-item">--}%
            %{--<a class="page-link" href="#">1</a>--}%
        %{--</li>--}%
        %{--<li class="page-item">--}%
            %{--<a class="page-link" href="#">2</a>--}%
        %{--</li>--}%
        %{--<li class="page-item">--}%
            %{--<a class="page-link" href="#">3</a>--}%
        %{--</li>--}%
        %{--<li class="page-item">--}%
            %{--<a class="page-link" href="#" aria-label="Next">--}%
                %{--<span aria-hidden="true">&raquo;</span>--}%
                %{--<span class="sr-only">Next</span>--}%
            %{--</a>--}%
        %{--</li>--}%
    %{--</ul>--}%
%{--</div>--}%


%{--<section id="photos">--}%
%{--<g:each in="${com.picsell.data.Item.findAllByStatusAndCategory("approved", com.picsell.data.Category.findByName(params.cat))}"--}%
%{--var="item" status="i">--}%

%{--<div class="image_container">--}%
%{--<a href="${createLink(controller: 'home', action: 'itemDetail', id: item.id)}">--}%
%{--<img src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id)}"--}%
%{--alt="">--}%
%{--</a>--}%

%{--<div class="overlay">--}%
%{--<sec:ifLoggedIn>--}%
%{--<a id="like_${item?.id}" class="btn btn-sm" data-toggle="tooltip" data-placement="bottom"--}%
%{--title="Like"--}%
%{--style="color: white" onclick="like(${item?.id})">--}%
%{--<script>--}%
%{--islike(${item?.id});--}%
%{--</script>--}%
%{--</a>--}%
%{--<a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Add to chart"--}%
%{--style="color: white" onclick="add_to_chart(${item?.id})"><i--}%
%{--class="fa fa-shopping-basket"></i></a>--}%
%{--</sec:ifLoggedIn>--}%
%{--<a class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Download preview"--}%
%{--style="color: white"><i class="fa fa-download"></i></a>--}%
%{--<a href="${createLink(cotroller: 'home', action: 'main', params: [cat: item?.category?.name])}"--}%
%{--class="btn btn-sm" data-toggle="tooltip" data-placement="bottom" title="Similar item"--}%
%{--style="color: white"><i class="fa fa-th-large"></i></a>--}%

%{--</div>--}%
%{--</div>--}%

%{--</g:each>--}%
%{--</section>--}%
