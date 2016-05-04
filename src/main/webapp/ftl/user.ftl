<#-- @ftlvariable name="user" type="com.bingo.site.domain.User" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
          <#include "header.ftl">
    <title>User details</title>
</head>
<body>
<div class="container">
<#include "menu.ftl">
</div>
<div class="container">
<h1>User details</h1>

<p>E-mail: ${user.email}</p>

<p>Role: ${user.role}</p>
</div>
</body>
</html>