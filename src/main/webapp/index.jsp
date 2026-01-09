<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Pixel Haven | Premium Phones</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta charset="UTF-8">
    <title>Pixel Haven | Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body>

<nav>
    <div class="brand">Pixel Haven</div>
    <div>
        <a href="index.jsp">Home</a>
        <a href="cart.jsp">My Cart</a>
    </div>
</nav>

<div class="container">
    <div class="text-center">
        <h1>Meet the Pixel Family</h1>
        <p>Experience the best of Pixel. Built for you.</p>
    </div>

    <div class="product-grid">
        <div class="product-card">
            <div class="product-title">Pixel 6</div>
            <div class="product-price">RM 2,500</div>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Pixel 6">
                <input type="hidden" name="quantity" value="1">
                <button type="submit" name="add">Add to Cart</button>
            </form>
        </div>

        <div class="product-card">
            <div class="product-title">Pixel 7</div>
            <div class="product-price">RM 3,500</div>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Pixel 7">
                <input type="hidden" name="quantity" value="1">
                <button type="submit" name="add">Add to Cart</button>
            </form>
        </div>

        <div class="product-card">
            <div class="product-title">Pixel 8 Pro</div>
            <div class="product-price">RM 4,500</div>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Pixel 8">
                <input type="hidden" name="quantity" value="1">
                <button type="submit" name="add">Add to Cart</button>
            </form>
        </div>
    </div>
</div>

<script src="js/cart.js"></script>
<body class="bg-primary">
<div class="login-container">
    <div class="login-image">
        <img src="images/loginreg.jpg" alt="Login Illustration">
    </div>

    <div class="login-form">
        <small class="text-end d-block">Don't have an account? <a href="registration.jsp">Register</a></small>

        <h2 class="mt-5 fw-bold">Welcome Back</h2>
        <p class="text-muted mb-4">Log in to your Pixel Haven account.</p>

        <form action="LoginServlet" method="post">
            <label class="mb-1">Email</label>
            <input type="email" name="email" class="form-control mb-3" placeholder="name@example.com" required>

            <label class="mb-1">Password</label>
            <input type="password" name="password" class="form-control mb-4" placeholder="Enter password" required>

            <button type="submit" class="btn-login">Login</button>
        </form>
    </div>
</div>
</body>
</html>
