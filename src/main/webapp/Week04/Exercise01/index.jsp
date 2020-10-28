<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 10/28/2020
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Exercise 1</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1 style="text-align: center; font-family: sans-serif">ENTER YOUR INFORMATION</h1>
<form id="frmInfo" name="info" method="get" action="">
    <table id="customer-info">
        <tbody>
        <tr>
            <td class="label-cell">Your name:</td>
            <td><input class="textbox" type="text" name="customerName" placeholder="Ex.: Nguyen Van A" required></td>
            <td class="require-cell">*</td>
        </tr>

        <tr>
            <td class="label-cell">
                Your phone:
                <br>
                (in format XXX-XXX-XXXX)
            </td>
            <td><input class="textbox" type="text" name="customerPhone" placeholder="Ex.: 097-123-4567" required></td>
            <td class="require-cell">*</td>
        </tr>

        <tr>
            <td class="label-cell">Your email:</td>
            <td><input class="textbox" type="email" name="customerEmail" placeholder="Ex.: something@gmail.com"></td>
            <td class="require-cell"></td>
        </tr>

        <tr>
            <td class="label-cell">
                Number to purchase:
                <br>
                (at least 1)
            </td>
            <td><input class="textbox" type="text" name="quantity" placeholder="Ex.: 5" required></td>
            <td class="require-cell">*</td>
        </tr>

        <tr>
            <td class="label-cell">Credit card number:</td>
            <td><input class="textbox" type="text" name="cardNumber" placeholder="Ex.: 1234567890123456" required></td>
            <td class="require-cell">*</td>
        </tr>

        <tr>
            <td class="label-cell" style="padding-top: 10px">Credit card's expiration date:</td>
            <td style="padding-top: 10px">
                <select class="month-year" name="month" style="width: 45px">
                    <%
                        for (int i = 1; i < 13; i++)
                        {
                    %>
                            <option value="<%=i%>"><%=i%></option>
                    <%
                        }
                    %>
                </select>
                &nbsp;
                <select class="month-year" name="year">
                    <%
                        for (int i = 2020; i < 2041; i++)
                        {
                    %>
                            <option value="<%=i%>"><%=i%></option>
                    <%
                        }
                    %>
                </select>
            </td>
            <td class="require-cell" style="padding-top: 10px">*</td>
        </tr>
        </tbody>
    </table>

    <table id="purchase-info">
        <thead>
        <tr>
            <td class="table-cell"><p style="text-align: center"><b>Processor</b></p></td>
            <td class="table-cell"><p style="text-align: center"><b>Accessories</b></p></td>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td class="table-cell">
                <label>
                    <input type="radio" name="processor" value="Celeron D">
                </label>Celeron D
                <br>
                <label>
                    <input type="radio" name="processor" value="Pentium IV">
                </label>Pentium IV
                <br>
                <label>
                    <input type="radio" name="processor" value="Pentium D">
                </label>Pentium D
            </td>
            <td class="table-cell">
                <label>
                    <input type="checkbox" name="monitor">
                </label>Monitor
                <br>
                <label>
                    <select name="peripherals" size="numvisible" style="font-size: 20px" multiple>
                        <option value="Camera">Camera</option>
                        <option value="Printer">Printer</option>
                        <option value="Scanner">Scanner</option>
                    </select>
                </label>
            </td>
        </tr>
        </tbody>
    </table>

    <input id="btnSubmit" type="submit" value="CONFIGURE">
</form>
</body>
</html>
