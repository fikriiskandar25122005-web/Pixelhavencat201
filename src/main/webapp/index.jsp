<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%
    // This looks into the "Session memory" for the user you just registered
    Object user = session.getAttribute("user");
    if (user != null) {
%>
<div style="background-color: #d4edda; color: #155724; padding: 10px; border: 1px solid #c3e6cb;">
    <strong>Success!</strong> Welcome to Pixel Haven, <%= user.toString() %>
</div>
<% } %>
<h1><%= "Login & Registration Page" %>
</h1>
<br/>
<a href="registration.jsp">Go to Registration Page</a>
</body>
</html>