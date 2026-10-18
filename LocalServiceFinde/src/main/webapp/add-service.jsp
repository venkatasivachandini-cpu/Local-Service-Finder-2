
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Service - Local Service Finder</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            margin: 0;
            padding: 30px;
        }

        .container {
            max-width: 550px;
            margin: 20px auto;
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 3px 12px #00000015;
        }

        h2 {
            text-align: center;
            color: #1d4ed8;
        }

        input, textarea, select {
            width: 100%;
            box-sizing: border-box;
            padding: 11px;
            margin: 8px 0 15px;
            border: 1px solid #cbd5e1;
            border-radius: 6px;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #2563eb;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        button:hover {
            background: #1d4ed8;
        }

        a {
            display: inline-block;
            margin-top: 15px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Add a Service</h2>

        <form action="${pageContext.request.contextPath}/add-service"
              method="post">

            <label>Service Name</label>
            <input type="text" name="service_name"
                   placeholder="Example: Electrician" required>

            <label>Category</label>
            <select name="category" required>
                <option value="">Select Category</option>
                <option value="Electrician">Electrician</option>
                <option value="Plumber">Plumber</option>
                <option value="Carpenter">Carpenter</option>
                <option value="Cleaning">Cleaning</option>
                <option value="Other">Other</option>
            </select>

            <label>Location</label>
            <input type="text" name="location"
                   placeholder="Enter service location" required>

            <label>Provider Name</label>
            <input type="text" name="provider_name"
                   placeholder="Enter provider name" required>

            <label>Phone Number</label>
            <input type="tel" name="phone"
                   placeholder="Enter phone number" required>

            <label>Description</label>
            <textarea name="description"
                      placeholder="Describe the service"></textarea>

            <button type="submit">Add Service</button>
        </form>

        <a href="${pageContext.request.contextPath}/dashboard.jsp">
            Back to Dashboard
        </a>
    </div>
</body>
</html>
