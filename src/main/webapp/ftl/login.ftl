<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#-- @ftlvariable name="error" type="java.util.Optional<String>" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
          <#include "header.ftl">
    <title>Log in</title>
</head>
<body>
<div class="container">
<h1>Log in</h1>

<p>You can use: demo@localhost / demo</p>

<form role="form" action="/login" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

<fieldset class="form-group">

        <label for="email">Email</label>
        <input type="email" name="email" id="email" required autofocus/>
</fieldset>
<fieldset class="form-group">

        <label for="password">Password</label>
        <input type="password" name="password" id="password" required/>

    </fieldset>
    <div>
        <label for="remember-me">Remember me</label>
        <input type="checkbox" name="remember-me" id="remember-me"/>
    </div>
    <button type="submit" class="btn btn-lg btn-default">Sign in</button>
</form>
<div>
<#if error.isPresent()>
<p>The email or password you have entered is invalid, try again.</p>
</#if>
</body>
</html>