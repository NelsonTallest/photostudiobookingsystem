<%@ page import="adminDAO.AdminDAO" %>
<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin - View Users</title>
    <style>
        body { font-family: Arial; padding: 20px; }
        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background: #333;
            color: #fff;
        }
        tr:nth-child(even) { background-color: #f9f9f9; }
    </style>
</head>
<body>
<h2 style="text-align:center;">All Registered Users</h2>

<%
    AdminDAO adminDAO = new AdminDAO();
    List<User> users = adminDAO.getAllUsers();
%>

<table>
    <tr>

        <th>Email</th>
    </tr>
    <%
        for (User user : users) {
    %>
    <tr>

        <td><%= user.getEmail() %></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
