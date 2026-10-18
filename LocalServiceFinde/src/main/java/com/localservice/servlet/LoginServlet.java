package com.localservice.servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import com.localservice.util.DBConnection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println("LOGIN SERVLET STARTED");
    	System.out.println("LoginServlet doPost() called");
        request.setCharacterEncoding("UTF-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password_hash");
        System.out.println("Email received: " + email);
        System.out.println("Password received: " +
                (password != null && !password.isEmpty()
                        ? "Provided" : "Missing"));

        if (email == null || password == null
                || email.trim().isEmpty()
                || password.isEmpty()) {

            request.setAttribute("error",
                    "Please enter your email and password.");
            request.getRequestDispatcher("/login.jsp")
                   .forward(request, response);
            return;
        }

        String sql =
                "SELECT user_id, full_name, password_hash FROM users WHERE email = ?";

String sql1 =
    "SELECT user_id, full_name, email, password_hash "
  + "FROM users WHERE email = ?";

try (Connection con = DBConnection.getConnection();
     PreparedStatement ps = con.prepareStatement(sql1)) {

    ps.setString(1, email);

    try (ResultSet rs = ps.executeQuery()) {
       
    }
} catch (Exception e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql1)) {

            ps.setString(1, email.trim());

            try (ResultSet rs = ps.executeQuery()) {

                if (rs.next()) {
                    String storedHash = rs.getString("password_hash");

                    if (storedHash != null
                            && storedHash.startsWith("$2")
                            && BCrypt.checkpw(password, storedHash)) {

                        HttpSession oldSession = request.getSession(false);
                        if (oldSession != null) {
                            oldSession.invalidate();
                        }

                        HttpSession session = request.getSession(true);
                        session.setAttribute("userId", rs.getInt("user_id"));
                        session.setAttribute("full_name",
                                rs.getString("full_name"));
                        session.setAttribute("email", email.trim());
                        session.setMaxInactiveInterval(30 * 60);

                        response.sendRedirect(
                        	    request.getContextPath() + "/dashboard.jsp"
                        	);
                        return;
                    }
                }

                request.setAttribute("error",
                        "Invalid email or password.");
                request.getRequestDispatcher("/login.jsp")
                       .forward(request, response);
            }

        } catch (Exception e) {
            getServletContext().log("Login failed", e);
            response.sendError(
                    HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
                    "Unable to process login.");
        }
    }
}
