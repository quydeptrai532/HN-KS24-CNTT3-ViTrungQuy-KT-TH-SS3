<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 4/7/2026
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    ...
    <h1>Bảng danh sách nhân viên</h1>
    <table width="30%" border="1">
        <tr>
            <th>ID</th>
            <th>Họ Tên</th>
            <th>Phòng ban</th>
            <th>Lương</th>
            <th>Đánh giá</th>
        </tr>
        <c:forEach items="${employees}" var="emp">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.fullName}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
                <td>
                    <c:choose>
                        <c:when test="${emp.salary >= 10000}">Mức lương cao</c:when>
                        <c:otherwise>Mức lương cơ bản</c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
    </table>
</head>
<body>

</body>
</html>
