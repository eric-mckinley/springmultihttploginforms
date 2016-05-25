<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:import url="../header.jsp"/>

<p>
    <a href="<c:url value='/admin/home'/>">Admin Area</a>
</p>
<table border="1">
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Type</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>Alpha</td>
        <td>a@test.com</td>
        <td>Free</td>
    </tr>
    <tr>
        <td>2</td>
        <td>Beta</td>
        <td>b@test.com</td>
        <td>Free</td>
    </tr>
    <tr>
        <td>3</td>
        <td>Charlie</td>
        <td>c@test.com</td>
        <td>Free</td>
    </tr>
    <tr>
        <td>4</td>
        <td>Delta</td>
        <td>d@test.com</td>
        <td>Premium</td>
    </tr>
    <tr>
        <td>5</td>
        <td>Echo</td>
        <td>e@test.com</td>
        <td>Free</td>
    </tr>
    <tr>
        <td>6</td>
        <td>Foxtrot</td>
        <td>f@test.com</td>
        <td>Free</td>
    </tr>
    <tr>
        <td>7</td>
        <td>Golf</td>
        <td>g@test.com</td>
        <td>Free</td>
    </tr>

    </tbody>
</table>

</body>
</html>
