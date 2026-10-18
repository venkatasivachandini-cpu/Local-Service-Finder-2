
package com.localservice.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.localservice.util.DBConnection;

public class AddServiceServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("userId") == null) {
            response.sendRedirect(
                    request.getContextPath() + "/login.jsp");
            return;
        }

        String serviceName = request.getParameter("service_name");
        String category = request.getParameter("category");
        String location = request.getParameter("location");
        String phone = request.getParameter("phone");
        String description = request.getParameter("description");

        if (serviceName == null || category == null
                || location == null || phone == null
                || serviceName.trim().isEmpty()
                || category.trim().isEmpty()
                || location.trim().isEmpty()
                || phone.trim().isEmpty()) {

            request.setAttribute("error",
                    "Please fill in all required fields.");
            request.getRequestDispatcher("/add-service.jsp")
                   .forward(request, response);
            return;
        }

        if (serviceName.trim().length() > 100
                || category.trim().length() > 80
                || location.trim().length() > 150
                || phone.trim().length() > 20
                || (description != null && description.length() > 2000)) {

            request.setAttribute("error",
                    "One or more fields exceed the allowed length.");
            request.getRequestDispatcher("/add-service.jsp")
                   .forward(request, response);
            return;
        }

        String sql =
            "INSERT INTO services " +
            "(user_id, service_name, category, location, " +
            "provider_name, phone, description) " +
            "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, (Integer) session.getAttribute("userId"));
            ps.setString(2, serviceName.trim());
            ps.setString(3, category.trim());
            ps.setString(4, location.trim());
            ps.setString(5,
                    (String) session.getAttribute("fullname"));
            ps.setString(6, phone.trim());
            ps.setString(7,
                    description == null ? "" : description.trim());

            ps.executeUpdate();

            response.sendRedirect(
                    request.getContextPath()
                    + "/search-services?keyword=");

        } catch (Exception e) {
            getServletContext().log("Adding service failed", e);
            response.sendError(
                    HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
                    "Unable to add service.");
        }
    }
}
