<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 10/19/2020
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Assignment 04</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Week03/Assignment04/style.css">
</head>
<body>
<h1 class="page-title">Widget Order Form</h1>
<form id="frmPurchase" name="purchase" method="get" action="${pageContext.request.contextPath}/TestServlet">
    <table id="info">
        <tr>
            <td>Your name:</td>
            <td><input class="textbox" type="text" name="customerName" placeholder="Ex.: Nguyen Van A"></td>
        </tr>

        <tr>
            <td>Your email:</td>
            <td><input class="textbox" type="email" name="customerEmail" placeholder="Ex.: something@gmail.com"></td>
        </tr>

        <tr>
            <td>Number to purchase:</td>
            <td><input class="textbox" type="text" name="quantity" placeholder="Ex.: 5"></td>
        </tr>
    </table>

    <input id="btnSubmit" type="submit" value="PLACE ORDER">
</form>
</body>
</html>
