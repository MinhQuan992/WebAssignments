<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 11/12/2020
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Confirmation</title>
</head>
<body>
<%
    int quantity = Integer.parseInt(request.getParameter("quantity"));
    double totalCost = quantity * 9.95;
    String name = (String)session.getAttribute("name");
    String email = (String)session.getAttribute("email");
%>
<h1>Order Confirmation</h1>
<p>Thank you for your order of <%=quantity%> widgets, <%=name%>!</p>
<p>Your bill will be <%=totalCost%>.</p>
<p>You will shortly receive an email confirmation at <%=email%>.</p>
</body>
</html>
