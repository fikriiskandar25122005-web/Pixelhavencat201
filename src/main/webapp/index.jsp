<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Pixel Haven | The Official Store</title>
    <link href="https://fonts.googleapis.com/css2?family=Google+Sans:wght@400;500;700&family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style.css">

    <style>
        /* LANDING PAGE SPECIFIC STYLES (Samsung Style) */

        /* 1. HERO SECTION (The Big Main Banner) */
        .hero-section {
            position: relative;
            width: 100%;
            height: 650px; /* Tall hero area */
            background-color: #f4f4f4; /* Light grey background like Samsung */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start; /* Align content to top */
            text-align: center;
            overflow: hidden;
            padding-top: 60px;
        }

        .hero-content {
            z-index: 2;
            max-width: 800px;
            animation: fadeInUp 1s ease-out;
        }

        .hero-title {
            font-family: 'Google Sans', sans-serif;
            font-size: 56px;
            font-weight: 700;
            color: black;
            margin-bottom: 15px;
            letter-spacing: -1px;
        }

        .hero-subtitle {
            font-size: 18px;
            color: #444;
            margin-bottom: 30px;
            font-weight: 400;
        }

        .hero-btn {
            background-color: black;
            color: white;
            padding: 12px 35px;
            border-radius: 25px; /* Pill shape button */
            text-decoration: none;
            font-weight: 500;
            font-size: 14px;
            transition: transform 0.2s, background 0.2s;
            display: inline-block;
        }

        .hero-btn:hover {
            background-color: #333;
            transform: scale(1.05);
        }

        .hero-image {
            margin-top: 40px;
            width: 80%;
            max-width: 900px;
            height: auto;
            object-fit: contain;
            transition: transform 0.5s ease;
        }

        .hero-section:hover .hero-image {
            transform: translateY(-10px); /* Subtle float effect */
        }

        /* 2. HIGHLIGHTS GRID (Similar to "Shop By Category") */
        .highlights-container {
            max-width: 1400px;
            margin: 60px auto;
            padding: 0 40px;
            text-align: center;
        }

        .section-heading {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 40px;
        }

        .grid-row {
            display: grid;
            grid-template-columns: repeat(2, 1fr); /* 2 large cards side by side */
            gap: 20px;
        }

        .feature-card {
            background-color: #f4f4f4;
            border-radius: 24px;
            padding: 50px 30px;
            text-align: center;
            height: 600px;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            text-decoration: none;
            color: inherit;
            transition: box-shadow 0.3s;
        }

        .feature-card:hover {
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .feature-title {
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 10px;
        }

        .feature-desc {
            font-size: 16px;
            color: #666;
            margin-bottom: 30px;
        }

        .feature-card img {
            width: 80%;
            max-height: 350px;
            object-fit: contain;
            margin-top: auto; /* Pushes image to bottom */
            margin-bottom: 40px;
        }

        /* 3. ANIMATIONS */
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

    </style>
</head>
<body>

<nav class="navbar">
    <a href="index.jsp" class="logo">Pixel Haven</a>

    <div class="nav-links">
        <a href="index.jsp" class="nav-item active">Home</a>
        <a href="catalog" class="nav-item">Products</a> </div>

    <div class="nav-actions">
        <%
            String username = (String) session.getAttribute("username");
            if (username == null) {
        %>
        <a href="login.jsp" class="nav-action">Sign In</a>
        <a href="register.jsp" class="btn-signup">Sign Up</a>
        <% } else { %>
        <span class="welcome-text">Hi, <%= username %></span>
        <a href="logout" class="nav-action">Logout</a>
        <% } %>
    </div>
</nav>

<section class="hero-section">
</section>

<div class="google-section">

    <div class="google-card large-card">
        <div class="card-text">
            <span class="new-tag">New</span>
            <h2 class="card-title">Pixel 10 Pro and Pro XL</h2>
            <p class="card-desc">Meet the new status pro.</p>
            <div class="card-links">
                <a href="productList" class="btn-blue">Buy Now</a>
                <a href="product-specs.jsp" class="link-blue">Learn more ></a>
            </div>
        </div>
        <img src="images/pixel10pro10proxl.png" alt="Pixel 10 Pro Family" class="img-large">
    </div>

    <div class="google-grid-row">

        <div class="google-card small-card">
            <div class="card-text">
                <span class="new-tag">New</span>
                <h2 class="card-title">Pixel 10 Pro</h2>
                <p class="card-desc">Pro performance in a perfect size.</p>
                <div class="card-links">
                    <a href="productList" class="btn-blue">Buy Now</a>
                    <a href="product-specs.jsp" class="link-blue">Learn more ></a>
                </div>
            </div>
            <img src="images/pixel10pro_moonstone.jpg" alt="Pixel 10 Pro" class="img-small">
        </div>

        <div class="google-card small-card">
            <div class="card-text">
                <span class="new-tag">New</span>
                <h2 class="card-title">Pixel 10</h2>
                <p class="card-desc">Do spectacular, on the regular.</p>
                <div class="card-links">
                    <a href="productList" class="btn-blue">Buy Now</a>
                    <a href="product-specs.jsp" class="link-blue">Learn more ></a>
                </div>
            </div>
            <img src="images/pixel10_indigo.jpg" alt="Pixel 10" class="img-small">
        </div>

    </div>
</div>

<footer style="background:white; padding:40px; text-align:center; border-top:1px solid #eee; margin-top:50px;">
    <p style="color:#666; font-size:12px;">© 2026 Pixel Haven. All rights reserved.</p>
</footer>

</body>
</html>