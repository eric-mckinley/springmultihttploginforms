<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<c:import url="../header.jsp"/>

<p>
    <a href="<c:url value='/member/home'/>">Member Area</a>
</p>
<table border="1">
    <thead>
        <tr>
            <th>Name</th>
            <th>Value</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Name</td>
            <td>John</td>
        </tr>
        <tr>
            <td>Age</td>
            <td>20</td>
        </tr>
        <tr>
            <td>Address</td>
            <td>UK</td>
        </tr>
    </tbody>
</table>

</body>
</html>
