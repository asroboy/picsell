<!-- Footer -->
%{--<footer class="py-5" style="background-color: #00796B;">--}%
    %{--<div class="container">--}%
        %{--<p class="m-0 text-center text-white">Copyright &copy; picsell.com 2018</p>--}%
    %{--</div>--}%
    %{--<!-- /.container -->--}%
%{--</footer>--}%
<!-- Footer -->
<footer class="py-5" style="background-color: #e20007">
    <div class="container">
        %{--<p class="m-0 text-center text-white">Copyright &copy; picsell.com 2018</p>--}%
        <div class="row">
            <div class="col-sm-2">
                <label class="white_link"><h7>Picsell.ID</h7></label><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'index')}">Home</a><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'aboutUs')}">About Us</a><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'index')}">Picsell Image</a><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'policy')}">Privacy Policy</a><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'index')}">Picsell Music</a><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'index')}">Picsell Footage</a><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'contributors')}">Contributors</a><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'index', params: [cat: 'hot_item'])}">Hot Items</a><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'index', params: [cat: 'careers'])}">Careers</a><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'index')}">Investor Relations</a><br/>
            </div>

            <div class="col-sm-2">
                <label class="white_link"><h7>Help</h7></label><br/>
                <a class="footer_black_link" href="#">Support Center</a><br/>
                <a class="footer_black_link" href="#">Contact Us <br/>(+62)8567228886</a><br/>

            </div>

            <div class="col-sm-2">
                <label class="white_link"><h7>Sales & Mareketing</h7></label><br/>
                <a class="footer_black_link" href="#">sales@picsell.id</a><br/>
                <a class="footer_black_link" href="#">(+62)8567228886</a><br/>

            </div>

            <div class="col-sm-2">
                <label class="white_link"><h7>Legal</h7></label><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'tos')}">Web Term Of Use</a><br/>
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'agreement')}">License Agreement</a><br/>

            </div>

            <div class="col-sm-4">

                <div class="bottomright_social">
                    <a href="https://facebook.com"><img href="facebook.com"
                                                        src="${resource(dir: 'images/logo', file: 'facebook.png')}"
                                                        style="height: 50px; width: 50px; margin: 5px"></a>
                    <a href="https://twitter.com"><img href="twitter.com"
                                                       src="${resource(dir: 'images/logo', file: 'twitter.png')}"
                                                       style="height: 50px; width: 50px; margin: 5px"></a>
                    <a href="https://instagram.com"><img href="instagram.com"
                                                         src="${resource(dir: 'images/logo', file: 'instagram.png')}"
                                                         style="height: 50px; width: 50px; margin: 5px"></a>
                </div>

                <div class="bottomright">
                    <a href="https://picsell.id">
                        <img src="${resource(dir: 'images/logo', file: 'logo.jpg')}"
                             style="height: 100px; width: 100px"/>
                    </a>
                </div>

            </div>
        </div>

    </div>
    <!-- /.container -->
</footer>
<footer style="background-color: white">
    <div class="container">
        %{--<div class="row">--}%
        <p class="m-0 text-right"><label style="color: red;">Copyright &copy; 2018 Picsell.ID</label></p>
        %{--</div>--}%
    </div>
</footer>
