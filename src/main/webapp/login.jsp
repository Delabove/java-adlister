<%--
  Created by IntelliJ IDEA.
  User: delayne
  Date: 6/4/20
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String userName = (request.getParameter("username") != null) ? request.getParameter("username")  : "";
 String password = (request.getParameter("password") != null) ? request.getParameter("password")  : "";

    if (userName == "admin"
            && password == "password") {
        response.sendRedirect("/profile.jsp");
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%! String badWord = "admin"; %>--%>
<form action="/login.jsp" method="post">
    <p>Path: <%= request.getRequestURL() %></p>
    <p>Query String: <%= request.getQueryString() %></p>

    Name:<input type="text" name="username"/><br/><br/>
    <p>"name" parameter: <%= request.getParameter("name") %></p>
    Password:<input type="password" name="userpass"/><br/><br/>
    <p>"password" parameter: <%= request.getParameter("password") %></p>
    <input type="submit" value="login"/>
</form>


</body>
</html>
