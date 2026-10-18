
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Request a Service | Local Service Finder</title>
<style>
* { box-sizing: border-box; margin: 0; padding: 0; }
body { font-family: Arial, sans-serif; background: #f1f5f9; color: #1e293b; }
nav { background: #123b70; color: white; padding: 18px 8%; }
nav a { color: white; margin-right: 18px; text-decoration: none; }
.card { max-width: 570px; margin: 40px auto; background: white; padding: 30px; border-radius: 14px; box-shadow: 0 8px 25px #00000012; }
h1 { color: #123b70; text-align: center; margin-bottom: 10px; }
p { color: #64748b; text-align: center; margin-bottom: 20px; }
label { display: block; margin: 14px 0 7px; font-weight: bold; }
input, select, textarea { width: 100%; padding: 12px; border: 1px solid #cbd5e1; border-radius: 7px; font: inherit; }
textarea { min-height: 100px; }
button { width: 100%; margin-top: 22px; padding: 13px; border: none; border-radius: 7px; background: #2563eb; color: white; font-size: 16px; cursor: pointer; }
button:hover { background: #1d4ed8; }
@media(max-width: 600px) { .card { margin: 25px 12px; padding: 22px; } }
</style>
</head>
<body>
<nav>
    <a href="index.jsp">Home</a>
    <a href="search.jsp">Search Services</a>
    <a href="customer-dashboard.jsp">Dashboard</a>
</nav>

<div class="card">
    <h1>Request a Service</h1>
    <p>Tell the provider what you need.</p>

    <form action="requestServiceServlet" method="post">
        <label for="providerId">Provider ID</label>
        <input type="number" id="providerId" name="providerId"
               min="1" required>

        <label for="description">Describe Your Requirement</label>
        <textarea id="description" name="description"
                  placeholder="Explain the work you need done" required></textarea>

        <label for="address">Service Address</label>
        <textarea id="address" name="serviceAddress"
                  placeholder="Enter the full service address" required></textarea>

        <label for="date">Preferred Date</label>
        <input type="date" id="date" name="preferredDate" required>

        <button type="submit">Submit Request</button>
    </form>
</div>

<script>
const dateField = document.getElementById("date");
const today = new Date();
const localToday = new Date(
    today.getTime() - today.getTimezoneOffset() * 60000
).toISOString().split("T")[0];
dateField.min = localToday;
</script>
</body>
</html>
