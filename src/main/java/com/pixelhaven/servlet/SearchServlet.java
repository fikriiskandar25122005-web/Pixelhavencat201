package com.pixelhaven.servlet;

import com.pixelhaven.dao.PhoneRepository;
import com.pixelhaven.model.PixelPhone;

// NEW IMPORTS FOR TOMCAT 10/11 (JAKARTA)
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String query = request.getParameter("query").toLowerCase();
        List<PixelPhone> allPhones = PhoneRepository.getAllPhones();
        List<PixelPhone> filteredList = new ArrayList<>();

        // Logic to filter the list
        for (PixelPhone p : allPhones) {
            if (p.getName().toLowerCase().contains(query)) {
                filteredList.add(p);
            }
        }

        // Reuse the same catalog.jsp to display results
        request.setAttribute("phones", filteredList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("catalog.jsp");
        dispatcher.forward(request, response);
    }
}