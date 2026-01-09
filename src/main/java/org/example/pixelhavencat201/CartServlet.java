package org.example.pixelhavencat201;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;

public class CartServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        // Remove item if "remove" param exists
        String removeIndex = request.getParameter("remove");
        if(removeIndex != null) {
            try {
                int index = Integer.parseInt(removeIndex);
                cart.removeItem(index);
            } catch(NumberFormatException ignored) {}
        }

        response.sendRedirect("cart.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        HashMap<String,Integer> products = new HashMap<>();
        products.put("Pixel 6", 2500);
        products.put("Pixel 7", 3500);
        products.put("Pixel 8", 4500);

        String name = request.getParameter("name");
        int price = products.getOrDefault(name, 0);
        int quantity = 1;
        try { quantity = Integer.parseInt(request.getParameter("quantity")); } catch(Exception ignored){}

        CartItem item = new CartItem(name, price, quantity);
        cart.addItem(item);

        response.sendRedirect("cart.jsp");
    }
}

