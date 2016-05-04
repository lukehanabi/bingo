<#-- @ftlvariable name="users" type="java.util.List<com.bingo.site.domain.User>" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
          <#include "header.ftl">
    <title>List of Users</title>
</head>
<body>
<div class="container">
<#include "menu.ftl">
</div>
<div class="container">
<h1>List of Users</h1>

<table class="table table-striped">
    <thead>
    <tr>
        <th>E-mail</th>
        <th>Role</th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
    <tr>
        <td><a href="/user/${user.id}">${user.email}</a></td>
        <td>${user.role}</td>
    </tr>
    </#list>
    </tbody>
</table>
</div>
</body>
</html>