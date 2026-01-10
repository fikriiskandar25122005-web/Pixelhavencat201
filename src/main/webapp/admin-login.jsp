<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
</head>
<body>
<h2>Admin Login</h2>

<% if ("1".equals(request.getParameter("error"))) { %>
<div style="color:red;">Invalid username or password!</div>
<% } %>

<form action="admin-login" method="post">
    <div>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
    </div>
    <br>
    <div>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
    </div>
    <br>
    <button type="submit">Login</button>
</form>
</body>
</html>
