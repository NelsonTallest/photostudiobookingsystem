<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 22/04/2025
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  session.invalidate();
  response.sendRedirect("index.jsp");
%>


</body>
</html>
