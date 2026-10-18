
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Local Service Finder - Register</title>

    <style>
        * { box-sizing: border-box; }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f0f4f8;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            background: white;
            width: 380px;
            max-width: 92%;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 5px 20px #00000015;
        }

        h2 {
            text-align: center;
            color: #1769aa;
            margin-top: 0;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 11px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        button {
            width: 100%;
            padding: 12px;
            margin-top: 22px;
            background: #1769aa;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        button:hover { background: #0d4f85; }

        .message {
            padding: 10px;
            margin: 12px 0;
            border-radius: 5px;
            overflow-wrap: anywhere;
        }

        .error { background: #fee2e2; color: #991b1b; }
        .success { background: #dcfce7; color: #166534; }

        .link {
            text-align: center;
            margin-top: 18px;
        }
    </style>
</head>

<body>
<div class="container">

    <h2>Create Account</h2>

    <% if (request.getAttribute("error") != null) { %>
        <div class="message error">
            <%= request.getAttribute("error") %>
        </div>
    <% } %>

    <% if (request.getAttribute("success") != null) { %>
        <div class="message success">
            <%= request.getAttribute("success") %>
        </div>
    <% } %>

    <form action="${pageContext.request.contextPath}/register"
          method="post">

        <label for="fullname">Full Name</label>
        <input type="text" id="fullname" name="fullname"
               maxlength="100" required>

        <label for="email">Email Address</label>
        <input type="email" id="email" name="email"
               maxlength="150" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password"
               minlength="8" maxlength="72" required>

        <button type="submit">Register</button>
    </form>

    <div class="link">
        Already registered?
        <a href="login.jsp">Login here</a>
    </div>

</div>
</body>
</html>
