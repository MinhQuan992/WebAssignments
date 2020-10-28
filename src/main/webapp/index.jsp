<%--
  Created by IntelliJ IDEA.
  User: Vo Tran Minh Quan
  Date: 10/16/2020
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Vo Tran Minh Quan's Assignments</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<header>
    <img src="Images/banner.png">
    <table class="menu">
        <tbody>
        <tr>
            <td class="cell" style="background-color: red">
                <a class="link" style="color: white" href=""><b>Home</b></a>
            </td>

            <td class="cell">
                <a class="link" href="assignments.jsp">Assignments</a>
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
    <h1>Jakarta Server Pages</h1>
    <b>Jakarta Server Pages</b> (<b>JSP</b>; formerly JavaServer Pages) is a collection of technologies that helps software developers create dynamically generated web pages based on HTML, XML, SOAP, or other document types. Released in 1999 by Sun Microsystems, JSP is similar to PHP and ASP, but uses the Java programming language.
    <br>
    <br>
    To deploy and run Jakarta Server Pages, a compatible web server with a servlet container, such as Apache Tomcat or Jetty, is required.
    <h3>Overview</h3>
    Architecturally, JSP may be viewed as a high-level abstraction of Java servlets. JSPs are translated into servlets at runtime, therefore JSP is a Servlet; each JSP servlet is cached and re-used until the original JSP is modified.
    <br>
    <br>
    Jakarta Server Pages can be used independently or as the view component of a server-side model–view–controller design, normally with JavaBeans as the model and Java servlets (or a framework such as Apache Struts) as the controller. This is a type of Model 2 architecture.
    <br>
    <br>
    JSP allows Java code and certain predefined actions to be interleaved with static web markup content, such as HTML. The resulting page is compiled and executed on the server to deliver a document. The compiled pages, as well as any dependent Java libraries, contain Java bytecode rather than machine code. Like any other .jar or Java program, code must be executed within a Java virtual machine (JVM) that interacts with the server's host operating system to provide an abstract, platform-neutral environment.
    <br>
    <br>
    JSPs are usually used to deliver HTML and XML documents, but through the use of OutputStream, they can deliver other types of data as well.
    <br>
    <br>
    The Web container creates JSP implicit objects like request, response, session, application, config, page, pageContext, out and exception. JSP Engine creates these objects during translation phase.
    <h3>Compiler</h3>
    A JavaServer Pages compiler is a program that parses JSPs, and transforms them into executable Java Servlets. A program of this type is usually embedded into the application server and run automatically the first time a JSP is accessed, but pages may also be precompiled for better performance, or compiled as a part of the build process to test for errors.
    <br>
    <br>
    Some JSP containers support configuring how often the container checks JSP file timestamps to see whether the page has changed. Typically, this timestamp would be set to a short interval (perhaps seconds) during software development, and a longer interval (perhaps minutes, or even never) for a deployed Web application.
    <br>
    <br>
    <p style="text-align: right"><i>(Source: Wikipedia)</i></p>
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
