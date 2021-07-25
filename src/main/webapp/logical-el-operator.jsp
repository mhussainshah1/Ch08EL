<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logical Operators</title>
    <link href="styles/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Logical operators</h1>
<table>
    <tr>
        <th><b>Example</b></th>
        <th><b>Result</b></th>
    </tr>
    <tr>
        <td>"s1"=="s1" && 4 > 3</td>
        <td>${"s1"=="s1" && 4 > 3}</td>
    </tr>
    <tr>
        <td>"s1"=="s1" and 4 > 3</td>
        <td>${"s1"=="s1" and 4 > 3}</td>
    </tr>
    <tr>
        <td>"s1"=="s1" && 4 < 3</td>
        <td>${"s1"=="s1" && 4 < 3}</td>
    </tr>
    <tr>
        <td>"s1"=="s1" || 4 < 3</td>
        <td>${"s1"=="s1" || 4 < 3}</td>
    </tr>
    <tr>
        <td>"s1" != "s1" || 4 < 3</td>
        <td>${"s1" != "s1" || 4 < 3}</td>
    </tr>
    <tr>
        <td>"s1" != "s1" or 4 < 3</td>
        <td>${"s1" != "s1" or 4 < 3}</td>
    </tr>
    <tr>
        <td>!true</td>
        <td>${!true}</td>
    </tr>
    <tr>
        <td>not true</td>
        <td>${not true}</td>
    </tr>
</table>
<h1>Other operators</h1>
<table>
    <tr>
        <th><b>Example</b></th>
        <th><b>Result</b></th>
    </tr>
    <tr>
        <td>empty firstName</td>
        <td>${empty firstName}</td>
    </tr>
    <tr>
        <td>true ? "s1" : "s2"</td>
        <td>${true ? "s1" : "s2"}</td>
    </tr>
    <tr>
        <td>false ? "s1" : "s2"</td>
        <td>${false ? "s1" : "s2"}</td>
    </tr>
</table>

</body>
</html>

