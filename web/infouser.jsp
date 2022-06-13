<%--
  Created by IntelliJ IDEA.
  User: 陈小兰
  Date: 2022/5/29
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <title>智慧养老</title>
</head>
<body>

<div>
    <jsp:include page="header.jsp"></jsp:include>
    <div>
        <jsp:include page="admin.jsp"></jsp:include>
        <div class="banner">
            <div class="banner-head"><h1>住户详细信息</h1></div>
            <div class="banner-user">
                <div class="list-side">
                    <table>
                        <th>住户ID</th>
                        <th>住户姓名</th>
                        <th>住户年龄</th>
                        <th>住户性别</th>
                        <th>住户房间</th>
                        <th>紧急联系人</th>
                        <th>联系电话</th>
                        <th>健康情况</th>
                        <th>备注</th>
                        <c:forEach items="${requestScope.infouser}" var="infouser">
                            <tr>
                                <td>${infouser.user_id}</td>
                                <td>${infouser.user_name}</td>
                                <td>${infouser.user_age}</td>
                                <td>${infouser.user_sex}</td>
                                <td>${infouser.user_room}</td>
                                <td>${infouser.user_rela}</td>
                                <td>${infouser.user_tel}</td>
                                <td>${infouser.user_health}</td>
                                <td>${infouser.user_null}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
