<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/9/2018
  Time: 9:10 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh">
    <title></title>
</head>

<body>
<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="col-lg-2">

        </div>

        <div class="col-lg-10">
            <h1 class="my-4">My Items</h1>
        </div>
    </div>

    <div class="row">

        <div class="col-lg-2">
            <div style="margin-bottom: 2rem">
                <a href="${createLink(action: 'addItem')}" class="btn btn-block btn-outline-primary" style="text-align: left"><i
                        class="fa fa-plus"></i> Add Item</a>
                <a href="#" class="btn btn-block btn-outline-danger" style="text-align: left"><i
                        class="fa fa-dollar"></i>  Pricing</a>
                <a href="#" class="btn btn-block btn-outline-danger" style="text-align: left"><i
                        class="fa fa-recycle"></i> All Items</a>
                <a href="#" class="btn btn-block btn-outline-info" style="text-align: left"><i
                        class="fa fa-anchor"></i> Active Items</a>
                <a href="#" class="btn btn-block btn-outline-info" style="text-align: left"><i
                        class="fa fa-lemon-o"></i> Not Active Items</a>
            </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-10">

            <div class="row">
                <g:each in="${items}" var="item">
                    <div class="col-lg-4 col-sm-6 portfolio-item">
                        <div class="card h-100">
                            <a href="${createLink(controller: 'userItem', action: 'itemDetail')}"><img class="card-img-top"
                                                                                                       src="https://www.pets4homes.co.uk/images/articles/771/large/cat-lifespan-the-life-expectancy-of-cats-568e40723c336.jpg"
                                                                                                       alt=""></a>

                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">${item?.name}</a>
                                </h4>
                                <p>
                                    ${item?.price} ${item?.currency}
                                </p>

                                <p class="card-text">${item?.description}</p>
                            </div>
                        </div>
                    </div>
                </g:each>



            </div>
            <!-- /.row -->

            <!-- Pagination -->
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                    </a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
            </ul>

        </div>
        <!-- /.row -->

    </div>
    <!-- /.col-lg-9 -->

</div>
<!-- /.row -->

</div>
<!-- /.container -->

</body>
</html>