
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Provider Registration | Local Service Finder</title>
<style>
* { box-sizing: border-box; margin: 0; padding: 0; }
body { font-family: Arial, sans-serif; background: #f1f5f9; color: #1e293b; }
nav { background: #123b70; color: white; padding: 18px 8%; display: flex; justify-content: space-between; }
nav a { color: white; text-decoration: none; margin-left: 15px; }
.card { max-width: 570px; margin: 35px auto; padding: 30px; background: white; border-radius: 14px; box-shadow: 0 8px 25px #00000012; }
h1 { text-align: center; color: #123b70; margin-bottom: 10px; }
.subtitle { text-align: center; color: #64748b; margin-bottom: 22px; }
label { display: block; margin: 14px 0 7px; font-weight: bold; }
input, select, textarea { width: 100%; padding: 12px; border: 1px solid #cbd5e1; border-radius: 7px; font: inherit; }
textarea { min-height: 95px; resize: vertical; }
button { width: 100%; padding: 13px; margin-top: 22px; background: #2563eb; color: white; border: none; border-radius: 7px; font-size: 16px; cursor: pointer; }
button:hover { background: #1d4ed8; }
.bottom { text-align: center; margin-top: 18px; }
@media(max-width: 600px) { nav { padding: 16px 5%; } .card { margin: 22px 12px; padding: 22px; } }
</style>
</head>
<body>
<nav>
    <strong>Local Service Finder</strong>
    <div><a href="index.jsp">Home</a><a href="login.jsp">Login</a></div>
</nav>

<div class="card">
    <h1>Become a Service Provider</h1>
    <p class="subtitle">Register your business and reach local customers.</p>

    <form action="providerRegisterServlet" method="post">

      <label for="fullName">Your Full Name</label>
        <input type="text" id="fullName" name="fullName" required>

        <label for="email">Email Address</label>
        <input type="email" id="email" name="email" required>

        <label for="phone">Phone Number</label>
        <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" minlength="8" required>

        <label for="businessName">Business Name</label>
        <input type="text" id="businessName" name="businessName" required>

        <label for="category">Service Category</label>
        <select id="category" name="category" required>
            <option value="">Select a category</option>
            <option value="Electrician">Electrician</option>
            <option value="Plumber">Plumber</option>
            <option value="Cleaning">Cleaning</option>
            <option value="Carpenter">Carpenter</option>
            <option value="Appliance Repair">Appliance Repair</option>
        </select>

        <label for="area">Service Area</label>
        <input type="text" id="area" name="serviceArea"
               placeholder="City or locality" required>

        <label for="rate">Hourly Rate (₹)</label>
        <input type="number" id="rate" name="hourlyRate"
               min="0" step="0.01" required>

        <label for="description">Business Description</label>
        <textarea id="description" name="description"
                  placeholder="Describe the services you provide" required></textarea>

        <button type="submit">Register as Provider</button>
    </form>

    <p class="bottom">Already registered? <a href="login.jsp">Login</a></p>
</div>
</body>
</html>
