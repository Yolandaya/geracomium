<%--
  Created by IntelliJ IDEA.
  User: 陈小兰
  Date: 2022/5/31
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <script>
        function myloginout(){
            if(confirm("你确定真的要注销吗？？？")){
                location.href="loginout.do";
            }

        }
    </script>
<head>
    <title>智慧养老</title>
</head>
<body>
<div class="topbar">
    <div class="topbar-bd"><p>智慧养老&nbsp用户界面</p><span><a href="javascript:myloginout()">注销登录</a></span></div>
</div>
</body>
</html>
