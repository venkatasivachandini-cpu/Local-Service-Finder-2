
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Provider Dashboard</title>
<style>
* { box-sizing: border-box; margin: 0; padding: 0; }
body { font-family: Arial, sans-serif; background: #f1f5f9; color: #1e293b; }
nav { background: #123b70; color: white; padding: 18px 8%; display: flex; justify-content: space-between; }
nav a { color: white; text-decoration: none; margin-left: 16px; }
main { max-width: 1000px; margin: 35px auto; padding: 20px; }
h1 { color: #123b70; margin-bottom: 10px; }
.grid { display: grid; grid-template-columns: repeat(auto-fit,minmax(220px,1fr)); gap: 20px; margin-top: 25px; }
.card { background: white; padding: 24px; border-radius: 12px; box-shadow: 0 4px 18px #0000000c; }
.card h3 { color: #123b70; margin-bottom: 10px; }
.btn { display: inline-block; margin-top: 15px; padding: 11px 16px; background: #2563eb; color: white; text-decoration: none; border-radius: 7px; }
</style>
</head>
<body>
<nav>
    <strong>Local Service Finder</strong>
    <div><a href="index.jsp">Home</a><a href="login.jsp">Logout</a></div>
</nav>
<main>
    <h1>Provider Dashboard</h1>
    <p>Manage your services and customer requests.</p>

    <div class="grid">
        <div class="card">
            <h3>Incoming Requests</h3>
            <p>View new requests from customers.</p>
            <a class="btn" href="provider-requests">View Requests</a>
        </div>
        <div class="card">
            <h3>Business Profile</h3>
            <p>Manage your business information and service area.</p>
            <a class="btn" href="provider-profile.jsp">View Profile</a>
        </div>
        <div class="card">
            <h3>Update Request Status</h3>
            <p>Update requests as accepted or completed.</p>
            <a class="btn" href="provider-requests">Manage Requests</a>
        </div>
    </div>
</main>
</body>
</html>
