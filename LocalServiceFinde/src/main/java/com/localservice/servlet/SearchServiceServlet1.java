
package com.localservice.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localservice.util.DBConnection;

public class SearchServiceServlet1 extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String keyword = request.getParameter("keyword");
        if (keyword == null) {
            keyword = "";
        }
        keyword = keyword.trim();

        List<Map<String, Object>> services = new ArrayList<>();

        String sql =
            "SELECT id, service_name, category, location, " +
            "provider_name, phone, description " +
            "FROM services " +
            "WHERE service_name LIKE ? OR category LIKE ? " +
            "OR location LIKE ? ORDER BY id DESC";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            String pattern = "%" + keyword + "%";
            ps.setString(1, pattern);
            ps.setString(2, pattern);
            ps.setString(3, pattern);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Map<String, Object> item = new HashMap<>();

                    item.put("id", rs.getInt("id"));
                    item.put("service_name",
                            rs.getString("service_name"));
                    item.put("category", rs.getString("category"));
                    item.put("location", rs.getString("location"));
                    item.put("provider_name",
                            rs.getString("provider_name"));
                    item.put("phone", rs.getString("phone"));
                    item.put("description",
                            rs.getString("description"));

                    services.add(item);
                }
            }

            request.setAttribute("services", services);
            request.setAttribute("keyword", keyword);

            request.getRequestDispatcher("/search-services.jsp")
                   .forward(request, response);

        } catch (Exception e) {
            getServletContext().log("Service search failed", e);
            response.sendError(
                    HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
                    "Unable to search services.");
        }
    }
}
