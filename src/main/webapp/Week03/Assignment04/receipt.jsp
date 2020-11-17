<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 10/19/2020
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Confirmation</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Week03/Assignment04/style.css">
</head>
<body>
<h1 style="text-align: center">Order Confirmation</h1>
<p class="message">Thank you for your order of ${quantity} widgets, ${name}!</p>
<p class="message">At ${pricePerUnit}, your bill will be ${cost}.</p>
<p class="message">You will shortly receive an email confirmation at ${email}.</p>
<p class="message"><b>We wish you a great day<3</b></p>
</body>
</html>
