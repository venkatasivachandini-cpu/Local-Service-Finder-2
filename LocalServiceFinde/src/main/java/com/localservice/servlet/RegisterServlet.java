
package com.localservice.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import com.localservice.util.DBConnection;


public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (fullname == null || fullname.trim().isEmpty()
                || email == null || email.trim().isEmpty()
                || password == null || password.isEmpty()) {

            request.setAttribute("errorMessage",
                    "Please fill in all required fields.");
            request.getRequestDispatcher("/register.jsp")
                   .forward(request, response);
            return;
        }

        String hashedPassword =
                BCrypt.hashpw(password, BCrypt.gensalt(12));

        String sql = "INSERT INTO users (full_name, email, password_hash) "
                   + "VALUES (?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, fullname.trim());
            ps.setString(2, email.trim());
            ps.setString(3, hashedPassword);

            ps.executeUpdate();

            response.sendRedirect(
                request.getContextPath() + "/login.jsp?registered=1"
            );

        } catch (SQLException e) {

            if ("23000".equals(e.getSQLState())) {
                request.setAttribute("errorMessage",
                        "This email is already registered.");
            } else {
                getServletContext().log(
                        "Registration database error", e);
                request.setAttribute("errorMessage",
                        "Registration failed. Please try again.");
            }

            request.getRequestDispatcher("/customer_register.jsp")
                   .forward(request, response);
        }
    }
}
