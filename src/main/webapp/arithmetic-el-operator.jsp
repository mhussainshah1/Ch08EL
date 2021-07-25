<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Arithmetic EL operators</title>
    <link href="styles/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Arithmetic EL Operators</h1>
<table>
    <tr>
        <th><b>Example</b></th>
        <th><b>Result</b></th>
    </tr>
    <tr>
        <td>1 + 1</td>
        <td>${1 + 1}</td>
    </tr>
    <tr>
        <td> 17.5 + 10</td>
        <td>${17.5 + 10}</td>
    </tr>
    <tr>
        <td>2.5E3</td>
        <td>${2.5E3}</td>
    </tr>
    <tr>
        <td> 2.5E + 10.4</td>
        <td> ${2.5E3 + 10.4}</td>
    </tr>
    <tr>
        <td>2 - 1</td>
        <td> ${2 - 1}</td>
    </tr>
    <tr>
        <td> 7 * 3</td>
        <td>${7 * 3}</td>
    </tr>
    <tr>
        <td> 1 / 4</td>
        <td>${1 / 4}</td>
    </tr>
    <tr>
        <td>1 div 4</td>
        <td>${1 div 4}</td>
    </tr>
    <tr>
        <td>10 % 8</td>
        <td>${10 % 8}</td>
    </tr>
    <tr>
        <td>10 mod 8</td>
        <td>${10 mod 8}</td>
    </tr>
    <tr>
        <td>1 + 2 * 4</td>
        <td>${1 + 2 * 4}</td>
    </tr>
    <tr>
        <td>(1 + 2) * 4</td>
        <td>${(1 + 2) * 4}</td>
    </tr>
    <tr>
        <td>userID + 1</td>
        <td>${userID + 1}</td>
    </tr>
</table>

<h1>Relational Operators</h1>
<table>
    <tr>
        <td><b>Example</b></td>
        <td><b>Result</b></td>
    </tr>
    <tr>
        <td>"s1"== "s1"</td>
        <td>${"s1"== "s1"}</td>
    </tr>
    <tr>
        <td>"s1" eq "s1"</td>
        <td>${"s1" eq "s1"}</td>
    </tr>
    <tr>
        <td>1 == 1</td>
        <td>${1 == 1}</td>
    </tr>
    <tr>
        <td>1 != 1</td>
        <td>${1 != 1}</td>
    </tr>
    <tr>
        <td>1 ne 1</td>
        <td>${1 ne 1}</td>
    </tr>
    <tr>
        <td>3 < 4</td>
        <td>${3 < 4}</td>
    </tr>
    <tr>
        <td>3 lt 4</td>
        <td>${3 lt 4}</td>
    </tr>
    <tr>
        <td>3 > 4</td>
        <td>${3 > 4}</td>
    </tr>
    <tr>
        <td>3 gt 4</td>
        <td>${3 gt 4}</td>
    </tr>
    <tr>
        <td>3 <= 4</td>
        <td>${3 <= 4}</td>
    </tr>
    <tr>
        <td>3>= 4</td>
        <td>${3>= 4}</td>
    </tr>
    <tr>
        <td>user.firstName == null</td>
        <td>${user.firstName == null}</td>
    </tr>
    <tr>
        <td>user.firstName == ""</td>
        <td>${user.firstName == ""}</td>
    </tr>
    <tr>
        <td>isDirty == true</td>
        <td>${isDirty == true}</td>
    </tr>
</table>
</body>
</html>
