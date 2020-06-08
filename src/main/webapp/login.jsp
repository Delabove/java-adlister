<%--
  Created by IntelliJ IDEA.
  User: delayne
  Date: 6/4/20
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if(request.getMethod().equalsIgnoreCase("post")) {
        String userName = (request.getParameter("username") != null) ? request.getParameter("username") : "";
        String password = (request.getParameter("password") != null) ? request.getParameter("password") : "";

        if (userName.equals("admin")
                && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>

<html>
<head>
    <jsp:include page="partials/navbar.jsp"></jsp:include>
    <jsp:include page="partials/head.jsp"></jsp:include>
</head>



<body>

<jsp:include page="partials/navbar.jsp" />
<div class="container">
    <h1>Please Log In</h1>
    <form action="/login.jsp" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>

</body>
</html>
