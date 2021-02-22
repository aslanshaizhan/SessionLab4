<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login Form with Servlet</title>
</head>
<style>
    div.container {
        text-align: right;
        width: 300px;
        padding: 10px;
        border: 3px solid grey;
        margin: 0px
    }
</style>
<body>
<h1>Login Form</h1>
<div class="container">
    <form action="LoginController" method="post">
        <table style="with: 50%">
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username"/></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="text" name="password"/></td>
            </tr>
        </table>
        <input type="submit" value="login"/>
    </form>
</div>
</body>
</html>
