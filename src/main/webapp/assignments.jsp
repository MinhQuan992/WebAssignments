<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 10/28/2020
  Time: 8:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Vo Tran Minh Quan's Assignments</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/9636dbf883.js" crossorigin="anonymous"></script>
</head>
<body>
<header>
    <img src="Images/banner.png">
    <table class="menu">
        <tbody>
        <tr>
            <td class="cell">
                <a class="link" href="index.jsp">Home</a>
            </td>

            <td class="cell" style="background-color: red">
                <a class="link" style="color: white" href=""><b>Assignments</b></a>
            </td>

            <td class="cell">
                <a class="link" href="about-me.html">About Me</a>
            </td>

            <td>
                <p style="color: lightseagreen; visibility: hidden">This is a blank cell.</p>
            </td>
        </tr>
        </tbody>
    </table>
</header>

<article>
    <form action="show-assignments.jsp">
        <select name="week" id="week">
            <option value="0">--Choose week--</option>
            <%
                for (int i = 2; i < 5; i++)
                {
            %>
                    <option value="<%=i%>">Week <%=i%></option>
            <%
                }
            %>
        </select>
        &nbsp;
        <input id="btnChoose" type="submit" value="Choose">
    </form>
    <br>
    <hr>
    <blockquote>
        <i class="fas fa-quote-left"></i>&nbsp;WHERE THERE IS A WILL
        <br>
        THERE IS A ROAD!&nbsp;<i class="fas fa-quote-right"></i>
    </blockquote>
    <hr>
    <br>
</article>

<footer>
    &copy; Web Assignments <span class="footer-seperator">|</span> Designed by <a class="fb-link" href="https://www.facebook.com/minhquan992/" target="_blank"><b>Vo Tran Minh Quan</b></a>
    <br>
    <br>
    Ho Chi Minh City University of Technology and Education (HCMUTE)
    <br>
    <br>
    2020
</footer>
</body>
</html>
