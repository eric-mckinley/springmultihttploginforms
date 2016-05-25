<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Member</title>
</head>
<body>
<c:import url="../header.jsp"/>
<p>
    <a href="<c:url value='/member/account'/>">My Account</a>
</p>
<p>
    <a href="<c:url value='/member/orders'/>">My Orders</a>
</p>
</body>
</html>
