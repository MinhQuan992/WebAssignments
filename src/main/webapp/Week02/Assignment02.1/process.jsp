<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 10/15/2020
  Time: 10:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Assignment 02.1</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Week02/Assignment02.1/style.css">
</head>
<body>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    double pricePerWidget = 9.95;
    try
    {
        int numberToPurchase = Integer.parseInt(request.getParameter("quantity"));
        if (numberToPurchase <= 0)
        {
%>
            <p class="message">You must enter a positive integer number!</p>
<%
        }
        else
        {
            double total = pricePerWidget*numberToPurchase;
%>
            <h1 class="page-title">Order Confirmation</h1>
            <p class="message">Thank you for your order of <%=numberToPurchase%> widgets, <%=name%>!</p>
            <p class="message">At $<%=pricePerWidget%>, your bill will be $<%=total%>.</p>
            <p class="message">You will shortly receive an email confirmation at <%=email%>!</p>
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
