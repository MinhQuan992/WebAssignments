<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 11/6/2020
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Assignment 06</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Week05/Assignment06/style.css">
</head>
<body>
<h1 style="text-align: center">Enter your information</h1>
<form id="info" action="${pageContext.request.contextPath}/SessionServlet" method="get">
    <table>
        <tbody>
        <tr>
            <td>
                <p>Your name: </p>
            </td>

            <td>
                <input class="txtInfo" type="text" name="customerName" required>
            </td>
        </tr>

        <tr>
            <td>
                <p>Your email: </p>
            </td>

            <td>
                <input class="txtInfo" type="email" name="customerEmail" required>
            </td>
        </tr>
        </tbody>
    </table>

    <input id="btnSelect" type="submit" value="SELECT QUANTITY">
</form>
</body>
</html>
