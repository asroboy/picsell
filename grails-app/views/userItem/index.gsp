<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/9/2018
  Time: 9:10 AM
--%>

<%@ page import="com.picsell.data.ImageFile" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh">
    <title>picsell.id</title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<!-- Page Content -->
<div class="container" style="margin-bottom: 50px">

    <div class="row">
        <div class="col-lg-3">
            <div class="my-4 label-red" style="width: 100%">My Items</div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-3">
            <div class="card">
                <div style="margin: 5px">
                    <a href="${createLink(action: 'addItem')}" class="btn btn-sm btn-outline-danger"
                       style="text-align: left; width: 100%">Upload item</a>
                </div>

                <div style="margin: 5px">
                    <a href="${createLink(action: 'addItem')}" class="btn btn-sm btn-outline-danger"
                       style="text-align: left; width: 100%">Approved items</a>
                </div>

                <div style="margin: 5px">
                    <a href="${createLink(action: 'addItem')}" class="btn btn-sm btn-outline-danger"
                       style="text-align: left;  width: 100%">Rejected items</a>
                </div>

                <div style="margin: 5px">
                    <a href="${createLink(action: 'addItem')}" class="btn btn-sm btn-outline-danger"
                       style="text-align: left;  width: 100%">Pending items</a>
                </div>

            </div>

            <div style="margin-bottom: 15px; width: 200px">

            </div>
        </div>

        <div class="col-lg-9">

            <div class="row">
                <g:each in="${items}" var="item">
                    <div class="col-lg-4 col-sm-6 portfolio-item" style="margin-bottom: 15px">
                        <div class="card h-100">
                            <a href="${createLink(controller: 'userItem', action: 'itemDetail')}">
                                <img class="card-img-top"
                                     src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id, params: [s: '238h9uhh3'])}"
                                     alt="">
                            </a>

                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="${createLink(controller: 'userItem', action: 'itemDetail', id: item?.id)}">${item?.name}</a>
                                </h4>

                                <div>Item ID : ${item?.id}</div>

                                <div>Price : ${item?.price} ${item?.currency}</div>

                                <div>Description : ${item?.description}</div>

                                <div>Tags : ${item?.tags}</div>

                                <div>Approval status :
                                    <g:if test="${item?.status.equals("approved")}">
                                        <font color="#006400"><b>${item?.status}</b></font>
                                    </g:if>
                                    <g:else>
                                        <font color="#8b0000"><b>${item?.status}</b></font>
                                    </g:else>
                                </div>

                                <div>Status info : ${item?.statusInfo}</div>
                            </div>
                        </div>
                    </div>
                </g:each>

            </div>
            <!-- /.row -->

            <!-- Pagination -->
            <ul class="pagination justify-content-center">
                <% def mod = itemInstanceCount % params.max %>
                <% Integer page = itemInstanceCount / params.max %>
                <% def offsetNow = params.offset ? Integer.parseInt(params.offset) : 0 %>

                <g:if test="${offsetNow > 0}">
                    <li class="page-item">
                        <a class="page-link"
                           href="${createLink(action: 'index', params: [offset: (offsetNow - params.max), max: params.max])}"
                           aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                </g:if>


                <g:each in="${(1..page).toList()}" var="i">
                    <li class="page-item">
                        <a class="page-link"
                           href="${createLink(action: 'index', params: [offset: ((i - 1) * params.max), max: params.max])}">${i}</a>
                    </li>
                </g:each>
                <g:if test="${mod > 0}">
                    <li class="page-item">
                        <a class="page-link"
                           href="${createLink(action: 'index', params: [offset: page * params.max, max: params.max])}">${page + 1}</a>
                    </li>
                </g:if>

                <g:if test="${offsetNow < page * params.max}">
                    <li class="page-item">
                        <a class="page-link"
                           href="${createLink(action: 'index', params: [offset: offsetNow + params.max, max: params.max])}"
                           aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </g:if>
            </ul>

        </div>
        <!-- /.row -->

    </div>
    <!-- /.col-lg-9 -->

</div>
<!-- /.row -->
</div>
<!-- /.container -->
<!-- Modal -->
<div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Notice</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <div id="modal_content">

                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">OK</button>
                %{--<button type="button" class="btn btn-primary">Save changes</button>--}%
            </div>
        </div>
    </div>
</div>
<script>
    var itemId = '${params.item_id}';
    if (itemId !== '') {
        var content = document.getElementById('modal_content');
        content.innerHTML = 'Thanks for submitting item, our team will review your submission within 1-3 business days.';
        $('#infoModal').modal('toggle')
    }
</script>

</body>
</html>