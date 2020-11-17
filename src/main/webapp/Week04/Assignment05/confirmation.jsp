<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 11/3/2020
  Time: 9:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Confirmation</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Week04/Assignment05/style.css">
</head>
<body>
<h1 style="text-align: center">Order Confirmation</h1>
<p class="message">Thank you for purchasing at our store, <c:out value="${name}"/>!</p>
<c:choose>
    <c:when test="${empty email}">
        <p class="message">We will contact you at your phone number <c:out value="${phone}"/> for delivery.</p>
    </c:when>

    <c:otherwise>
        <p class="message">We will give you an e-invoice at your email <c:out value="${email}"/>.</p>
    </c:otherwise>
</c:choose>
<p class="message">If you have any questions, feel free to contact us at <i>happystore@gmail.com</i>.</p>
<p class="message">We wish you a great day<3</p>
</body>
</html>
