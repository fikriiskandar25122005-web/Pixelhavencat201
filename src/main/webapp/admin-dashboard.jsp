<%@ page contentType="text/html;charset=UTF-8" %>
<%
    // Check if admin is logged in
    if (session.getAttribute("adminLoggedIn") == null) {
        response.sendRedirect(request.getContextPath() + "/admin-login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h2 { color: #333; }
    </style>
</head>
<body>
<h2>Welcome Admin!</h2>

<p>This is your admin dashboard.</p>

<form action="admin-logout" method="post">
    <button type="submit">Logout</button>
</form>

</body>
</html>

<h3>Add New Pixel Phone</h3>
<form action="add-phone" method="post">
    <div>
        <label for="model">Model:</label>
        <input type="text" id="model" name="model" required>
    </div>
    <div>
        <label for="color">Color:</label>
        <input type="text" id="color" name="color" required>
    </div>
    <div>
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" step="0.01" required>
    </div>
    <div>
        <label for="stock">Stock:</label>
        <input type="number" id="stock" name="stock" required>
    </div>
    <br>
    <button type="submit">Add Phone</button>
</form>

<%-- Optional: Show list of current phones --%>
<h3>Current Phones:</h3>
<ul>
    <%
        for (PixelPhone phone : PixelPhoneManager.getPhones()) {
    %>
    <li><%= phone.getModel() %> - <%= phone.getColor() %> - $<%= phone.getPrice() %> - Stock: <%= phone.getStock() %></li>
    <%
        }
    %>
</ul>

