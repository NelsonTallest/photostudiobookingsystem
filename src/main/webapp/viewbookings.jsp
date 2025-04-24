<%@ page import="java.util.List" %>
<%@ page import="model.Booking" %>
<%@ page import="dao.BookingDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>View Bookings</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
      padding: 2rem;
    }
    h2 {
      text-align: center;
      margin-bottom: 2rem;
    }
    .table-container {
      display: flex;
      justify-content: center;
    }
    .table {
      background-color: white;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
  </style>
</head>
<body>

<h2>All Booked Events</h2>

<div class="table-container">
  <table class="table table-bordered table-striped table-hover w-75">
    <thead class="table-dark">
    <tr>
      <th>Full Name</th>
      <th>Event Date</th>
      <th>Event Type</th>
      <th>Duration</th>
    </tr>
    </thead>
    <tbody>
    <%
      BookingDAO dao = new BookingDAO();
      List<Booking> bookings = dao.getAllBookings();

      if (bookings != null && !bookings.isEmpty()) {
        for (Booking booking : bookings) {
    %>
    <tr>
      <td><%= booking.getFullName() %></td>
      <td><%= booking.getEventDate() %></td>
      <td><%= booking.getDuration() %></td>
      <td><%= booking.getEventType() %></td>
    </tr>
    <%
      }
    } else {
    %>
    <tr>
      <td colspan="4" class="text-center">No bookings found.</td>
    </tr>
    <%
      }
    %>
    </tbody>
  </table>
</div>

</body>
</html>
