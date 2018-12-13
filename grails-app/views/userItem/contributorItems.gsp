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
    <g:set var="userObject"
           value="${com.picsell.security.User.findByUsername(sec.loggedInUserInfo(field: 'username'))}"/>
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
                    %{--<th width="3%">ID</th>--}%
                    <th width="15%">Item Image</th>
                    <th width="30%">Item Info</th>
                    %{--<th width="20%">Price</th>--}%
                    <th>Status</th>
                    <th  width="15%">Updated at</th>
                    %{--<th>Appr/Rejected by</th>--}%
                    <th width="25%">Action</th>
                </tr>
                <g:each in="${itemInstanceList}" var="item">
                    <tr>
                        %{--<td>${item?.id}</td>--}%
                        <td><img class="card-img-top"
                                 src="${createLink(controller: 'document', action: 'download', id: com.picsell.data.ImageFile.findByTableIdAndTableName(item?.id, item.class.simpleName)?.id, params: [s: '238h9uhh3', table_id: item?.id, table_name: 'Item'])}"
                                 alt=""></td>
                        <td><b>${item?.name}</b>
                            <br/><font color="#d3d3d3">id: ${item?.id}, owner: ${item?.userOwner?.username}</font>
                            <br/><i>${item?.description}</i>
                            <br/>tags: ${item?.tags}
                            %{--<br/><button class="myButton" style="height: 27px; font-size: 11px; padding-top: 4px">Detail</button>--}%
                        </td>
                        %{--<td>${item?.price} ${item?.currency}</td>--}%
                        <td id="${item?.id}">
                            ${item?.status}
                            <br/><i><font color="#d2691e">${item?.statusInfo}</font></i>
                        </td>
                        <td id="appr_${item?.id}"><g:formatDate date="${item?.statusCgDate}"
                                                                format="dd-MMM-yyyy hh:mm"/></td>
                        %{--<td>${item?.statusCgBy}</td>--}%
                        <td id="action_${item?.id}">
                            <g:if test="${item?.status.equals('pending') || item?.status.equals('rejected')}">
                                <button class="myButton"
                                        style="text-align: center; width: 100px"
                                        onclick="showFormUpdateApproval('approved', ${item?.id}, '')">Approve</button>
                                <button
                                        class="myButtonGrey"
                                        style="text-align: center;  width: 100px"
                                        onclick="showFormUpdateApproval('rejected', ${item?.id}, '')">Reject</button>
                            </g:if>
                            <g:if test="${item?.status.equals('approved')}">
                                <button
                                        class="myButtonGrey"
                                        style="text-align: center;  width: 100px"
                                        onclick="showFormUpdateApproval('rejected', ${item?.id}, '')">Reject</button>
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

<g:render template="update_approval"/>
<script>

    function showFormUpdateApproval(status, item_id, status_info) {
        var item_id_field = document.getElementById("item_id");
        var status_field = document.getElementById("status_in");
        var message_in = document.getElementById("message_in");

        item_id_field.value = item_id;
        status_field.value = status;
        message_in.value = "";

        $('#update_approval').modal('toggle');
    }
    function updateApproval() {
        console.log("update approval");
        $('#update_approval').modal('hide');
        var item_id = $("#item_id").val();
        var status_in = $("#status_in").val();
        var message_in = $("#message_in").val();

        console.log(message_in);

        var URL = "${createLink(controller: 'api', action: 'updateItemStatus')}";
        $.ajax({
            type: "GET",
            url: URL,
            data: {
                user_id: '${userObject?.id}',
                item_id: item_id,
                status: status_in,
                message: message_in,
                username: '${userObject?.username}'
            },
            success: function (resp) {
                console.log(resp)
                var cell = document.getElementById(item_id);
                var cell_appr = document.getElementById('appr_' + item_id);
                var action_cell = document.getElementById('action_' + item_id);
                var status = resp.data.status;
                cell.innerHTML = status + "<br/><i><font color=\"#d2691e\">" + resp.data.statusInfo + "</font></i>";
                var dat = new Date(resp.data.statusCgDate);
                var bulan = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                cell_appr.innerHTML = dat.getDate() + '-' + bulan[dat.getMonth()] + '-' + dat.getYear() + ' ' + dat.getHours() + ':' + dat.getMinutes();
                if (status === 'approved') {
                    action_cell.innerHTML = '<button class=\"myButtonGrey\" style=\"text-align: center;  width: 100px\"  onclick=\"showFormUpdateApproval(\'rejected\', ' + item_id + ', \'\')\">Reject</button>';
                } else {
                    action_cell.innerHTML = '<button class=\"myButton\" style=\"text-align: center;  width: 100px\"  onclick=\"showFormUpdateApproval(\'approved\', ' + item_id + ', \'\')\">Approve</button>';

                }

            }
        });
    }
</script>

</body>
</html>