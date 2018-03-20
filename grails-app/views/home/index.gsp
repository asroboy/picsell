<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 3/16/2018
  Time: 10:25 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <title></title>
</head>

<body>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading -->
    <div>
        <h1 class="my-2">
            ${params.cat}
        </h1>
        <div style="margin-bottom: 20px">
            <h4><small><i>${com.picsell.data.Category.findByName(params.cat)?.description}</i></small></h4>
        </div>

    </div>


    <div class="row">
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top"
                                 src="https://www.pets4homes.co.uk/images/articles/771/large/cat-lifespan-the-life-expectancy-of-cats-568e40723c336.jpg"
                                 alt=""></a>

                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project One</a>
                    </h4>

                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top"
                                 src="https://www.pets4homes.co.uk/images/articles/4039/large/the-10-longest-lived-cat-breeds-58f9e54fa0aa0.jpg"
                                 alt=""></a>

                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Two</a>
                    </h4>

                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top"
                                 src="https://www.pets4homes.co.uk/images/breeds/41/large/b00ec15d7e8513d5c9bdd8a81934792b.jpg"
                                 alt=""></a>

                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Three</a>
                    </h4>

                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="https://www.pets4homes.co.uk/images/articles/771/large/cat-lifespan-the-life-expectancy-of-cats-568e40723c336.jpg" alt=""></a>

                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Four</a>
                    </h4>

                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="https://www.pets4homes.co.uk/images/articles/771/large/cat-lifespan-the-life-expectancy-of-cats-568e40723c336.jpg" alt=""></a>

                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Five</a>
                    </h4>

                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="https://www.pets4homes.co.uk/images/articles/771/large/cat-lifespan-the-life-expectancy-of-cats-568e40723c336.jpg" alt=""></a>

                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Six</a>
                    </h4>

                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
                </div>
            </div>
        </div>
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
<!-- /.container -->

</body>
</html>