<%--
  Created by IntelliJ IDEA.
  User: 陈小兰
  Date: 2022/5/28
  Time: 13:37
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

<div class="logn">

        <form action="login.do" method="get">
            <div class="lognbody">
<%--                <p class="bigFont">智慧养老</p>--%>
                <h2>智慧养老</h2>
                <br>
                <table >
                    <tbody>
                    <tr>
                        <td class="textRight">用户名：</td>
                        <td>
                            <input type="text"  name="username" placeholder="请填写用户名" class="input-item" />
                        </td>
                    </tr>
                    <tr>
                        <br>
                    </tr>
                    <tr>
                        <td class="textRight">密码：</td>
                        <td>
                            <input type="password" name="userpwd" placeholder="请填写密码" class="input-item" />
                        </td>
                    </tr>
                    <tr>
                        <br>
                    </tr>
                    <tr>
                        <td colspan="2" class="loginbtn">
                            <input type="submit" class="loginbtn" value="登  录">
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </form>
</div>
</body>
</html>
