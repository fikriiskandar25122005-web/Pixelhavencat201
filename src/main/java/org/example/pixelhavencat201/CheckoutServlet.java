package org.example.pixelhavencat201;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class CheckoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if(cart != null && !cart.isEmpty()) {
            Order order = new Order(cart.getItems());
            order.save();

            cart.clear();
            session.setAttribute("cart", cart);

            response.sendRedirect("checkout-success.jsp");
        } else {
            response.sendRedirect("cart.jsp");
        }
    }
}



