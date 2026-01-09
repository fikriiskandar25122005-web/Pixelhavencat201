<%@ page import="org.example.pixelhavencat201.Cart" %>
<%@ page import="org.example.pixelhavencat201.CartItem" %>
<%@ page import="java.util.ArrayList" %>

<%
    Cart cart = (Cart) session.getAttribute("cart");
    if(cart == null){
        cart = new Cart();
        session.setAttribute("cart", cart);
    }
%>

<html>
<head>
    <title>Your Cart | Pixel Haven</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Google+Sans:wght@400;500;700&display=swap" rel="stylesheet">
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
    <div class="text-center" style="margin-bottom: 30px;">
        <h1>Your Shopping Cart</h1>
        <p>Review your selected devices before checkout.</p>
    </div>

    <% if (cart.isEmpty()) { %>
    <div class="product-card text-center" style="padding: 50px;">
        <h2 style="color: #5f6368;">Your cart is empty</h2>
        <p>Looks like you haven't chosen a Pixel yet.</p>
        <br>
        <a href="index.jsp"><button>Browse Phones</button></a>
    </div>
    <% } else { %>

    <div style="background: white; padding: 30px; border-radius: 16px; box-shadow: 0 4px 10px rgba(0,0,0,0.05);">

        <table>
            <thead>
            <tr>
                <th style="width: 5%;">No.</th>
                <th style="width: 40%;">Item</th>
                <th style="width: 20%;">Price</th>
                <th style="width: 15%;">Qty</th>
                <th style="width: 20%;">Total</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <%
                ArrayList<CartItem> items = cart.getItems();
                for(int i=0; i<items.size(); i++){
                    CartItem item = items.get(i);
            %>
            <tr>
                <td><%= i+1 %></td>
                <td>
                    <div style="font-weight: bold; font-size: 1.1em;"><%= item.getName() %></div>
                </td>
                <td>RM <%= item.getPrice() %></td>
                <td><%= item.getQuantity() %></td>
                <td style="font-weight: bold; color: #1a73e8;">RM <%= item.getTotalPrice() %></td>
                <td>
                    <form method="get" action="CartServlet" style="margin: 0;">
                        <input type="hidden" name="remove" value="<%= i %>">
                        <button type="submit" style="background-color: #d93025; padding: 6px 15px; font-size: 0.9rem;">Remove</button>
                    </form>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>

        <div style="margin-top: 30px; display: flex; justify-content: flex-end; align-items: center; border-top: 1px solid #eee; padding-top: 20px;">
            <div style="text-align: right;">
                <h2 style="margin: 0; font-size: 2em;">Total: RM <%= cart.getTotal() %></h2>
                <div style="margin-top: 20px;">
                    <a href="index.jsp" style="margin-right: 20px; color: #5f6368; font-weight: 600;">Continue Shopping</a>
                    <form method="post" action="CheckoutServlet" style="display: inline;">
                        <button type="submit" style="font-size: 1.1em; padding: 12px 40px;">Proceed to Checkout</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <% } %>
</div>

<script src="js/cart.js"></script>
</body>
</html>
