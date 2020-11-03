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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Week04/Exercise01/style.css">
</head>
<body>
<%
    String name = request.getParameter("customerName");
    if (name == null) name = "";
    String nameError = (String)request.getAttribute("nameError");
    if (nameError == null) nameError = "";

    String phone = request.getParameter("customerPhone");
    if (phone == null) phone = "";
    String phoneError = (String)request.getAttribute("phoneError");
    if (phoneError == null) phoneError = "";

    String email = request.getParameter("customerEmail");
    if (email == null) email = "";
    String emailError = (String)request.getAttribute("emailError");
    if (emailError == null) emailError = "";

    String quantity = request.getParameter("quantity");
    if (quantity == null) quantity = "";
    String quantityError = (String)request.getAttribute("quantityError");
    if (quantityError == null) quantityError = "";

    String card = request.getParameter("cardNumber");
    if (card == null) card = "";
    String cardError = (String)request.getAttribute("cardError");
    if (cardError == null) cardError = "";

    String month = request.getParameter("month");
    if (month == null) month = "1";

    String year = request.getParameter("year");
    if (year == null) year = "2020";

    String monthYearError = (String)request.getAttribute("monthYearError");
    if (monthYearError == null) monthYearError = "";

    String processor = request.getParameter("processor");
    if (processor == null) processor = "Celeron D";

    String monitor = request.getParameter("monitor");

    String[] peripherals = request.getParameterValues("peripherals");
%>
<%!
    public boolean find(String[] list, String target)
    {
        if (list == null)
            return false;
        for (int i = 0; i < list.length; i++)
            if (target.equals(list[i]))
                return true;
        return false;
    }
