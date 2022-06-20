<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: linht
  Date: 4/22/2022
  Time: 6:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all student</title>
</head>
<body>
    <h1>Display all student</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Class name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Sex</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${students}" var="student">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.className}</td>
                <td>${student.email}</td>
                <td>${student.phoneNumber}</td>
                <td>${student.sex ? "Male" : "Female"}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/student/view/${student.id}">View</a>
                </td>
            </tr>
        </c:forEach>

    </table>
</body>
</html>
