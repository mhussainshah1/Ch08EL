<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Context</title>
</head>
<body>
<%--How to get context initialization parameter--%>
<p>The Contect init param: ${initParam.custServEmail}</p>

<%--How to use the pageContext object--%>
<p>
    HTTP request method: ${pageContext.request.method}<br>
    Http response type: ${pageContext.response.contentType}<br>
    Http session ID: ${pageContext.session.id}<br>
    Http servletContext path: ${pageContext.servletContext.contextPath}<br>
</p>
</body>
</html>