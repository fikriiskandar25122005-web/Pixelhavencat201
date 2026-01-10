package org.example.pixelhavencat201;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/admin-login")
public class AdminLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Admin admin = new Admin("admin", "12345"); // hardcoded credentials

        if (admin.validate(username, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("adminLoggedIn", true);
            response.sendRedirect(request.getContextPath() + "/admin-dashboard.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin-login.jsp?error=1");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect(request.getContextPath() + "/admin-login.jsp");
    }
}
