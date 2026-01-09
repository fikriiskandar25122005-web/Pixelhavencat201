package org.example.pixelhavencat201;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegistrationServlet", value = "/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. Get the data from the registration.jsp form
        String name = request.getParameter("fullName");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");

        // 2. Create the Customer object (Your OOP code)
        Customer newCustomer = new Customer(name, email, pass);

        // 3. Save it to the session memory
        HttpSession session = request.getSession();
        session.setAttribute("user", newCustomer);

        // 4. Go back to index.jsp
        response.sendRedirect("index.jsp");
    }
}