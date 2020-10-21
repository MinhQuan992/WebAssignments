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
    <title>Thank you!</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    double pricePerWidget = 9.95;
    int numberToPurchase = Integer.parseInt(request.getParameter("quantity"));
%>

<%
    if (numberToPurchase == 0) {
%>
<p>Thank you <%=name%> for visiting our store! We wish you a great day!</p>
<%
} else {
%>
<h1 class="page-title">Order Confirmation</h1>
<br>
<p>Thank you for your order of <%=numberToPurchase%> widgets, <%=name%>!</p>
<p>At $<%=pricePerWidget%>, your bill will be $<%=Math.round(pricePerWidget*numberToPurchase)%>.</p>
<p>You will shortly receive an email confirmation at <%=email%>!</p>
<p><strong>We wish you a great day<3</strong></p>
<%
    }
%>
</body>
</html>
