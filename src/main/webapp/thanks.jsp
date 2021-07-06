<%--
  Created by IntelliJ IDEA.
  User: Owner
  Date: 7/5/2021
  Time: 6:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <meta charset="UTF-8">
        <title>Thanks</title>
        <link href="styles/main.css" rel="stylesheet" type="text/css">
</head>
<body>
        <h1>Thanks for joining our email list</h1>
        <%--        EL--%>
        <h1>Expression Language</h1>
        <label>Email:</label>
        <span>${user.email}</span><br>
        <%--        or  --%>
        <span>${sessionScope.user.email}</span><br>
        <%--        or  --%>
        <span>${user["email"]}</span><br>


        <label>First Name:</label>
        <span>${user.firstName}</span><br>
        <label>Last Name:</label>
        <span>${user.lastName}</span> <br>

        <%--        Standard JSP Tag--%>
        <h1>Standard JSP Tag</h1>
        <jsp:useBean id="user" scope="session" class="murach.business.User"/>
        <label>Email:</label>
        <span><jsp:getProperty name="user" property="email"/></span><br>
        <label>First Name:</label>
        <span><jsp:getProperty name="user" property="firstName"/></span><br>
        <label>Last Name:</label>
        <span><jsp:getProperty name="user" property="lastName"/></span><br>

        <h2>Setting property</h2>
        <span><jsp:setProperty name="user" property="lastName" value="John"/> </span>
        <label>Last Name:</label>
        <span><jsp:getProperty name="user" property="lastName"/></span> <br>


        <%--        scope implicit EL objects           --%>
        <p>The current date is ${currentDate}</p>
        <%--        or          --%>
        <p>The current date is ${requestScope.currentDate}</p>

        <%--        [] operator         --%>
        <p>The first color is ${colors[0]}<br>
                The second color is ${colors[1]}</p>

        <p>The first color is ${colors["0"]}<br>
                The second color is ${colors["1"]}</p>

        <p>The first address on our list is ${users[0].email}<br> <%--quotation marks are optional for index of array--%>
                The second address on our list is ${users[1].email}</p>

        <p>The first address on our list is ${users["0"].email}<br>
                The second address on our list is ${users["1"].email}</p>

        <%--        nested property     --%>
        <p>Product code: ${item.product.code}</p>
        <%--        or--%>
        <p>Product code: ${item["product"].code}</p>

        <%--use map attribute [] operator--%>
        <p>First name: ${usersMap[email].firstName}</p>
        <%--this does not work because the attribute is enclosed in quotes        --%>
        <p>First name: ${usersMap["email"].firstName}</p>

</body>
</html>
