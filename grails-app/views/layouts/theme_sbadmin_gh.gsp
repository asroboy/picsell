<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>${title ?: 'picsell'}</title>

    <!-- Bootstrap core CSS-->
    <link href="${resource(dir: 'sb-admin-gh-pages', file: 'vendor/bootstrap/css/bootstrap.min.css')}" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="${resource(dir: 'sb-admin-gh-pages', file: 'vendor/font-awesome/css/font-awesome.min.css')}" rel="stylesheet" type="text/css">
    <!-- Page level plugin CSS-->
    <link href="${resource(dir: 'sb-admin-gh-pages', file: 'vendor/datatables/dataTables.bootstrap4.css')}" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="${resource(dir: 'sb-admin-gh-pages', file: 'css/sb-admin.css')}" rel="stylesheet">
    <g:layoutHead/>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<!-- Navigation-->
<nav class="navbar navbar-expand-md navbar-dark fixed-top" id="mainNav"  style="background-color: #00796B;">
    <a class="navbar-brand" href="index.html">Admin panel</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <g:render template="/layouts/menu_admingh"/>
</nav>
<div class="content-wrapper">
    <div class="container-fluid">
       <g:layoutBody/>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <g:render template="/layouts/adminpage_footer"/>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="${createLink(controller: 'logout')}">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${resource(dir: 'sb-admin-gh-pages', file: 'vendor/jquery/jquery.min.js')}"></script>
    <script src="${resource(dir: 'sb-admin-gh-pages', file: 'vendor/bootstrap/js/bootstrap.bundle.min.js')}"></script>
    <!-- Core plugin JavaScript-->
    <script src="${resource(dir: 'sb-admin-gh-pages', file: 'vendor/jquery-easing/jquery.easing.min.js')}"></script>
    <!-- Page level plugin JavaScript-->
    <script src="${resource(dir: 'sb-admin-gh-pages', file: 'vendor/chart.js/Chart.min.js')}"></script>
    <script src="${resource(dir: 'sb-admin-gh-pages', file: 'vendor/datatables/jquery.dataTables.js')}"></script>
    <script src="${resource(dir: 'sb-admin-gh-pages', file: 'vendor/datatables/dataTables.bootstrap4.js')}"></script>
    <!-- Custom scripts for all pages-->
    <script src="${resource(dir: 'sb-admin-gh-pages', file: 'js/sb-admin.min.js')}"></script>
    <!-- Custom scripts for this page-->
    <script src="${resource(dir: 'sb-admin-gh-pages', file: 'js/sb-admin-datatables.min.js')}"></script>
    <script src="${resource(dir: 'sb-admin-gh-pages', file: 'js/sb-admin-charts.min.js')}"></script>
</div>
</body>

</html>
