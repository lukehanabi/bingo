<nav id="navbar" class="navbar-collapse collapse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">BINGO</a>
          </div>
          <div class="navbar-collapse collapse">

    <ul class="nav navbar-nav" role="tablist">
    <#if !currentUser??>
        <li role="presentation"><a href="/login">Log in</a></li>
    </#if>
    <#if currentUser??>
        <li role="presentation"><a href="/user/${currentUser.id}">Settings</a></li>
    </#if>
    <#if currentUser?? && currentUser.role == "ADMIN">
                                <li class="dropdown" role="presentation">
                                   <a href="/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Users <span class="caret"></span></a>
                                     <ul class="dropdown-menu">
                                        <li role="presentation"><a href="/user/create">New User</a></li>
                                        <li role="presentation"><a href="/users">All Users</a></li>
                                     </ul>
                                </li>
    </#if>
     <#if currentUser?? >
            <li role="presentation">
                        <form action="/logout" method="post">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-lg btn-default">Log out</button>
                        </form>
                    </li>
     </#if>
    </ul>
</div>
</nav>