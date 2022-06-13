<%--
  Created by IntelliJ IDEA.
  User: z
  Date: 2022/5/31
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>智慧养老</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href='http://fonts.useso.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/SmoothScroll.min.js"></script>
    <script src="js/jarallax.js"></script>
    <script>
        function myloginout(){
            if(confirm("你确定真的要退出吗？？？")){
                location.href="loginout.do";
            }
        }
    </script>
</head>
<body>
<div class="banner">
    <div class="top-banner">
        <div class="container">
            <div class="top-banner-left">
                <ul>
                    <li>电话：+1 234 567 8901</li>
                    <li>邮箱：mail@example.com</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="header">
        <div class="container">
            <div class="logo">
                <h1>
                    <a href="index.html">智慧养老院</a>
                </h1>
            </div>
            <div class="top-nav">
                <nav class="navbar navbar-default">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">Menu
                    </button>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a class="active" href="index.html">首页</a></li>
                            <li><a href="breakfast.do">点餐</a></li>
                            <li><a href="accompany.do">陪护</a></li>
                            <li><a href="getDoctor.do">医生</a></li>
                            <li><a href="javascript:myloginout()">退出登录</a></li>
                            <div class="clearfix"> </div>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<div id="kb" class="carousel kb_elastic animate_text kb_wrapper" data-ride="carousel" data-interval="6000" data-pause="hover">
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <div class="slider">
                <div class="carousel-caption kb_caption slider-grid">
                    <h3>Geracomium</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
            </div>
        </div>

        <div class="item">
            <div class="slider slider1">
                <div class="carousel-caption kb_caption kb_caption_right slider-grid">
                    <h3>Hawaii</h3>
                    <p>Vivamus vel nulla venenatis, tincidunt mi vel, consequat erat.</p>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="slider slider2">
                <div class="carousel-caption kb_caption kb_caption_center slider-grid">
                    <h3>Hong Kong</h3>
                    <p>Nunc turpis purus, vestibulum at quam ac, feugiat dignissim nunc</p>
                </div>
            </div>
        </div>

    </div>
    <a class="left carousel-control kb_control_left" href="#kb" role="button" data-slide="prev">
        <span class="fa fa-angle-left kb_icons" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control kb_control_right" href="#kb" role="button" data-slide="next">
        <span class="fa fa-angle-right kb_icons" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<script src="js/SmoothScroll.min.js"></script>
</body>
</html>
