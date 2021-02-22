<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration Form with Servlet</title>
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
<h1>Registration Form</h1>
<div class="container">
    <form action="RegistrationController" method="post">
        <table style="with: 50%">
            <tr>
                <td>First Name:</td>
                <td><input type="text" name="firstname"/></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><input type="text" name="lastname"/></td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><input type="text" name="age"/></td>
            </tr>
            <tr>
                <td>E-mail address:</td>
                <td><input type="text" name="email"/></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="text" name="password"/></td>
            </tr>
            <tr>
                <td>Confirm your password:</td>
                <td><input type="text" name="confirm"/></td>
            </tr>
        </table>
        <input type="submit" value="register"/>
    </form>
</div>
</body>
</html>
