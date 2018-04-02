<%--
  Created by IntelliJ IDEA.
  User: Ridho
  Date: 4/1/2018
  Time: 8:17 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme_portfolio_gh"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <title></title>
    <style type="text/css">
    @import url("http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css");

    .panel-pricing {
        -moz-transition: all .3s ease;
        -o-transition: all .3s ease;
        -webkit-transition: all .3s ease;
    }

    .panel-pricing:hover {
        box-shadow: 0px 0px 30px rgba(0, 0, 0, 0.2);
    }

    .panel-pricing .panel-heading {
        padding: 20px 10px;
    }

    .panel-pricing .panel-heading .fa {
        margin-top: 10px;
        font-size: 58px;
    }

    .panel-pricing .list-group-item {
        color: #777777;
        border-bottom: 1px solid rgba(250, 250, 250, 0.5);
    }

    .panel-pricing .list-group-item:last-child {
        border-bottom-right-radius: 0px;
        border-bottom-left-radius: 0px;
    }

    .panel-pricing .list-group-item:first-child {
        border-top-right-radius: 0px;
        border-top-left-radius: 0px;
    }

    .panel-pricing .panel-body {
        background-color: #f0f0f0;
        font-size: 40px;
        color: #777777;
        padding: 20px;
        margin: 0px;
    }
    </style>
</head>

<body>

<!-- Plans -->

