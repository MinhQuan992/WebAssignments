<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 11/12/2020
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quantity</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Week05/Assignment06/style.css">
</head>
<body>
<%
    if (session.getAttribute("sessionOK") == null)
    {
%>
        <jsp:forward page="session-expired.jsp"></jsp:forward>
<%
    }
%>
<form id="frmQuantity" action="${pageContext.request.contextPath}/Week05/Assignment06/reciept.jsp" method="get">
    <label for="txtQuantity">Number to purchase:</label>
    <input id="txtQuantity" name="quantity" type="text">
    <input type="submit" value="SUBMIT">
</form>
</body>
</html>
