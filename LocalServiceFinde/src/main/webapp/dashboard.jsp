
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect(
            request.getContextPath() + "/login.jsp"
        );
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Local Service Finder - Dashboard</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            text-align: center;
            padding: 40px;
        }

        .container {
            max-width: 650px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
        }

        a {
            display: block;
            margin: 18px auto;
            padding: 14px;
            max-width: 300px;
            background: #2563eb;
            color: white;
            text-decoration: none;
            border-radius: 7px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Local Service Finder</h1>
        <h2>Welcome, ${sessionScope.full_name}!</h2>

        <p>Find and manage local services easily.</p>

        <a href="${pageContext.request.contextPath}/add-service.jsp">
            Add Service
        </a>

        <a href="${pageContext.request.contextPath}/search">
            Search Services
        </a>

        <a href="${pageContext.request.contextPath}/logout">
            Logout
        </a>
    </div>
</body>
</html>
