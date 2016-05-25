<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">

    body {
        font-family: SansSerif;
        font-size: small;
    }
</style>
<div>
    <div style="float: left;">
        <p>
            &nbsp;|&nbsp;
            <a href="<c:url value='/home'/>">Home</a>
            &nbsp;|&nbsp;
            <a href="<c:url value='/member/home'/>">Member Area</a>
            &nbsp;|&nbsp;
            <a href="<c:url value='/admin/home'/>">Admin Area</a>
        </p>
    </div>
    <div style="float: right;">
        <c:choose>
            <c:when test="${not empty requestScope.username}">
                <p>
                    Logged in as <strong> ${requestScope.username} </strong>
                    &nbsp;|&nbsp;
                    <a href="<c:url value='/logout'/>">Logout</a>
                </p>
            </c:when>
            <c:otherwise>
                <p>
                    Not Logged in.
                </p>
            </c:otherwise>
        </c:choose>
    </div>

</div>
<div style="clear: both;"/>
<hr/>