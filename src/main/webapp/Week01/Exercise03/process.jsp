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
<h1>Order Summary:</h1>
<br>
<table id="order-summary">
    <tr>
        <td><p style="text-align: center"><b>Processor</b></p></td>
        <td><%=processor%></td>
    </tr>

    <tr>
        <td><p style="text-align: center"><b>Accessories</b></p></td>
        <td>
            <%
                if (monitor == null && accessories == null)
                {
            %>
                    <p>No accessory selected</p>
            <%
                }
                else
                {
                    if (monitor != null)
                    {
            %>
                        <p>Monitor</p>
                        <br>
            <%
                    }

                    if (accessories != null)
                    {
                        for (int i = 0; i < accessories.length; i++)
                        {
            %>
                            <%=accessories[i]%>
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
