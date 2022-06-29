<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: linht
  Date: 6/27/2022
  Time: 5:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:if test="${message != \"\"}">
        <h6 style="color: red">${message}</h6>
    </c:if>
    <form action="${pageContext.request.contextPath}/calc" method="post">
        Number1: <input type="number" name="number1"> <br/>
        Number2: <input type="number" name="number2"> <br/>
        <button name="Submit" type="submit" value="cong">Cong</button>
        <button name="Submit" type="submit" value="tru">Tru</button>
        <button name="Submit" type="submit" value="nhan">Nhan</button>
        <button name="Submit" type="submit" value="chia">Chia</button>
    </form>
    Result: ${result}
</body>
</html>
