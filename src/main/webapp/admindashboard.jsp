<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <style>
        body {
            background: #f5f5f5;
            padding: 3rem;
        }
        .dashboard {
            max-width: 700px;
            margin: auto;
        }
        .card {
            margin-bottom: 1.5rem;
        }
    </style>
</head>
<body>
<div class="dashboard">
    <h2 class="text-center mb-4">Admin Dashboard</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="card text-bg-primary text-center p-4">
                <a href="adminviewusers.jsp" class="text-white text-decoration-none fw-bold">View Users</a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-bg-success text-center p-4">
                <a href="viewbookings.jsp" class="text-white text-decoration-none fw-bold">View Events</a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-bg-warning text-center p-4">
                <a href="viewpayments.jsp" class="text-dark text-decoration-none fw-bold">View Payments</a>
            </div>
        </div>
    </div>
    <div class="text-center mt-4">
        <a href="logout.jsp" class="btn btn-outline-secondary">Logout</a>
    </div>
</div>
</body>
</html>