%>
<h1 style="text-align: center; font-family: sans-serif">ENTER YOUR INFORMATION</h1>
<form id="frmInfo" name="info" method="get" action="${pageContext.request.contextPath}/Validate">
    <table id="customer-info">
        <tbody>
        <tr>
            <td class="label-cell">Your name:</td>
            <td>
                <input class="textbox" type="text" name="customerName"
                    <%
                        if (!name.equals(""))
                        {
                    %>
                            value="<%=name%>"
                    <%
                        }
                        else
                        {
                    %>
                            placeholder="Ex.: Nguyen Van A"
                    <%
                        }
                        if (!nameError.equals(""))
                        {
                    %>
                            style="border-color: red"
                    <%
                        }
                    %>
                required>
            </td>
            <td class="require-cell">*&nbsp; &nbsp;<%=nameError%></td>
        </tr>

        <tr>
            <td class="label-cell">
                Your phone:
                <br>
                (in format XXX-XXX-XXXX)
            </td>
            <td>
                <input class="textbox" type="text" name="customerPhone"
                    <%
                        if (!phone.equals(""))
                        {
                    %>
                            value="<%=phone%>"
                    <%
                        }
                        else
                        {
                    %>
                            placeholder="Ex.: 012-345-6789"
                    <%
                        }
                        if (!phoneError.equals(""))
                        {
                    %>
                            style="border-color: red"
                    <%
                        }
                    %>
                required>
            </td>
            <td class="require-cell">*&nbsp; &nbsp;<%=phoneError%></td>
        </tr>

        <tr>
            <td class="label-cell">Your email:</td>
            <td>
                <input class="textbox" type="email" name="customerEmail"
                    <%
                        if (!email.equals(""))
                        {
                    %>
                            value="<%=email%>"
                    <%
                        }
                        else
                        {
                    %>
                            placeholder="Ex.: someone@example.com"
                    <%
                        }
                        if (!emailError.equals(""))
                        {
                    %>
                            style="border-color: red"
                    <%
                        }
                    %>
                >
            </td>
            <td class="require-cell">&nbsp; &nbsp;<%=emailError%></td>
        </tr>

        <tr>
            <td class="label-cell">
                Number to purchase:
                <br>
                (at least 1)
            </td>
            <td>
                <input class="textbox" type="text" name="quantity"
                    <%
                        if (!quantity.equals(""))
                        {
                    %>
                            value="<%=quantity%>"
                    <%
                        }
                        else
                        {
                    %>
                            placeholder="Ex.: 1"
                    <%
                        }
                        if (quantityError != "")
                        {
                    %>
                            style="border-color: red"
                    <%
                        }
                    %>
                required>
            </td>
            <td class="require-cell">*&nbsp; &nbsp;<%=quantityError%></td>
        </tr>

        <tr>
            <td class="label-cell">Credit card number:</td>
            <td>
                <input class="textbox" type="text" name="cardNumber"
                    <%
                        if (!card.equals(""))
                        {
                    %>
                            value="<%=card%>"
                    <%
                        }
                        else
                        {
                    %>
                            placeholder="Ex.: 1234567890123456"
                    <%
                        }
                        if (cardError != "")
                        {
                    %>
                            style="border-color: red"
                    <%
                        }
                    %>
                required>
            </td>
            <td class="require-cell">*&nbsp; &nbsp;<%=cardError%></td>
        </tr>

        <tr>
            <td class="label-cell" style="padding-top: 10px">Credit card's expiration date:</td>
            <td style="padding-top: 10px">
                <select class="month-year" name="month" style="width: 45px; <%if (!monthYearError.equals("")) {%> border-color: red; <%}%>">
                    <%
                        for (int i = 1; i < 13; i++)
                        {
                    %>
                            <option value="<%=i%>"
                                <%
                                    if (i == Integer.parseInt(month))
                                    {
                                %>
                                        selected
                                <%
                                    }
                                %>
                            ><%=i%></option>
                    <%
                        }
                    %>
                </select>
                &nbsp;
                <select class="month-year" name="year" style="width: 70px;  <%if (!monthYearError.equals("")) {%> border-color: red; <%}%>">
                    <%
                        for (int i = 2020; i < 2041; i++)
                        {
                    %>
                            <option value="<%=i%>"
                                <%
                                    if (i == Integer.parseInt(year))
                                    {
                                %>
                                        selected
                                <%
                                    }
                                %>
                            ><%=i%></option>
                    <%
                        }
                    %>
                </select>
            </td>
            <td class="require-cell" style="padding-top: 10px">*&nbsp;&nbsp;<%=monthYearError%></td>
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
                    <input type="radio" name="processor" value="Celeron D"
                        <%
                            if (processor.equals("Celeron D"))
                            {
                        %>
                                checked
                        <%
                            }
                        %>
                    >
                </label>Celeron D
                <br>
                <label>
                    <input type="radio" name="processor" value="Pentium IV"
                        <%
                            if (processor.equals("Pentium IV"))
                            {
                        %>
                                checked
                        <%
                            }
                        %>
                    >
                </label>Pentium IV
                <br>
                <label>
                    <input type="radio" name="processor" value="Pentium D"
                        <%
                            if (processor.equals("Pentium D"))
                            {
                        %>
                                checked
                        <%
                            }
                        %>
                    >
                </label>Pentium D
            </td>
            <td class="table-cell">
                <label>
                    <input type="checkbox" name="monitor"
                        <%
                            if (monitor != null)
                            {
                        %>
                                checked
                        <%
                            }
                        %>
                    >
                </label>Monitor
                <br>
                <label>
                    <select name="peripherals" size="numvisible" style="font-size: 20px" multiple>
                        <option value="Camera"
                            <%
                                if (find(peripherals, "Camera"))
                                {
                            %>
                                    selected
                            <%
                                }
                            %>
                        >Camera</option>
                        <option value="Printer"
                            <%
                                if (find(peripherals, "Printer"))
                                {
                            %>
                                    selected
                            <%
                                }
                            %>
                        >Printer</option>
                        <option value="Scanner"
                            <%
                                if (find(peripherals, "Scanner"))
                                {
                            %>
                                    selected
                            <%
                                }
                            %>
                        >Scanner</option>
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
