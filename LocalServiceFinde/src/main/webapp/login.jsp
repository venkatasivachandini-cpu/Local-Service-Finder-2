
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login | Local Service Finder</title>

<style>
* { box-sizing: border-box; margin: 0; padding: 0; }
body {
    font-family: Arial, sans-serif; background: #eff6ff;
    color: #1e293b; min-height: 100vh;
}
nav {
    background: #123b70; color: white; padding: 18px 8%;
    display: flex; justify-content: space-between;
}
nav a { color: white; text-decoration: none; margin-left: 18px; }
.logo { font-size: 21px; font-weight: bold; }
.card {
    max-width: 430px; margin: 65px auto; padding: 32px;
    background: white; border-radius: 14px;
    box-shadow: 0 8px 25px #00000012;
}
h1 { text-align: center; color: #123b70; margin-bottom: 10px; }
.subtitle { text-align: center; color: #64748b; margin-bottom: 25px; }
label { display: block; margin: 16px 0 7px; font-weight: bold; }
input {
    width: 100%; padding: 12px; border: 1px solid #cbd5e1;
    border-radius: 7px; font-size: 15px;
}
button {
    width: 100%; margin-top: 24px; padding: 13px;
    border: none; border-radius: 7px; background: #2563eb;
    color: white; font-size: 16px; cursor: pointer;
}
button:hover { background: #1d4ed8; }
.bottom { text-align: center; margin-top: 20px; line-height: 1.8; }
a { color: #2563eb; }
@media(max-width: 500px) {
    nav { padding: 16px 5%; }
    .card { margin: 35px 15px; padding: 24px; }
}
</style>
</head>

<body>
<nav>
    <div class="logo">Local Service Finder</div>
    <div><a href="index.jsp">Home</a></div>
</nav>

<div class="card">
    <h1>Welcome Back!</h1>
    <p class="subtitle">Login to continue to your account.</p>

    <form action="${pageContext.request.contextPath}/login"
      method="post">

    <input type="email" name="email"
           placeholder="Email" required>

    <input type="password_hash" name="password_hash"
           placeholder="Password" required>

    <button type="submit">Login</button>
</form>

<p style="color:red">${errorMessage}</p>
    

    <div class="bottom">
        New customer? <a href="customer-register.jsp">Create an account</a><br>
        Want to offer services? <a href="provider_register.jsp">Register as a provider</a>
    </div>
</div>
</body>
</html>

