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
                <a class="footer_black_link" href="${createLink(controller: 'home', action: 'main')}">Home</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'aboutUs')}">About Us</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'index', params: [cat: 'careers'])}">Careers</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'index', params: [cat: 'careers'])}">Subscribe/Renew</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'main')}">Picsell Images</a><br/>
                <a class="footer_black_link"
                   href="#">Picsell Footage</a><br/>
                <a class="footer_black_link"
                   href="#">Picsell Free Images</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'contributors')}">Contributors</a><br/>
                <a class="footer_black_link"
                   href="#">Trending</a><br/>
                <a class="footer_black_link"
                   href="#">Investor Relations</a><br/>
                %{--<a class="footer_black_link"--}%
                %{--href="${createLink(controller: 'home', action: 'policy')}">Privacy Policy</a><br/>--}%
                %{--<a class="footer_black_link"--}%
                %{--href="${createLink(controller: 'home', action: 'index')}">Picsell Music</a><br/>--}%


                %{--<a class="footer_black_link"--}%
                %{--href="${createLink(controller: 'home', action: 'index', params: [cat: 'hot_item'])}">Hot Items</a><br/>--}%

            </div>

            <div class="col-sm-2">
                <label class="white_link"><h7>Help</h7></label><br/>
                <a class="footer_black_link" href="#">Support Center</a><br/>
                <a class="footer_black_link" href="tel:+628567228886">Contact Us <br/>(+62)8567228886</a><br/>

            </div>

            <div class="col-sm-2">
                <label class="white_link"><h7>Sales & Marketing</h7></label><br/>
                <a class="footer_black_link" href="mailto:sales@picsell.id">sales@picsell.id</a><br/>
                <a class="footer_black_link" href="tel:628567228886">(+62)8567228886</a><br/>

            </div>

            <div class="col-sm-2">
                <label class="white_link"><h7>Legal</h7></label><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'tos')}">Web Term Of Use</a><br/>
                <a class="footer_black_link"
                   href="${createLink(controller: 'home', action: 'agreement')}">License Agreement</a><br/>

            </div>

            <div class="col-sm-4">
                <label class="white_link"><h7>Follow Us</h7></label><br/>
                %{--<div class="bottomright_social">--}%
                <div>
                    <a href="https://facebook.com"><img href="facebook.com"
                                                        src="${resource(dir: 'images/logo', file: 'facebook.png')}"
                                                        style="height: 50px; width: 50px; margin-right: 5px; margin-top: 10px">
                    </a>
                    <a href="https://twitter.com"><img href="twitter.com"
                                                       src="${resource(dir: 'images/logo', file: 'twitter.png')}"
                                                       style="height: 50px; width: 50px; margin-right: 5px;margin-top: 10px">
                    </a>
                    <a href="https://instagram.com"><img href="instagram.com"
                                                         src="${resource(dir: 'images/logo', file: 'instagram.png')}"
                                                         style="height: 50px; width: 50px; margin-right: 5px;margin-top: 10px">
                    </a>
                </div>

                %{--<div class="bottomright">--}%
                <div>
                    %{--<a href="https://picsell.id">--}%
                    %{--<img src="${resource(dir: 'images/logo', file: 'logo.jpg')}"--}%
                    %{--style="height: 100px; width: 100px"/>--}%
                    %{--</a>--}%
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
