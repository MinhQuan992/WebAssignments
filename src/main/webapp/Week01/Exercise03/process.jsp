<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 10/15/2020
  Time: 11:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Summary</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    String processor = request.getParameter("processor");
    String monitor = request.getParameter("monitor");
    String[] accessories = request.getParameterValues("peripherals");

    if (processor == null)
    {
        processor = "No processor selected";
    }
%>
<h1 style="text-align: center">Order Summary</h1>
<table id="order-summary">
    <tr>
        <td class="table-head table-two-cell"><p style="text-align: center"><b>Processor</b></p></td>
        <td class="table-two-cell">&nbsp;<%=processor%></td>
    </tr>

    <tr>
        <td class="table-head table-two-cell"><p style="text-align: center"><b>Accessories</b></p></td>
        <td class="table-two-cell">
            <%
                if (monitor == null && accessories == null)
                {
            %>
                    <p>&nbsp;No accessory selected</p>
            <%
                }
                else
                {
                    if (monitor != null)
                    {
            %>
                        <p>&nbsp;Monitor</p>
            <%
                    }

                    if (accessories != null)
                    {
                        for (int i = 0; i < accessories.length; i++)
                        {
            %>
                            &nbsp;<%=accessories[i]%>
                            <br>
            <%
                        }
                    }
                }
            %>
        </td>
    </tr>
</table>
</body>
</html>
