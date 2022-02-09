<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 08/02/2022
  Time: 11:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
<form action="login" method="post">
<%--    <input type="text" name="username">--%>
<%--    <input type="text" name="password">--%>
<%--    <input type="submit" value="Login">--%>
    <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
    </div>
    <div class="form-group">
        <label for="password">Password:</label>
        <input type="text" class="form-control" id="password" placeholder="Enter password" name="password">
    </div>
    <input type="submit" value="Login">
</form>
</body>
</html>
