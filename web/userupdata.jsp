<%--
  Created by IntelliJ IDEA.
  User: 陈小兰
  Date: 2022/5/29
  Time: 10:44
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
            <div class="banner-head"><h2>信息更新</h2></div>
            <div class="banner-body">
            <form action="infoupdata.do">
            <table>
                <th colspan="2">请输入要更新的用户的用户名</th>
                <tr>
                    <td><input type="text" name="username"  class="text"/></td>
                    <td><input name="" type="submit" value="确定"  class="modify"/></td>
                </tr>
            </table>
            </form>
                <form action="infoidupdata.do">
                    <table>
                        <th colspan="2">请输入要更新的用户的ID</th>
                        <tr>
                            <td><input type="text" name="id"  class="text"/></td>
                            <td><input name="" type="submit" value="确定"  class="modify"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="banner-user">
            <c:if test="${sessionScope.userinfo.user_id!=null}">
                <form action="userupdata.do">
                    <table>
                        <!-- 为了方便后续的操作而隐藏起来的一个值，不给用户看的 -->
                        <input type="hidden" name="user_id" value="${sessionScope.userinfo.user_id}">
                        <tr>
                            <td>用户名：</td>
                            <td><input type="text" name="user_name"  class="text" value="${sessionScope.userinfo.user_name}"/></td>
                        </tr>
                        <tr>
                            <td>密码：</td>
                            <td><input id="mypwd" type="password" class="loginuser" name="user_pwd" value="${sessionScope.userinfo.user_pwd}"></td>
                        </tr>
                        <tr>
                            <td>年龄：</td>
                            <td><input name="user_age" type="text"   class="text" value="${sessionScope.userinfo.user_age}"/></td>
                        </tr>
                        <tr>
                            <td>性别：</td>
                            <td> <c:if test="${sessionScope.userinfo.user_sex==null||sessionScope.userinfo.user_sex==''}">
                                <input type="radio" name="user_sex" value="" checked="checked">
                                保密&nbsp;&nbsp;
                                <input type="radio" name="user_sex" value="男">
                                男&nbsp;&nbsp;
                                <input type="radio" name="user_sex" value="女">
                                女&nbsp;&nbsp;
                            </c:if>
                                <c:if test="${sessionScope.userinfo.user_sex=='男'}">
                                    <input type="radio" name="user_sex" value="" >
                                    保密&nbsp;&nbsp;
                                    <input type="radio" name="user_sex" value="男" checked="checked">
                                    男&nbsp;&nbsp;
                                    <input type="radio" name="user_sex" value="女">
                                    女&nbsp;&nbsp;
                                </c:if>
                                <c:if test="${sessionScope.userinfo.user_sex=='女'}">
                                    <input type="radio" name="user_sex" value="" >
                                    保密&nbsp;&nbsp;
                                    <input type="radio" name="user_sex" value="男">
                                    男&nbsp;&nbsp;
                                    <input type="radio" name="user_sex" value="女" checked="checked">
                                    女&nbsp;&nbsp;
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>房间号：</td>
                            <td><input type="text" name="user_room"  class="text" value="${sessionScope.userinfo.user_room}"/></td>
                        </tr>
                        <tr>
                            <td>紧急联系人：</td>
                            <td><input type="text" name="user_rela" class="text" value="${sessionScope.userinfo.user_rela}"/></td>
                        </tr><tr>
                        <td>联系电话：</td>
                        <td><input name="user_tel" type="text"  class="text" value="${sessionScope.userinfo.user_tel}" /></td>
                    </tr>
                        <tr>
                            <td>用户身体情况：</td>
                            <td><input type="text" name="user_health"  class="text" value="${sessionScope.userinfo.user_health}"/></td>
                        </tr>
                        <tr>
                            <td>备注：</td>
                            <td><input type="text" name="user_null"  class="text" value="${sessionScope.userinfo.user_null}" /></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input name="" type="submit" value="保存"  class="modify" /></td>
                        </tr>

                    </table>

                </form>
            </c:if>
            </div>
        </div>
    </div>
</div>
</body>
</html>
