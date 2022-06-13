<%--
  Created by IntelliJ IDEA.
  User: 陈小兰
  Date: 2022/5/29
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<html>
<!-- 导入报表工具-->
<script src="js/echarts.min.js"></script>
<script>
    function  myuserdoctordiv(){
        //1获取要显示报表数据的div对象
        var div=  document.getElementById("userdoctordiv");
        //2初始化报表对象
        var mycharts=echarts.init(div);
        //3装配数据
        //3.1 利用ajax从后端获取数据
        $.getJSON("getuserdoctor.do",function(data){


            //3.2 将数据进行装配
            var  option = {
                legend: {
                    top: 'bottom'
                },
                toolbox: {
                    show: true,
                    feature: {
                        mark: { show: true },
                        dataView: { show: true, readOnly: false },
                        restore: { show: true },
                        saveAsImage: { show: true }
                    }
                },
                series: [
                    {
                        name: 'Nightingale Chart',
                        type: 'pie',
                        radius: [30, 150],
                        center: ['50%', '50%'],
                        roseType: 'area',
                        itemStyle: {
                            borderRadius: 8
                        },
                        data: data
                    }
                ]
            };
            //4将装配的数据放入报表对象中
            mycharts.setOption(option);

        });
    }
</script>
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
            <div class="banner-head"><h1>预约医生管理</h1></div>
            <div class="banner-body">
                <div class="list-side">
                   <table>
                       <th>用户ID</th>
                       <th>用户姓名</th>
                       <th>医生ID</th>
                       <th>医生姓名</th>
                       <th>医生科室</th>

                        <c:forEach items="${requestScope.userdoctor}" var="doctor">
                            <tr>
                                <td>${doctor.duser_id}</td>
                                <td>${doctor.user_name}</td>
                                <td>${doctor.ddoctor_id}</td>
                                <td>${doctor.doctor_name}</td>
                                <td>${doctor.doctor_dir}</td>
                            </tr>
                        </c:forEach>
                   </table>
                </div>
            </div>
            <div class="banner-fool">
                <div class="label_name">医生预约报表-饼图</div>
                <ul class="inline date_inline"></ul>
                <input name="" type="button"  style="width: 100px" value="显示数据"  class="Export_btn" onclick="myuserdoctordiv()"/>
                <div style="width: 400px;height: 400px;border: #000000 1px" id="userdoctordiv"></div>
            </div>

        </div>

    </div>
</div>
</body>
</html>
