<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Register Page</title>
</head>
<style>
    table#nat {
        width: 60%;
        background-color: lightgreen;
    }
</style>
</head>
<body>
<% String Fname = request.getParameter("firstname");
    String Lname = request.getParameter("lastname");
    String age = request.getParameter("age");
    String Email = request.getParameter("email");
    String Password = request.getParameter("password");
    String Confirm = request.getParameter("confirm"); %>
<table id="nat">
    <tr>
        <td>First Name:</td>
        <td><%= Fname %>
        </td>
    </tr>
    <tr>
        <td>Last Name:</td>
        <td><%= Lname %>
        </td>
    </tr>
    <tr>
        <td>Age:</td>
        <td><%= age %>
        </td>
    </tr>
    <tr>
        <td>Email:</td>
        <td><%= Email %>
        </td>
    </tr>
    <tr>
        <td>Password:</td>
        <td><%= Password %>
        </td>
    </tr>
    <tr>
        <td>Confirm your password:</td>
        <td><%= Confirm %>
        </td>
    </tr>
</table>
</body>
</html>
