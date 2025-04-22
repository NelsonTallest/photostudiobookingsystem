<%@ page import="dao.UserDAO" %>
<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In - Photo Studio</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #667eea, #764ba2);
            color: white;
            text-align: center;
            padding-top: 100px;
        }
        form {
            background-color: rgba(0,0,0,0.6);
            padding: 40px;
            border-radius: 15px;
            display: inline-block;
        }
        input[type="text"], input[type="password"] {
            width: 250px;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 8px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }
        .error {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
<h1>Sign In</h1>
<form method="post">
    <input type="text" name="email" placeholder="Email" required /><br/>
    <input type="password" name="password" placeholder="Password" required /><br/>
    <input type="submit" name="signin" value="Sign In" />
</form>

<%
    if (request.getParameter("signin") != null) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO userDAO = new UserDAO();
        boolean isValid = userDAO.checkLogin(email, password);

        if (isValid) {
            // Set session attribute (if needed)
            session.setAttribute("userEmail", email);

            // Redirect to main page
            response.sendRedirect("main.jsp");
        } else {
%>
<p class="error">Invalid email or password. Please try again.</p>
<%
        }
    }
%>
</body>
</html>
