<%@ page import="java.util.List" %>
<%@ page import="model.Booking" %>
<%@ page import="adminDAO.AdminDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>View Events - Admin Dashboard</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .table-wrapper {
      background: #fff;
      padding: 30px;
      border-radius: 10px;
      margin-top: 40px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h2 {
      margin-bottom: 20px;
      font-weight: 600;
    }
  </style>
</head>
<body>

<div class="container table-wrapper">
  <h2>All Booked Events</h2>
  <table class="table table-bordered table-hover">
    <thead class="thead-dark">
    <tr>
      <th>Full Name</th>
      <th>Event Date</th>
      <th>Event Type</th>
      <th>Duration</th>
    </tr>
    </thead>
    <tbody>
    <%
      AdminDAO dao = new AdminDAO();
      List<Booking> events = dao.getAllEvents();
      for (Booking event : events) {
    %>
    <tr>
      <td><%= event.getFullName() %></td>
      <td><%= event.getEventDate() %></td>
      <td><%= event.getEventType() %></td>
      <td><%= event.getDuration() %></td>
    </tr>
    <%
      }
      if (events.isEmpty()) {
    %>
    <tr>
      <td colspan="4" class="text-center">No events found.</td>
    </tr>
    <%
      }
    %>
    </tbody>
  </table>
</div>

</body>
</html>
