<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Expression Language</title>
    <link href="styles/main.css" rel="stylesheet" type="text/css">
</head>
<body>
        <h1>EL</h1>
        <label>Email:</label> <span>${user.email}</span><br>
        <label>First Name:</label> <span>${user.firstName}</span><br>
        <label>Last Name:</label> <span>${user.lastName}</span><br>

        <h1>Standard JSP tags</h1>
        <jsp:useBean id="user" scope="session" class="murach.business.User"/>
        <label>Email:</label><span><jsp:getProperty name="user" property="email"/></span><br>
        <label>First Name:</label><span><jsp:getProperty name="user" property="firstName"/></span><br>
        <label>Last Name:</label><span><jsp:getProperty name="user" property="lastName"/></span><br>

        <h2>Setting property</h2>
        <span><jsp:setProperty name="user" property="lastName" value="John"/> </span>
        <label>Last Name:</label><span><jsp:getProperty name="user" property="lastName"/></span>
</body>
</html>