<div class="container">
    <section id="plans">
        <br/>
        <br/>

        <div class="row">

            <!-- item -->
            <div class="col-md-4 text-center" style="margin-top: 30px;">
                <div class="panel panel-danger panel-pricing">
                    <div class="panel-heading">
                        <i class="fa fa-desktop"></i>

                        <h3>Subscription</h3>
                    </div>

                    <div class="panel-body text-center">
                        <p><strong>(Annual/ Monthly)</strong></p>
                    </div>

                    <form>
                        <ul class="list-group text-center">
                            <li class="list-group-item"><i class="fa fa-check"></i> <input type="radio" name="image1"
                                                                                           value=""> 10 images <b>49 USD</b>
                            </li>
                            <li class="list-group-item"><i class="fa fa-check"></i> <input type="radio" name="image1"
                                                                                           value=""> 50 images <b>125 USD</b>
                            </li>
                            <li class="list-group-item"><i class="fa fa-check"></i> <input type="radio" name="image1"
                                                                                           value=""> 350 images <b>199 USD</b>
                            </li>
                            <li class="list-group-item"><i class="fa fa-check"></i> <input type="radio" name="image1"
                                                                                           value=""> 750 images <b>249 USD</b>
                            </li>
                        </ul>
                    </form>

                    <div class="panel-footer">
                        <button type="button" class="btn btn-lg btn-block btn-danger" data-toggle="modal"
                                data-target="#myModal">
                            BUY NOW!
                        </button>
                        %{--<a class="btn btn-lg btn-block btn-danger" href="#">BUY NOW!</a>--}%
                    </div>
                </div>
            </div>
            <!-- /item -->
            <br/>
            <!-- item -->
            <div class="col-md-4 text-center" style="margin-top: 30px;">
                <div class="panel panel-warning panel-pricing">
                    <div class="panel-heading">
                        <i class="fa fa-desktop"></i>

                        <h3>On Demand</h3>
                    </div>

                    <div class="panel-body text-center">
                        <p><strong>(Standard/ Enhance)</strong></p>
                    </div>

                    <form>
                        <ul class="list-group text-center">
                            <li class="list-group-item"><i class="fa fa-check"></i> <input type="radio" name="image1"
                                                                                           value=""> 5 images <b>49 USD</b>
                            </li>
                            <li class="list-group-item"><i class="fa fa-check"></i> <input type="radio" name="image1"
                                                                                           value=""> 25 images <b>229 USD</b>
                            </li>
                            <li class="list-group-item">
                                <br/>
                            </li>
                            <li class="list-group-item">
                                <br/>
                            </li>
                        </ul>
                    </form>

                    <div class="panel-footer">
                        <button type="button" class="btn btn-lg btn-block btn-warning" data-toggle="modal"
                                data-target="#myModal">
                            BUY NOW!
                        </button>
                        %{--<a class="btn btn-lg btn-block btn-warning" href="#">BUY NOW!</a>--}%
                    </div>
                </div>
            </div>
            <br/>
            <!-- /item -->
            <!-- item -->
            <div class="col-md-4 text-center" style="margin-top: 30px;">
                <div class="panel panel-success panel-pricing">
                    <div class="panel-heading">
                        <i class="fa fa-desktop"></i>

                        <h3>Team</h3>
                    </div>

                    <div class="panel-body text-center">
                        <p><strong>(Standard License)</strong></p>
                    </div>

                    <form>
                        <ul class="list-group text-center">
                            <li class="list-group-item"><i class="fa fa-check"></i> <input type="radio" name="image1"
                                                                                           value=""> 2 users <b>379 USD</b>
                            </li>
                            <li class="list-group-item"><i class="fa fa-check"></i> <input type="radio" name="image1"
                                                                                           value=""> 3 users <b>479 USD</b>
                            </li>
                            <li class="list-group-item"><i class="fa fa-check"></i> <input type="radio" name="image1"
                                                                                           value=""> 4 or more users <b>579 USD</b>
                            </li>
                            <li class="list-group-item">
                                <br/>
                            </li>
                        </ul>
                    </form>


                    <div class="panel-footer">
                        <button type="button" class="btn btn-lg btn-block btn-success" data-toggle="modal"
                                data-target="#myModal">
                            BUY NOW!
                        </button>
                        %{--<a class="btn btn-lg btn-block btn-success" href="#">BUY NOW!</a>--}%
                    </div>
                </div>
            </div>
            <!-- /item -->
        </div>
        <br/>
        <br/>

        %{--<div style="margin-left: auto; max-width: 600px;">--}%
            <div class="row">

                <!-- item -->
                <div class="col-md-12 text-center">
                    <div class="panel panel-success panel-pricing">
                        <div class="panel-heading">
                            <i class="fa fa-desktop"></i>

                            <h3>Enterprice Plan</h3>
                        </div>

                        %{--<div class="panel-body text-center">--}%
                            %{--<p><strong>Special for company design / communication that need service provision of image based on custom, requirement, special case, etc</strong></p>--}%
                        %{--</div>--}%
                        <ul class="list-group text-center">
                        <li class="list-group-item"><i class="fa fa-check"></i>Special for company design / communication that need service provision of image based on custom, requirement, special case, etc.</li>
                            %{--<li class="list-group-item"><i class="fa fa-check"></i> Unlimited projects</li>--}%
                            %{--<li class="list-group-item"><i class="fa fa-check"></i> 27/7 support</li>--}%
                        </ul>

                        <div class="panel-footer">
                            <button type="button" class="btn btn-lg btn-block btn-outline btn-success" data-toggle="modal"
                                    data-target="#myModal">
                                Bussiness Solution
                            </button>
                            %{--<a class="btn btn-lg btn-block btn-outline btn-warning" href="#">BUY NOW!</a>--}%
                        </div>
                    </div>
                </div>
                <!-- /item -->
            </div>
        %{--</div>--}%

        <br/>
        <br/>
    </section>
</div>

<div class="container">
    %{--<h2>Modal Example</h2>--}%
    <!-- Trigger the modal with a button -->
    <!-- Button to Open the Modal -->


    <!-- The Modal -->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Term of Service</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div style="height: 300px; overflow-y: scroll;">
                        <pre style="white-space: pre-line; font-family: Arial">${raw(com.picsell.config.TermOfService.findAll()?.get(0)?.tos)}</pre>

                    </div>
                    <hr/>
                    <input id="check_read_tos" type="checkbox" value=""/> I have read Term of Servie
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal" style="width: 100%">Agree</button>
                </div>

            </div>
        </div>
    </div>

</div>


<script>
//    $('#check_read_tos').
</script>
</body>
</html>