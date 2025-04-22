<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Main Page</title>

  <!-- Bootstrap CSS (CDN) -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-image: url('images/background.jpg'); /* Set your image path here */
      background-size: cover; /* Ensures the background image covers the whole screen */
      background-position: center center; /* Centers the background image */
      color: #333;
      height: 100vh; /* Full viewport height */
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding: 20px;
    }

    h1 {
      color: #4e73df;
      margin-bottom: 20px;
      text-align: center;
    }

    .container {
      max-width: 900px;
      margin: 0 auto;
      background-color: rgba(255, 255, 255, 0.8); /* Light background for readability */
      padding: 30px;
      border-radius: 10px;
      text-align: center;
    }

    .button-container {
      display: flex;
      flex-wrap: wrap; /* Allows wrapping on smaller screens */
      justify-content: center;
      gap: 20px; /* Spacing between buttons */
      margin-top: 30px;
    }

    .button-container .btn {
      font-weight: bold;
      padding: 12px 30px;
      font-size: 16px;
      text-transform: uppercase;
      flex: 1; /* Makes buttons flexible */
      min-width: 200px; /* Ensures buttons have a minimum width */
    }

    .btn-custom {
      background-color: #4e73df;
      color: white;
      border-radius: 10px;
    }

    .btn-custom:hover {
      background-color: #375aeb;
    }

    .btn-cancel {
      background-color: #e74a3b;
      color: white;
      border-radius: 10px;
    }

    .btn-cancel:hover {
      background-color: #c0392b;
    }

    .logout-btn {
      background-color: #28a745;
      color: white;
      padding: 10px 20px;
      border-radius: 8px;
      font-weight: bold;
      display: inline-block;
      margin-top: 20px;
    }

    .logout-btn:hover {
      background-color: #218838;
    }

    .alert {
      margin-top: 20px;
    }
  </style>
</head>
<body>

<div class="container">
  <h1>Welcome to the Photo Studio</h1>

  <%
    // Retrieve session
    HttpSession ss = request.getSession(false); // Using 'false' to not create a new session if one doesn't exist
    String userEmail = (String) ss.getAttribute("userEmail");

    if (userEmail != null) {
  %>
  <p>Hello, <%= userEmail %>! Welcome to the main page.</p>

  <!-- Buttons for features -->
  <div class="button-container">
    <a href="booknow.jsp" class="btn btn-custom">Book Now</a>
    <a href="viewbookings.jsp" class="btn btn-custom">View Booking</a>
    <a href="makepayment.jsp" class="btn btn-custom">Make Payment</a>
    <a href="cancelbooking.jsp" class="btn btn-cancel">Cancel Booking</a>
  </div>

  <a href="logout.jsp" class="logout-btn">Log Out</a>
  <%
  } else {
  %>
  <p>You are not logged in. <a href="signin.jsp">Sign In</a></p>
  <%
    }
  %>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
