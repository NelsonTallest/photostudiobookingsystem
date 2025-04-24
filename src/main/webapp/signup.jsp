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
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-image: url('https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    form {
      background-color: rgba(0, 0, 0, 0.6);
      padding: 30px;
      border-radius: 10px;
      display: flex;
      flex-direction: column;
      width: 90%;
      max-width: 400px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    }

    h2 {
      text-align: center;
      color: white;
      margin-bottom: 20px;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      padding: 12px;
      margin: 10px 0;
      border: none;
      border-radius: 5px;
      font-size: 1rem;
    }

    input[type="submit"] {
      background-color: white;
      color: black;
      padding: 12px;
      margin-top: 15px;
      font-weight: bold;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #f0db4f;
    }

    p {
      color: #ffcccc;
      text-align: center;
      margin-top: 10px;
    }

    @media (max-width: 600px) {
      form {
        padding: 20px;
      }
    }
  </style>
</head>
<body>
<form method="post">
  <h2>Sign Up</h2>
  <input type="text" name="username" required placeholder="Username"/>
  <input type="email" name="email" required placeholder="Email"/>
  <input type="password" name="password" required placeholder="Password"/>
  <input type="submit" value="Register"/>
  <p><%= message %></p>
</form>
</body>
</html>
