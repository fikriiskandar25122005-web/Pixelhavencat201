<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pixel Haven | Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body class="bg-primary">
<div class="login-container">
    <div class="login-image">
        <img src="images/loginreg.jpg" alt="Login Illustration">
    </div>

    <div class="login-form">
        <small class="text-end d-block">Don't have an account? <a href="registration.jsp">Register</a></small>

        <h2 class="mt-5 fw-bold">Welcome Back</h2>
        <p class="text-muted mb-4">Log in to your Pixel Haven account.</p>

        <form action="LoginServlet" method="post">
            <label class="mb-1">Email</label>
            <input type="email" name="email" class="form-control mb-3" placeholder="name@example.com" required>

            <label class="mb-1">Password</label>
            <input type="password" name="password" class="form-control mb-4" placeholder="Enter password" required>

            <button type="submit" class="btn-login">Login</button>
        </form>
    </div>
</div>
</body>
</html>