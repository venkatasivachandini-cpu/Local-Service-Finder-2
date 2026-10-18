
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Dashboard</title>
<style>
* { box-sizing: border-box; margin: 0; padding: 0; }
body { font-family: Arial, sans-serif; background: #f1f5f9; color: #1e293b; }
nav { background: #123b70; color: white; padding: 18px 8%; display: flex; justify-content: space-between; }
nav a { color: white; text-decoration: none; margin-left: 16px; }
main { max-width: 1000px; margin: 35px auto; padding: 20px; }
h1 { color: #123b70; margin-bottom: 10px; }
.grid { display: grid; grid-template-columns: repeat(auto-fit,minmax(220px,1fr)); gap: 20px; margin: 25px 0; }
.card { background: white; padding: 24px; border-radius: 12px; box-shadow: 0 4px 18px #0000000c; }
.card h3 { color: #123b70; margin-bottom: 10px; }
.btn { display: inline-block; margin-top: 15px; padding: 11px 16px; background: #2563eb; color: white; text-decoration: none; border-radius: 7px; }
</style>
</head>
<body>
<nav>
    <strong>Local Service Finder</strong>
    <div><a href="index.jsp">Home</a><a href="search.jsp">Find Services</a><a href="login.jsp">Logout</a></div>
</nav>
<main>
    <h1>Customer Dashboard</h1>
    <p>Welcome! Manage your local service requests here.</p>

    <div class="grid">
        <div class="card">
            <h3>Find a Service</h3>
            <p>Search for electricians, plumbers, cleaners and more.</p>
            <a class="btn" href="search.jsp">Search Now</a>
        </div>
        <div class="card">
            <h3>Request a Service</h3>
            <p>Submit your requirements to a service provider.</p>
            <a class="btn" href="request-service.jsp">Create Request</a>
        </div>
        <div class="card">
            <h3>My Requests</h3>
            <p>View pending and completed service requests.</p>
            <a class="btn" href="my-requests">View Requests</a>
        </div>
    </div>
    <p>Your actual requests will appear here after connecting the dashboard to MySQL.</p>
</main>
</body>
</html>
