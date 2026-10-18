
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Find Services | Local Service Finder</title>
<style>
* { box-sizing: border-box; margin: 0; padding: 0; }
body { font-family: Arial, sans-serif; background: #f1f5f9; color: #1e293b; }
nav { background: #123b70; color: white; padding: 18px 8%; display: flex; justify-content: space-between; }
nav a { color: white; text-decoration: none; margin-left: 16px; }
main { max-width: 1000px; margin: 40px auto; padding: 20px; }
h1 { color: #123b70; margin-bottom: 12px; }
.search-box, .provider { background: white; padding: 22px; border-radius: 12px; margin: 20px 0; box-shadow: 0 4px 18px #0000000c; }
label { display: block; margin: 12px 0 6px; font-weight: bold; }
input, select { width: 100%; padding: 12px; border: 1px solid #cbd5e1; border-radius: 7px; }
button, .btn { display: inline-block; margin-top: 16px; padding: 12px 20px; border: none; border-radius: 7px; background: #2563eb; color: white; text-decoration: none; cursor: pointer; }
.provider h3 { color: #123b70; margin-bottom: 8px; }
.note { color: #64748b; margin-top: 12px; }
@media(min-width: 650px) { .fields { display: grid; grid-template-columns: 1fr 1fr; gap: 18px; } }
</style>
</head>
<body>
<nav>
    <strong>Local Service Finder</strong>
    <div><a href="index.jsp">Home</a><a href="login.jsp">Login</a></div>
</nav>

<main>
    <h1>Find Local Services</h1>
    <p>Search for a service in your area.</p>

    <div class="search-box">
        <form action="searchServlet" method="get">
            <div class="fields">
                <div>
                    <label for="category">Service Category</label>
                    <select id="category" name="category">
                        <option value="">All Services</option>
                        <option value="Electrician">Electrician</option>
                        <option value="Plumber">Plumber</option>
                        <option value="Cleaning">Cleaning</option>
                        <option value="Carpenter">Carpenter</option>
                        <option value="Appliance Repair">Appliance Repair</option>
                    </select>
                </div>
                <div>
                    <label for="location">Location</label>
                    <input id="location" name="location"
                           placeholder="Enter your locality">
                </div>
            </div>
            <button type="submit">Search Providers</button>
        </form>
    </div>

    <h2>Example Service Providers</h2>

    <div class="provider">
        <h3>Sample Electrician</h3>
        <p>Category: Electrician</p>
        <p>Area: Your local area</p>
        <p>Rate: ₹300 per hour</p>
        <a class="btn" href="login.jsp">Login to Request Service</a>
    </div>

    <div class="provider">
        <h3>Sample Plumber</h3>
        <p>Category: Plumber</p>
        <p>Area: Your local area</p>
        <p>Rate: ₹250 per hour</p>
        <a class="btn" href="login.jsp">Login to Request Service</a>
    </div>

    <p class="note">The providers above are sample entries. Replace them with results retrieved from MySQL.</p>
</main>
</body>
</html>
