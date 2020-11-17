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
    <title>Assignment 01</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Week02/Assignment01/style.css">
</head>
<body>
<%
    try
    {
        int numberOfWidgets = Integer.parseInt(request.getParameter("quantity"));
        if (numberOfWidgets <= 0)
        {
%>
            <p class="message">You must enter a positive integer number!</p>
<%
        }
        else
        {
%>
            <p class="message">Thank you for your order of <strong><%=numberOfWidgets%> widgets!</strong></p>
            <p class="message"><strong>We wish you a great day<3</strong></p>
<%
        }
    }
    catch (Exception exception)
    {
%>
        <p class="message">You must enter a positive integer number!</p>
<%
    }
%>
</body>
</html>
