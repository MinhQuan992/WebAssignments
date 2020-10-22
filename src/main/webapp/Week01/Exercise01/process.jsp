<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 10/15/2020
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thank you!</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    int numberOfWidgets = Integer.parseInt(request.getParameter("quantity"));
%>

<%
    if (numberOfWidgets == 0) {
%>
<p class="message">Thank you for visiting our store! We wish you a great day!</p>
<%
} else {
%>
<p class="message">Thank you for your order of <strong><%=numberOfWidgets%> widgets!</strong></p>
<p class="message"><strong>We wish you a great day<3</strong></p>
<%
    }
%>
</body>
</html>
