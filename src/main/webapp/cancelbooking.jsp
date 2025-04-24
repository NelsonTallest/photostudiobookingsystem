<%@ page import="dao.BookingDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cancel Booking</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f3f4f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .card {
            padding: 2rem;
            width: 400px;
        }
    </style>
</head>
<body>
<div class="card shadow">
    <h3 class="text-center mb-4">Cancel Booking</h3>
    <form method="post">
        <div class="mb-3">
            <label for="duration" class="form-label">Event Type (hours):</label>
            <input type="text" class="form-control" name="duration" id="duration" placeholder="Enter the event type here" required>
        </div>
        <div class="d-grid">
            <button type="submit" class="btn btn-danger">Cancel Booking</button>
        </div>
    </form>

    <%
        String message = "";
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String duration = request.getParameter("duration");

            BookingDAO dao = new BookingDAO();
            boolean deleted = dao.deleteBookingByDuration(duration);

            if (deleted) {
                message = "Booking successfully cancelled.";
            } else {
                message = "No booking found with that duration.";
            }
        }

        if (!message.isEmpty()) {
    %>
    <div class="alert alert-info mt-3 text-center"><%= message %></div>
    <%
        }
    %>
</div>
</body>
</html>
