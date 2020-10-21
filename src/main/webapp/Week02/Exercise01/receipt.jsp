<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 10/19/2020
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Confirmation</title>
</head>
<body>
<%
    String name = request.getParameter("customerName");
    String email = request.getParameter("customerEmail");
    String quantity = request.getParameter("quantity");
    String totalCost = (String)request.getAttribute("cost");
    String pricePerUnit = (String)request.getAttribute("pricePerUnit");
%>
<h2 style="text-align: center">Order Confirmation</h2>
Thank you for your order of <%=quantity%> widgets, <%=name%>!
<br>
At $<%=pricePerUnit%>, your bill will be $<%=totalCost%>.
<br>
You will shortly receive an email confirmation at <%=email%>.
<br>
<b>We wish you a great day<3</b>
</body>
</html>
