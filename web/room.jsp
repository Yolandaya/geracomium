<%--
  Created by IntelliJ IDEA.
  User: 陈小兰
  Date: 2022/5/28
  Time: 15:21
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
      <div class="banner-head"><h1>房间查询</h1></div>
      <div class="banner-user">
        <div class="list-side">
          <ul>
            <c:forEach items="${sessionScope.list}" var="newroom">
            <li ><a href="#" class="shadow">
              <br>
              <h2 class="mobile-name">${newroom.room_id}</h2>
              <p class="mobile-price">空房间</p>
            </a></li>
            </c:forEach>
          </ul>
        </div>
      </div>
    </div>
    </div>
  </div>
</div>
</body>
</html>
