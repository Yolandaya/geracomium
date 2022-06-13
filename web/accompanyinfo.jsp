<%--
  Created by IntelliJ IDEA.
  User: 陈小兰
  Date: 2022/5/29
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<html>
<head>
    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <title>智慧养老</title>
</head>
<script src="js/echarts.min.js"></script>

<script>
    function  myuseraccompanydiv(){

        //1获取要显示报表数据的div对象
        var div=  document.getElementById("useraccompanydiv");
        //2初始化报表对象
        var mycharts=echarts.init(div);

        $.getJSON("getuseraccompany.do",function(data){
            var mygoodsname=new Array();
            var mygoodsnum=new Array();
            var j=0;
            for(j;j<data.length;j++){
                mygoodsname[j]=data[j].name;
                mygoodsnum[j]=data[j].value;
            }
            var option= {
                xAxis: {
                    type: 'category',
                    data: mygoodsname
                },
                yAxis: {
                    type: 'value'
                },
                series: [
                    {
                        data: mygoodsnum,
                        type: 'bar'
                    }
                ]
            };
            //4将装配的数据放入报表对象中
            mycharts.setOption(option);
        });


    }
</script>
<body>

<div>
    <jsp:include page="header.jsp"></jsp:include>
    <div>
        <jsp:include page="admin.jsp"></jsp:include>
        <div class="banner">
            <div class="banner-head"><h1>预约陪护管理</h1></div>
            <div class="banner-body">
                <div class="list-side">
                    <table>
                        <th>用户ID</th>
                        <th>用户姓名</th>
                        <th>陪护ID</th>
                        <th>陪护姓名</th>
                        <th>陪护性别</th>

                        <c:forEach items="${requestScope.useraccompany}" var="accompany">
                            <tr>
                                <td>${accompany.auser_id}</td>
                                <td>${accompany.user_name}</td>
                                <td>${accompany.aaccompany_id}</td>
                                <td>${accompany.accompany_name}</td>
                                <td>${accompany.accompany_sex}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
        <div class="banner-fool">
            <div class="label_name">预约陪护报表-饼图</div>
            <ul class="inline date_inline"></ul>
            <input name="" type="button"  style="width: 100px" value="显示数据"  class="Export_btn" onclick="myuseraccompanydiv()"/>
            <div style="width: 500px;height: 400px;border: #000000 1px" id="useraccompanydiv"></div>
        </div>
    </div>
</div>
</body>
</html>
