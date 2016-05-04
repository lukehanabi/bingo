<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#-- @ftlvariable name="currentUser" type="com.bingo.site.domain.CurrentUser" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
      <#include "header.ftl">
    <title>Home page</title>
</head>
<body>
<div class="container">

    <#include "menu.ftl">
</div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="http://localhost:8080/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="http://localhost:8080/js/bootstrap.min.js"></script>
</body>
</html>