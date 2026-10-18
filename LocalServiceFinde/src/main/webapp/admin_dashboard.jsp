
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header class="navbar">
    <a class="logo" href="index.jsp">LocalService<span>Finder</span></a>
    <nav><a href="login.jsp">Logout</a></nav>
</header>

<main class="page-container">
    <h1>Admin Dashboard</h1>
    <p class="muted">Manage the Local Service Finder platform.</p>
    <div class="dashboard-grid">
        <div class="panel">
            <h3>Users</h3>
            <p>User management will be available after database integration.</p>
        </div>
        <div class="panel">
            <h3>Providers</h3>
            <p>Review registered service providers.</p>
        </div>
        <div class="panel">
            <h3>Service Requests</h3>
            <p>Monitor service request activity.</p>
        </div>
    </div>
</main>
</body>
</html>
