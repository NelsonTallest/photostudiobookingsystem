<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="adminDAO.AdminDAO" %>
<html>
<head>
  <title>Admin Login</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  <style>
    body { display: flex; align-items: center; justify-content: center; height: 100vh; background-color: #e9ecef; }
    .card { width: 400px; padding: 2rem; }
  </style>
</head>
<body>
<div class="card shadow">
  <h3 class="text-center mb-3">Admin Login</h3>
  <form method="post">
    <div class="mb-3">
      <input type="email" name="email" class="form-control" placeholder="Email" required />
    </div>
    <div class="mb-3">
      <input type="password" name="password" class="form-control" placeholder="Password" required />
    </div>
    <div class="d-grid">
      <button type="submit" class="btn btn-primary">Login</button>
    </div>
  </form>
  <%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
      String email = request.getParameter("email");
      String password = request.getParameter("password");

      AdminDAO dao = new AdminDAO();
      if (dao.login(email, password)) {
        session.setAttribute("adminEmail", email);
        response.sendRedirect("admindashboard.jsp");
      } else {
  %>
  <div class="alert alert-danger mt-3 text-center">Invalid credentials.</div>
  <%
      }
    }
  %>
</div>
</body>
</html>
