package org.example.pixelhavencat201;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/add-phone")
public class AddPhoneServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String model = request.getParameter("model");
        String color = request.getParameter("color");
        double price = Double.parseDouble(request.getParameter("price"));
        int stock = Integer.parseInt(request.getParameter("stock"));

        PixelPhone phone = new PixelPhone(model, color, price, stock);
        PixelPhoneManager.addPhone(phone);

        // redirect back to dashboard
        response.sendRedirect(request.getContextPath() + "/admin-dashboard.jsp");
    }
}
