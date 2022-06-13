<%--
  Created by IntelliJ IDEA.
  User: 陈小兰
  Date: 2022/5/29
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<html>

<script src="js/echarts.min.js"></script>

<script>
    function  myuserfooddiv(){
//1获取要显示报表数据的div对象
        //1获取要显示报表数据的div对象
        var div=  document.getElementById("userfooddiv");
        //2初始化报表对象
        var mycharts=echarts.init(div);
        //3装配数据
        //3.1 利用ajax从后端获取数据
        $.getJSON("getuserfood.do",function(data){


            //3.2 将数据进行装配
            var  option = {
                title: {
                    text: '早餐和预约人数关系',
                    subtext: '饼状图',
                    left: 'center'
                },
                tooltip: {
                    trigger: 'item'
                },
                legend: {
                    orient: 'vertical',
                    left: 'left'
                },
                series: [
                    {
                        name: '早餐和预约人数',
                        type: 'pie',
                        radius: '55%',  //沾满所在div的百分比
                        data: data,  //从后端响应返回的数据库对应的数据
                        emphasis: {
                            itemStyle: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }
                ]
            };
            //4将装配的数据放入报表对象中
            mycharts.setOption(option);
        });


    }
</script>
<head>
    <title>智慧养老</title>
</head>
<body>

<div>
    <jsp:include page="header.jsp"></jsp:include>
    <div>
        <jsp:include page="admin.jsp"></jsp:include>
        <div class="banner">
            <div class="banner-head"><h1>早餐管理</h1></div>
            <div class="banner-body">
                <div class="list-side">
                    <table>
                        <th>用户ID</th>
                        <th>用户姓名</th>
                        <th>套餐ID</th>
                        <th>套餐名</th>
                        <th>就餐时间</th>

                        <c:forEach items="${requestScope.foods}" var="foods">
                            <tr>
                                <td>${foods.fuser_id}</td>
                                <td>${foods.user_name}</td>
                                <td>${foods.ffood_id}</td>
                                <td>${foods.food_name}</td>
                                <td>早餐</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <div class="banner-fool">
                <div class="label_name">预约早餐报表-饼图</div>
                <ul class="inline date_inline"></ul>
                <input name="" type="button"  style="width: 100px" value="显示数据"  class="Export_btn" onclick="myuserfooddiv()"/>
                <div style="width: 450px;height: 450px;border: #000000 1px" id="userfooddiv"></div>
            </div>
        </div>

    </div>
</div>
</body>
</html>
