<%--
  Created by IntelliJ IDEA.
  User: 陈小兰
  Date: 2022/5/31
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script>

    function doctor(){
        location.href="setdoctor.do";
    }
    function accompany(){
        location.href="setaccompany.do";
    }
    function foodm(){
        location.href="breakfast.do";
    }
    function foodp(){
        location.href="setfoodp.do";
    }
    function foodn(){
        location.href="setfoodn.do";
    }
</script>
<head>
    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <title>智慧养老</title>
</head>
<body>
<div class="cate">
    <ul>
        <li><a href="userupdata.jsp">信息更新<span>&gt;</span></a></li>
        <li><a href="javascript:doctor()">预约医生<span>&gt;</span></a></li>
        <li><a href="javascript:accompany()">预约陪护<span>&gt;</span></a></li>
        <li><a href="javascript:foodm()">预约早餐<span>&gt;</span></a></li>
        <li><a href="javascript:foodp()">预约午餐<span>&gt;</span></a></li>
        <li><a href="javascript:foodn()">预约晚餐<span>&gt;</span></a></li>
    </ul>
</div>
</body>
</html>
