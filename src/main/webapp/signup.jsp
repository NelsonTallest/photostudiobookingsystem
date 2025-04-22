<%@ page import="dao.UserDAO" %>
<%@ page import="model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String message = "";
  if (request.getMethod().equalsIgnoreCase("post")) {
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    User user = new User();
    user.setUsername(username);
    user.setEmail(email);
    user.setPassword(password);

    UserDAO dao = new UserDAO();
    if (dao.registerUser(user)) {
      response.sendRedirect("signin.jsp");
    } else {
      message = "User already exists!";
    }
  }
%>
<!DOCTYPE html>
<html>
<head>
  <title>Sign Up</title>
</head>
<body>
<h2>Sign Up</h2>
<form method="post">
  <input type="text" name="username" required placeholder="Username"/><br/>
  <input type="email" name="email" required placeholder="Email"/><br/>
  <input type="password" name="password" required placeholder="Password"/><br/>
  <input type="submit" value="Register"/>
</form>
<p><%= message %></p>
</body>
</html>
