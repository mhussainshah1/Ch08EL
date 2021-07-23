<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP - Hello World</title>
    <link href="styles/main.css" rel="stylesheet" type="text/css">
</head>
<body>
    <h1>Join our email list</h1>
    <p>To jon our email list, enter your name and email address below.</p>

    <c:if test="${message != null}">
        <p><i>${message}</i></p>
    </c:if>

    <form action="emailList" method="post">
        <input name="action" type="hidden" value="add">

        <label class="pad_top" for="email">Email:</label>
        <input id="email" name="email" required type="email"><br>

        <label class="pad_top" for="firstname">First Name:</label>
        <input id="firstname" name="firstName" required type="text"><br>

        <label class="pad_top" for="lastname">Last Name:</label>
        <input id="lastname" name="lastName" required type="text"><br>

        <label>&nbsp;</label>
        <input class="margin_left" type="submit" value="Join Now">
    </form>

    <p><a href="EL-Standard-JSP-Tag.jsp">JSP Expression Language</a></p>
    <p><a href="implicit-object.html">implicit object</a></p>
    <p><a href=""></a></p>
    <p><a href=""></a></p>
    <p><a href=""></a></p>
    <p><a href="arthimatic-el-operator.jsp">Arthematic EL Operator</a></p>
    <p><a href=""></a></p>
    <p><a href=""></a></p>
    <p><a href=""></a></p>
    <p><a href=""></a></p>
    <p><a href=""></a></p>
    <p><a href=""></a></p>
    <p><a href=""></a></p>
</body>
</html>