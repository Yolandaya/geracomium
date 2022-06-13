<%--
  Created by IntelliJ IDEA.
  User: z
  Date: 2022/5/29
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <link href="css/user.css" rel="stylesheet" type="text/css" />
    <title>Title</title>
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
        <div class="topbar-bd"><p>智慧养老</p>
            <span><a href="javascript:myloginout()">退出登录</a></span>
            <span><a href="getDoctor.do">预约医生</a></span>
            <span><a href="accompany.do">预约陪护</a></span>
            <span><a href="breakfast.do">点餐</a></span>
            <span><a href="home.jsp">首页</a></span>
        </div>
     </div>
     <div>
        <ul class="all">
        <c:forEach items="${requestScope.list}" var="doctor">
            <div class="box-list">
                <form action="orderdoctor.do">
                    <li>
                        <div class="img"><a href="#">
                        <c:if test="${doctor.doctor_img==null}">
                            <img src="${doctor.doctor_img}" style="width:220px;height:220px " width="178" height="178">
                        </c:if>
                        <c:if test="${doctor.doctor_img!=null}">
                            <img src="${doctor.doctor_img}" style="width:220px;height:220px " width="178" height="178">
                        </c:if></a>
                        </div>
                    <div class="message">
                            <div class="yushou"><a href="#">医生编号：${doctor.doctor_id}</a><br><br>
                        <a href="#">医生姓名：${doctor.doctor_name}</a><br><br>
                        <a href="#">所属科室：${doctor.doctor_dir}
                        </div>
                        <div class="choice-box">
                            <input type="hidden"  name="doctorid" value="${doctor.doctor_id}">
                                <input type="submit" value="选择" name="" >
                            <input type="hidden" name="userid" value="${sessionScope.loginuser.user_id}">
                        </div>
                    </div>
                    </li>
                </form>
            </div>
        </c:forEach>
        </ul>
     </div>
</body>
</html>
