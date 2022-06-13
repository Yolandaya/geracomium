<%--
  Created by IntelliJ IDEA.
  User: 陈小兰
  Date: 2022/5/28
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script>
    function userroom(){
            location.href="room.do";
    }
    function userdoctor(){
        location.href="setdoctor.do";
    }
    function useraccompany(){
        location.href="setaccompany.do";
    }
    function userinfo(){
        location.href="setuserinfo.do";
    }
    function userfoodm(){
        location.href="setfoodm.do";
    }
    function userfoodp(){
        location.href="setfoodp.do";
    }
    function userfoodn(){
        location.href="setfoodn.do";
    }

</script>
<head>
    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <title>智慧养老</title>
</head>
<body>
    <div class="category">
        <ul>
            <li><a href="userinfo.jsp">入住登记<span>&gt;</span></a></li>
            <li><a href="javascript:userinfo()">住户详细信息<span>&gt;</span></a></li>
            <li><a href="userupdata.jsp">信息更新<span>&gt;</span></a></li>
            <li><a href="javascript:userroom()">房间查询<span>&gt;</span></a></li>
            <li><a href="javascript:userdoctor()">预约医生管理<span>&gt;</span></a></li>
            <li><a href="javascript:useraccompany()">预约陪护管理<span>&gt;</span></a></li>
            <li><a href="javascript:userfoodm()">早餐管理<span>&gt;</span></a></li>
            <li><a href="javascript:userfoodp()">午餐管理<span>&gt;</span></a></li>
            <li><a href="javascript:userfoodn()">晚餐管理<span>&gt;</span></a></li>
        </ul>
    </div>
</body>
</html>
