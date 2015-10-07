<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav  navbar-right">
        <li><a href=$AbsoluteBaseURL accesskey="1">Home</a></li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Menu <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
            <li class="dropdown-header">Complaints Process</li>
                <% loop $Menu(1) %>
                <li><a class=$LinkingMode href=$Link title=”Go to the $Title page”>$MenuTitle</a></li>
            <% end_loop %>
            </ul>
        </li>
        </ul>
    </div>
    </div>
</nav>
