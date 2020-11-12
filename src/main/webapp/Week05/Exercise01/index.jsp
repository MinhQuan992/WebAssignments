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
    <title>Exercise 01</title>
</head>
<body>
<h1 style="text-align: center">Enter your information</h1>
<form id="info" action="${pageContext.request.contextPath}/SessionServlet" method="get" style="margin-left: 435px">
    <table>
        <tbody>
        <tr>
            <td>
                <p>Your name: </p>
            </td>

            <td>
                <input class="textbox" type="text" name="customerName" required>
            </td>
        </tr>

        <tr>
            <td>
                <p>Your email: </p>
            </td>

            <td>
                <input class="textbox" type="email" name="customerEmail" required>
            </td>
        </tr>
        </tbody>
    </table>

    <input id="btnSelect" type="submit" value="SELECT QUANTITY">
</form>
</body>
</html>
