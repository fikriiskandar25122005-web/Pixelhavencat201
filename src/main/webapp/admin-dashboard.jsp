<%@ page session="true" %>
<%
    String admin = (String) session.getAttribute("admin");
    if (admin == null) {
        response.sendRedirect("admin-login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Pixel Haven</title>
</head>
<body>
<h2>Welcome, <%= admin %>!</h2>
<p>This is the admin dashboard.</p>
<ul>
    <li><a href="create-product.jsp">Add Product</a></li>
    <li><a href="logout.jsp">Logout</a></li>
</ul>
</body>
</html>
