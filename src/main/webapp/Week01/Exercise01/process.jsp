<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 10/15/2020
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thank you!</title>
</head>
<body>
<%
    int numberOfWidgets = Integer.parseInt(request.getParameter("quantity"));
%>

<%
    if (numberOfWidgets == 0) {
%>
<p>Thank you for visiting our store! We wish you a great day!</p>
<%
} else {
%>
<p>Thank you for your order of <strong><%=numberOfWidgets%> widgets!</strong></p>
<p><strong>We wish you a great day<3</strong></p>
<%
    }
%>
</body>
</html>
