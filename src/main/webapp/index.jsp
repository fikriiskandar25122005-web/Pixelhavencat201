<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pixel Haven | Premium Phones</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
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
</body>
</html>
