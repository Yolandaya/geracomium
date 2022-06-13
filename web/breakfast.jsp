<%--
  Created by IntelliJ IDEA.
  User: 李佳芳
  Date: 2022/5/30
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <title>智慧养老</title>
    <script>
        function myloginout(){
            if(confirm("你确定真的要退出吗？？？")){
                location.href="loginout.do";
            }
        }
    </script>
</head>
<body>

<div>
        <div class="topbar">
            <div class="topbar-bd"><p>智慧养老</p>
                <span><a href="javascript:myloginout()">退出登录</a></span>
                <span><a href="getDoctor.do">预约医生</a></span>
                <span><a href="accompany.do">预约陪护</a></span>
                <span><a href="breakfast.do">点餐</a></span>
                <span><a href="home.jsp">首页</a></span>
            </div>
        </div>
        <div class="cate">
            <h1 style="text-align: center">智慧点餐</h1>
            <br>
            <ul>
                <li><a href="breakfast.do">预约早餐<span>&gt;</span></a></li>
                <li><a href="lunch.do">预约午餐<span>&gt;</span></a></li>
                <li><a href="dinner.do">预约晚餐<span>&gt;</span></a></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <div class="banner-header">
<%--            <div class="banner-user">--%>
                <div style="text-align: center">
                    <table border="1" style="margin-left:250px"width="75%">
                        <th>时间</th>
                        <th>菜品编号</th>
                        <th>菜品图片</th>
                        <th>菜品名称</th>
                        <th>菜品简介</th>
                        <th>菜品评价</th>
                        <th>点餐</th>

                        <c:forEach items="${requestScope.foods}" var="foods">
                        <form action="orderfood.do">

                            <tr>
                             <input type="hidden" name="userid" value="${sessionScope.loginuser.user_id}">
                                <input type="hidden" name="foodid" value="${foods.food_id}">
                                <td align="center">早餐</td>
                                <td align="center">${foods.food_id}</td>
                                <td align="center"><img src="${foods.food_img}" width="137px" height="80"></td>
                                <td align="center">${foods.food_name}</td>
                                <td align="center">${foods.food_intro}</td>
                                <td align="center">${foods.food_evaluate}</td>
                                <td align="center"><input name="" type="submit" value="提交"  class="modify"/></td>
                            </tr>

                        </form>
                        </c:forEach>
                    </table>
                </div>
<%--            </div>--%>
        </div>
    </div>
</body>
</html>
