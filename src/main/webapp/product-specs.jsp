<%@ page import="com.pixelhaven.model.PixelPhone" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Pixel Haven | Specs</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <style>
        /* Reusing your base styles for consistency */
        body { font-family: 'Roboto', sans-serif; background-color: #f9f9f9; color: #111; margin: 0; padding: 0; }

        /* Navbar */
        .navbar { background: white; padding: 15px 40px; border-bottom: 1px solid #eee; display: flex; align-items: center; }
        .logo { font-size: 20px; font-weight: 700; text-decoration: none; color: black; }

        /* Split Layout */
        .specs-container {
            max-width: 1000px;
            margin: 40px auto;
            background: white;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.05);
            display: flex;
            overflow: hidden;
            padding: 40px;
            gap: 40px;
        }

        .left-column { flex: 1; display: flex; align-items: center; justify-content: center; background: #fdfdfd; border-radius: 15px; }
        .product-hero-img { width: 100%; max-width: 400px; object-fit: contain; }

        .right-column { flex: 1; padding: 10px; }

        .product-title { font-size: 32px; font-weight: 700; margin-bottom: 10px; }
        .product-desc { color: #666; font-size: 16px; margin-bottom: 30px; line-height: 1.5; }

        .spec-table { width: 100%; border-collapse: collapse; margin-bottom: 30px; }
        .spec-table td { padding: 15px 0; border-bottom: 1px solid #eee; font-size: 14px; }
        .spec-label { font-weight: 700; color: #444; width: 120px; }
        .spec-value { color: #111; }

        .btn-back {
            display: inline-block;
            text-decoration: none;
            color: #000;
            border: 1px solid #ddd;
            padding: 10px 20px;
            border-radius: 30px;
            font-size: 14px;
            margin-right: 10px;
            transition: all 0.2s;
        }
        .btn-back:hover { background: #f0f0f0; }

        .btn-add {
            background: black;
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 30px;
            font-size: 14px;
            font-weight: 700;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="navbar">
    <a href="catalog.jsp" class="logo">Pixel Haven</a>
</div>

<%
    PixelPhone p = (PixelPhone) request.getAttribute("phone");
    if(p != null) {
%>

<div class="specs-container">
    <div class="left-column">
        <img src="images/<%= p.getDefaultImageUrl() %>" alt="<%= p.getName() %>" class="product-hero-img">
    </div>

    <div class="right-column">
        <div class="product-title"><%= p.getName() %></div>
        <div class="product-desc"><%= p.getDescription() %></div>

        <h3>Technical Specifications</h3>
        <table class="spec-table">
            <tr>
                <td class="spec-label">Series</td>
                <td class="spec-value"><%= p.getSeries() %></td>
            </tr>
            <tr>
                <td class="spec-label">Starting Price</td>
                <td class="spec-value">RM <%= String.format("%.2f", p.getDefaultPrice()) %></td>
            </tr>
            <tr>
                <td class="spec-label">Colors</td>
                <td class="spec-value">
                    <% for(String color : p.getColorNames()) { %>
                    <span style="display:inline-block; padding: 4px 10px; background:#f0f0f0; border-radius:12px; margin-right:5px; margin-bottom:5px; font-size:12px;"><%= color %></span>
                    <% } %>
                </td>
            </tr>
            <tr>
                <td class="spec-label">Storage</td>
                <td class="spec-value">
                    <% for(String storage : p.getStorage()) { %>
                    <span style="display:inline-block; padding: 4px 10px; border:1px solid #ddd; border-radius:12px; margin-right:5px; font-size:12px;"><%= storage %></span>
                    <% } %>
                </td>
            </tr>
        </table>

        <a href="catalog.jsp" class="btn-back">← Back to Catalog</a>

        <form action="addToCart" method="post" style="display:inline;">
            <input type="hidden" name="productId" value="<%= p.getId() %>">
            <button type="submit" class="btn-add" onclick="alert('Added to Cart!')">Add to Cart</button>
        </form>
    </div>
</div>

<% } else { %>
<div style="text-align:center; padding:50px;">
    <h2>Product Not Found</h2>
    <a href="catalog.jsp">Return Home</a>
</div>
<% } %>

</body>
</html>