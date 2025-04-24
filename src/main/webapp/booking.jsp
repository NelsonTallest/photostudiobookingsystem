<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpServlet, jakarta.servlet.http.HttpServletRequest, jakarta.servlet.http.HttpServletResponse" %>
<%@ page import="dao.BookingService" %>
<%@ page import="model.Booking" %>

<html>
<head>
  <title>Book Photo Studio</title>
  <!-- Add Bootstrap for styling -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
  <h2>Book a Session</h2>

  <%
    String message = "";
    if ("POST".equalsIgnoreCase(request.getMethod())) {
      String fullName = request.getParameter("fullName");
      String eventDate = request.getParameter("eventDate");
      String eventType = request.getParameter("eventType");
      String duration = request.getParameter("duration");

      BookingService bookingService = new BookingService();
      boolean isBooked = bookingService.makeBooking(fullName, eventDate, eventType, duration);

      if (isBooked) {
        message = "Booking successful!";
      } else {
        message = "Booking already exists for the selected event date.";
      }
    }
  %>

  <!-- Display Message -->
  <div class="alert alert-info"><%= message %></div>

  <form action="booking.jsp" method="post">
    <div class="mb-3">
      <label for="fullName" class="form-label">Full Name</label>
      <input type="text" class="form-control" id="fullName" name="fullName" required>
    </div>
    <div class="mb-3">
      <label for="eventDate" class="form-label">Event Date</label>
      <input type="date" class="form-control" id="eventDate" name="eventDate" required>
    </div>
    <div class="mb-3">
      <label for="eventType" class="form-label">Duration</label>
      <input type="number" class="form-control" id="duration" name="duration" required>
    </div>
    <div class="mb-3">
      <label for="duration" class="form-label">Event Type (hours)</label>
      <input type="text" class="form-control" id="eventType" name="eventType" required>
    </div>
    <button type="submit" class="btn btn-primary">Submit Booking</button>
  </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
