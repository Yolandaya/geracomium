<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 呆呆
  Date: 2022/5/30
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <link href="css/accompany.css" rel="stylesheet" type="text/css" />
    <title>智慧养老</title>
</head>
<script>
    function myloginout(){
        if(confirm("你确定真的要退出吗？？？")){
            location.href="loginout.do";
        }

    }
</script>
<body>
<div class="topbar">
    <div class="topbar-bd">
        <p>预约陪护管理</p>
        <span><a href="javascript:myloginout()">退出登录</a></span>
        <span><a href="getDoctor.do">预约医生</a></span>
        <span><a href="">预约陪护</a></span>
        <span><a href="breakfast.do">点餐</a></span>
        <span><a href="home.jsp">首页</a></span>
    </div>
</div>
<div class="box">
    <c:forEach items="${requestScope.accompany}" var="accompany1">
        <form action="orderaccompany.do" method="get">
            <div class="box1">
                <img src="${accompany1.accompany_img}"/><br>
                <p>
                工号：${accompany1.accompany_id}<br>
                姓名：${accompany1.accompany_name}<br>
                年龄：${accompany1.accompany_age}<br>
                性别：${accompany1.accompany_sex}<br>
                </p>
                <div class="button">
                <input type="hidden" name="accompany_id" value="${accompany1.accompany_id}">
                <input name="" type="submit" value="提交" />
                </div>
            </div>
        </form>
    </c:forEach>
</div>
</body>
</html>


