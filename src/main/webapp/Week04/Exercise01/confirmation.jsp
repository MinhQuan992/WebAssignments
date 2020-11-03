<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 11/3/2020
  Time: 9:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Confirmation</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Week04/Exercise01/style.css">
</head>
<body>
<%
    String name = request.getParameter("customerName");
    String phone = request.getParameter("customerPhone");
    String email = request.getParameter("customerEmail");
%>
<h1 style="text-align: center">Order Confirmation</h1>
<p class="message">Thank you for purchasing at our store, <%=name%>!</p>
<%
    if (email.equals(""))
    {
%>
        <p class="message">We will contact you at your phone number <%=phone%> for delivery.</p>
<%
    }
    else
    {
%>
        <p class="message">We will give you an e-invoice at your email <%=email%>.</p>
<%
    }
%>
<p class="message">If you have any questions, feel free to contact us at <i>happystore@gmail.com</i>.</p>
<p class="message">We wish you a great day<3</p>
</body>
</html>
