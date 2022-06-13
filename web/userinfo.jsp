<%--
  Created by IntelliJ IDEA.
  User: 陈小兰
  Date: 2022/5/28
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <div class="banner-head"><h1>入住登记</h1></div>
            <br>
            <div class="banner-user">
                <form action="register.do">
                    <table>
                        <tr>
                            <td>用户名：</td>
                            <td><input type="text" name="user_name"  class="text"/></td>
                        </tr>
                        <tr>
                            <td>密码：</td>
                            <td><input id="mypwd" type="password" class="loginuser" name="user_pwd" ></td>
                        </tr>
                        <tr>
                            <td>年龄：</td>
                            <td><input type="text" name="user_age"  class="text" /></td>
                        </tr>
                        <tr>
                            <td>性别：</td>
                            <td><input type="radio" name="user_sex" value="" checked="checked">
                                保密&nbsp;&nbsp;
                                <input type="radio" name="user_sex" value="男">
                                男&nbsp;&nbsp;
                                <input type="radio" name="user_sex" value="女">
                                女&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>房间号：</td>
                            <td><input type="text" name="user_room"  class="text" /></td>
                        </tr>
                        <tr>
                            <td>紧急联系人：</td>
                            <td><input type="text" name="user_rela"  class="text" /></td>
                        </tr><tr>
                            <td>联系电话：</td>
                            <td><input name="user_tel" type="text"  class="text"  /></td>
                        </tr>
                        <tr>
                            <td>用户身体情况：</td>
                            <td><input type="text" name="user_health"  class="text" /></td>
                        </tr>
                        <tr>
                            <td>备注：</td>
                            <td><input type="text" name="user_null"  class="text"  /></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input name="" type="submit" value="保存"  class="modify"/></td>
                        </tr>

                    </table>

                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
