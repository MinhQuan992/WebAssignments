<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 10/28/2020
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Assignment 05</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Week04/Assignment05/style.css">
</head>
<body>
<%
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
                    <c:choose>
                        <c:when test="${not empty name}">
                            value="<c:out value="${name}"/>"
                        </c:when>

                        <c:otherwise>
                            placeholder="Ex.: Nguyen Van A"
                        </c:otherwise>
                    </c:choose>

                    <c:if test="${not empty nameError}">
                       style="border-color: red"
                    </c:if>
                required>
            </td>
            <td class="require-cell">*&nbsp; &nbsp;<c:out value="${nameError}"/></td>
        </tr>

        <tr>
            <td class="label-cell">
                Your phone:
                <br>
                (in format XXX-XXX-XXXX)
            </td>
            <td>
                <input class="textbox" type="text" name="customerPhone"
                    <c:choose>
                        <c:when test="${not empty phone}">
                            value="<c:out value="${phone}"/>"
                        </c:when>

                        <c:otherwise>
                            placeholder="Ex.: 012-345-6789"
                        </c:otherwise>
                    </c:choose>

                    <c:if test="${not empty phoneError}">
                       style="border-color: red"
                    </c:if>
                required>
            </td>
            <td class="require-cell">*&nbsp; &nbsp;<c:out value="${phoneError}"/></td>
        </tr>

        <tr>
            <td class="label-cell">Your email:</td>
            <td>
                <input class="textbox" type="email" name="customerEmail"
                    <c:choose>
                        <c:when test="${not empty email}">
                            value="<c:out value="${email}"/>"
                        </c:when>

                        <c:otherwise>
                            placeholder="Ex.: someone@example.com"
                        </c:otherwise>
                    </c:choose>

                    <c:if test="${not empty emailError}">
                       style="border-color: red"
                    </c:if>
                >
            </td>
            <td class="require-cell">&nbsp; &nbsp;<c:out value="${emailError}"/></td>
        </tr>

        <tr>
            <td class="label-cell">
                Number to purchase:
                <br>
                (at least 1)
            </td>
            <td>
                <input class="textbox" type="text" name="quantity"
                    <c:choose>
                        <c:when test="${not empty quantity}">
                            value="<c:out value="${quantity}"/>"
                        </c:when>

                        <c:otherwise>
                            placeholder="Ex.: 1"
                        </c:otherwise>
                    </c:choose>

                    <c:if test="${not empty quantityError}">
                       style="border-color: red"
                    </c:if>
                required>
            </td>
            <td class="require-cell">*&nbsp; &nbsp;<c:out value="${quantityError}"/></td>
        </tr>

        <tr>
            <td class="label-cell">Credit card number:</td>
            <td>
                <input class="textbox" type="text" name="cardNumber"
                    <c:choose>
                        <c:when test="${not empty cardNumber}">
                            value="<c:out value="${cardNumber}"/>"
                        </c:when>

                        <c:otherwise>
                            placeholder="Ex.: 1234567890123456"
                        </c:otherwise>
                    </c:choose>

                    <c:if test="${not empty cardError}">
                       style="border-color: red"
                    </c:if>
                required>
            </td>
            <td class="require-cell">*&nbsp; &nbsp;<c:out value="${cardError}"/></td>
        </tr>

        <tr>
            <td class="label-cell" style="padding-top: 10px">Credit card's expiration date:</td>
            <td style="padding-top: 10px">
                <select class="month-year" name="month" style="width: 45px; <c:if test="${not empty monthYearError}"> border-color: red; </c:if>">
                    <c:set var="selectedMonth" value="${month}"/>
                    <c:forEach var="month" begin="1" end="12">
                        <c:choose>
                            <c:when test="${selectedMonth == month}">
                                <option value="<c:out value="${month}"/>" selected><c:out value="${month}"/></option>
                            </c:when>

                            <c:otherwise>
                                <option value="<c:out value="${month}"/>"><c:out value="${month}"/></option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
                &nbsp;
                <select class="month-year" name="year" style="width: 70px;  <c:if test="${not empty monthYearError}"> border-color: red; </c:if>">
                    <c:set var="selectedYear" value="${year}"/>
                    <c:forEach var="year" begin="2020" end="2050">
                        <c:choose>
                            <c:when test="${selectedYear == year}">
                                <option value="<c:out value="${year}"/>" selected><c:out value="${year}"/></option>
                            </c:when>

                            <c:otherwise>
                                <option value="<c:out value="${year}"/>"><c:out value="${year}"/></option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
            </td>
            <td class="require-cell" style="padding-top: 10px">*&nbsp;&nbsp;<c:out value="${monthYearError}"/></td>
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
                    <input type="radio" name="processor" value="Celeron D" <%if (processor.equals("Celeron D")){%> checked <%}%>>
                </label>Celeron D
                <br>
                <label>
                    <input type="radio" name="processor" value="Pentium IV" <%if (processor.equals("Pentium IV")){%> checked <%}%>>
                </label>Pentium IV
                <br>
                <label>
                    <input type="radio" name="processor" value="Pentium D" <%if (processor.equals("Pentium D")){%> checked <%}%>>
                </label>Pentium D
            </td>
            <td class="table-cell">
                <label>
                    <input type="checkbox" name="monitor" <%if (monitor != null){%> checked <%}%>>
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
