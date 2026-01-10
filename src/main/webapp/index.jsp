<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Pixel Haven</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; padding: 0; }
        header { display: flex; justify-content: space-between; align-items: center; padding: 10px 20px; background-color: #333; color: white; }
        .admin-btn { background-color: #ff9800; color: white; border: none; padding: 5px 10px; cursor: pointer; }
        .admin-btn:hover { background-color: #e68900; }
    </style>
</head>
<body>
<header>
    <h1>Pixel Haven</h1>
    <form action="admin-login.jsp" method="get" style="margin:0;">
        <button class="admin-btn" type="submit">Admin</button>
    </form>
</header>

<main>
    <h2>Welcome to Pixel Haven!</h2>
    <p>Browse our amazing Google Pixel products.</p>

    <%-- Optional: show admin status --%>
    <%
        if (session.getAttribute("adminLoggedIn") != null) {
    %>
    <p style="color:green;">Admin is logged in.</p>
    <%
        }
    %>
</main>
</body>
</html>
