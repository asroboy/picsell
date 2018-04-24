<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark  fixed-top" style="background-color: #00796B;">
    <div class="container-fluid">
        <a class="navbar-brand" href="${createLink(controller: 'home', action: 'index')}">Picsell</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <g:render template="/layouts/category"></g:render>

    </div>
</nav>