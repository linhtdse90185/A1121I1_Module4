<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: linht
  Date: 4/25/2022
  Time: 6:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create student</title>
</head>
<body>
    <h1>Create new Student</h1>
    <a href="${pageContext.request.contextPath}/student/list">Back to list</a>
    <form:form action="${pageContext.request.contextPath}/student/create" method="post" modelAttribute="student">
        <table border="1">
            <tr>
                <td>ID</td>
                <td><form:input path="id"></form:input></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><form:input path="name"></form:input></td>
            </tr>
            <tr>
                <td>Class Name</td>
                <td>
                    <%--<form:select path="className" items="${classNames}"/>--%>
                    <form:radiobuttons path="className" items="${classNames}"/>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td><form:input path="email"></form:input></td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td><form:input path="phoneNumber"></form:input></td>
            </tr>
            <tr>
                <td>Sex</td>
                <td>
                    <form:radiobutton path="sex" value="true"></form:radiobutton>Male
                    <form:radiobutton path="sex" value="false"></form:radiobutton>Female
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Register" />
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html>
