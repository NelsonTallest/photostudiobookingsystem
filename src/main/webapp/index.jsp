<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Photo Studio Booking</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('images/studio2.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: white;
            padding-top: 60px;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.7);
        }

        .content {
            text-align: center;
            margin-top: 100px;
        }

        .btn-custom {
            width: 150px;
            margin: 10px;
        }

        .section {
            padding: 60px 20px;
            background-color: rgba(0, 0, 0, 0.6);
            margin-top: 50px;
            border-radius: 10px;
        }

        input, textarea {
            margin-top: 10px;
        }
    </style>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">PhotoStudio</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="signin.jsp">Login</a></li>
                <li class="nav-item"><a class="nav-link" href="signup.jsp">Signup</a></li>
                <li class="nav-item"><a class="nav-link" href="adminlogin.jsp">Admin</a></li>
                <li class="nav-item"><a class="nav-link" href="#about">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact">Contact Us</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<div class="container content">
    <h1 class="display-4 fw-bold">Welcome to the Photo Studio</h1>
    <p class="lead">Book your professional photo shoots with ease and style!</p>
    <div>
        <a href="signin.jsp" class="btn btn-light btn-custom">Sign In</a>
        <a href="signup.jsp" class="btn btn-outline-light btn-custom">Sign Up</a>
    </div>
</div>

<!-- About Section -->
<div class="container section" id="about">
    <h2>About Our Event Booking</h2>
    <p>
        Our Photo Studio offers seamless online booking for various events such as birthdays, weddings,
        corporate events, and more. With just a few clicks, reserve your desired slot and let us capture
        your best moments with precision and creativity.
    </p>
</div>

<!-- Contact Section -->
<div class="container section" id="contact">
    <h2>Contact Us</h2>
    <form>
        <div class="row mb-3">
            <div class="col-md-6">
                <input type="text" class="form-control" placeholder="Full Name" required>
            </div>
            <div class="col-md-6">
                <input type="email" class="form-control" placeholder="Email" required>
            </div>
        </div>
        <textarea class="form-control" rows="5" placeholder="Your Message" required></textarea>
        <button type="submit" class="btn btn-light mt-3">Send Message</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
