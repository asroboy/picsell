<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 6/3/2018
  Time: 8:43 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh">
    <title></title>
    <link href="${resource(dir: 'css', file: 'picsell_custom_red.css')}"
          rel="stylesheet">
</head>

<body>
<div class="container" style="margin-bottom: 90px">
    <div class="row">
        <div class="col-lg-4">
            <div class="my-4 label-red">Contributor Items</div>
        </div>

    </div>

    <div class="row">
        <div class="col-lg-12">
            <table class="table">
                <tr>
                    <th width="3%">ID</th>
                    <th width="15%">Image</th>
                    <th width="20%">Owner</th>
                    <th width="20%">Price</th>
                    <th>Status</th>
                    <th>Updated at</th>
                    %{--<th>Appr/Rejected by</th>--}%
                    <th>Action</th>
                </tr>
                <g:each in="${itemInstanceList}" var="item">
                    <tr>
                        <td>${item?.id}</td>
                        <td><img class="card-img-top"
                                 src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id, params: [s: '238h9uhh3', table_id: item?.id, table_name: 'Item'])}"
                                 alt=""></td>
                        <td>${item?.userOwner?.username}</td>
                        <td>${item?.price} ${item?.currency}</td>
                        <td id="${item?.id}">${item?.status}</td>
                        <td id="appr_${item?.id}">${item?.statusCgDate}</td>
                        %{--<td>${item?.statusCgBy}</td>--}%
                        <td id="action_${item?.id}">
                            <g:if test="${item?.status.equals('pending') || item?.status.equals('rejected')}">
                                <button class="btn  btn-outline-success"
                                        style="text-align: center; width: 100px"
                                        onclick="updateApproval('approved', ${item?.id}, '')">Approve</button>
                            </g:if>
                            <g:if test="${item?.status.equals('approved')}">
                                <button
                                        class="btn btn-outline-danger"
                                        style="text-align: center;  width: 100px"
                                        onclick="updateApproval('rejected', ${item?.id}, '')">Reject</button>
                            </g:if>
                        </td>
                    </tr>
                </g:each>
            </table>

            %{--<div class="pagination justify-content-center">--}%
            %{--<g:paginate total="${itemInstanceCount ?: 0}"/>--}%
            %{--</div>--}%

            <!-- Pagination -->
            <ul class="pagination justify-content-center">
                <% def mod = itemInstanceCount % params.max %>
                <% Integer page = itemInstanceCount / params.max %>
                <% def offsetNow = params.offset ? Integer.parseInt(params.offset) : 0 %>

                <g:if test="${offsetNow > 0}">
                    <li class="page-item">
                        <a class="page-link"
                           href="${createLink(action: 'contributorItems', params: [offset: (offsetNow - params.max), max: params.max])}"
                           aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                </g:if>


                <g:each in="${(1..page).toList()}" var="i">
                    <li class="page-item">
                        <a class="page-link"
                           href="${createLink(action: 'contributorItems', params: [offset: ((i - 1) * params.max), max: params.max])}">${i}</a>
                    </li>
                </g:each>
                <g:if test="${mod > 0}">
                    <li class="page-item">
                        <a class="page-link"
                           href="${createLink(action: 'contributorItems', params: [offset: page * params.max, max: params.max])}">${page + 1}</a>
                    </li>
                </g:if>

                <g:if test="${offsetNow < page * params.max}">
                    <li class="page-item">
                        <a class="page-link"
                           href="${createLink(action: 'contributorItems', params: [offset: offsetNow + params.max, max: params.max])}"
                           aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </g:if>
            </ul>
        </div>
    </div>
</div>
<script>
    function updateApproval(status, item_id, status_info) {
        var URL = "${createLink(controller: 'api', action: 'updateApproval')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                item_id: item_id,
                status: status,
                status_info: status_info,
                username: '${userObject?.username}'
            },
            success: function (resp) {
                console.log(resp)
                var cell = document.getElementById(item_id);
                var cell_appr = document.getElementById('appr_' + item_id);
                var action_cell = document.getElementById('action_' + item_id);
                var status = resp.data.status;
                cell.innerHTML = status;
                cell_appr.innerHTML = resp.data.statusCgDate;
                if (status === 'approved') {
                    action_cell.innerHTML = '<button class=\"btn btn-outline-danger\" style=\"text-align: center;  width: 100px\"  onclick=\"updateApproval(\'rejected\', ' + item_id + ', \'\')\">Reject</button>';
                } else {
                    action_cell.innerHTML = '<button class=\"btn btn-outline-success\" style=\"text-align: center;  width: 100px\"  onclick=\"updateApproval(\'approved\', ' + item_id + ', \'\')\">Approve</button>';

                }

            }
        });
    }
</script>

</body>
</html>