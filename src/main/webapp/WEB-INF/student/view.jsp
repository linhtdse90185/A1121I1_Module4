<%--
  Created by IntelliJ IDEA.
  User: linht
  Date: 4/25/2022
  Time: 6:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student detail</title>
</head>
<body>
    <h1>Student detail</h1>
    <table border="1">
        <tr>
            <td>ID</td>
            <td>${student.id}</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>${student.name}</td>
        </tr>
        <tr>
            <td>Class Name</td>
            <td>${student.className}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>${student.email}</td>
        </tr><tr>
            <td>Phone Number</td>
            <td>${student.phoneNumber}</td>
        </tr><tr>
            <td>Sex</td>
            <td>${student.sex ? "Male" : "Female"}</td>
        </tr>
    </table>
    <a href="${pageContext.request.contextPath}/student/list">Back to list</a>
</body>
</html>
