<!DOCTYPE html>
<html>
<head>
    <title>Pixel Haven | Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body class="bg-primary">
<div class="login-container">
    <div class="login-image">
        <img src="images/loginreg.jpg" alt="Register Illustration">
    </div>

    <div class="login-form">
        <div class="text-end">
            <small>Already a member? <a href="index.jsp">Sign in</a></small>
        </div>

        <h2 class="mt-2 fw-bold">Create your Account</h2>
        <p class="text-muted mb-3">Join the Pixel Haven community!</p>

        <form action="RegistrationServlet" method="post">
            <label class="mb-1">Full Name</label>
            <input type="text" name="fullName" class="form-control mb-2" placeholder="Enter name" required>

            <label class="mb-1">Email</label>
            <input type="email" name="email" class="form-control mb-2" placeholder="name@example.com" required>

            <label class="mb-1">Password</label>
            <input type="password" name="password" class="form-control mb-2" placeholder="Create password" required>

            <button type="submit" class="btn-login mt-2">Register</button>
        </form>
    </div>
</div>
</body>
</html>