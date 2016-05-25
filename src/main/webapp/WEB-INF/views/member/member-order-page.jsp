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
        <th>Order Id</th>
        <th>Type</th>
        <th>QTY</th>
        <th>Value</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>Product A</td>
        <td>4</td>
        <td>400</td>
    </tr>
    <tr>
        <td>2</td>
        <td>Product A</td>
        <td>1</td>
        <td>100</td>
    </tr>
    <tr>
        <td>3</td>
        <td>Product B</td>
        <td>1</td>
        <td>50</td>
    </tr>
    <tr>
        <td>4</td>
        <td>Product A</td>
        <td>7</td>
        <td>700</td>
    </tr>

    </tbody>
</table>

</body>
</html>
