<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Member Login</title>
</head>
<body>
<c:import url="../header.jsp"/>

<h3>Member Login</h3>

<form id="logInForm" method="POST" action="/login">

    <fieldset>
        <label>
            <span>
                <input type="text" id="username" name="username"/>
            </span>
        </label>

        <label>
            <span>
                <input type="password"  name="password" id="password"/>
            </span>
        </label>

        <div>
            <button>
                Login
            </button>
        </div>
    </fieldset>
</form>

</body>
</html>
