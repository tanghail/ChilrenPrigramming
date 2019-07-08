<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.OutputStream"%>
<%@page import="com.thl.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login</title>
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/wow.js"></script>
    <script>
        new WOW().init();
    </script>
</head>
<body>
    <!--顶部区域-->
    <div class="row col-12 top-area">
        <div class="row top">

        </div>
        <div class="row bottom">
            <div class="row col-sm-3">
                <div class="logo wow animated zoomIn">
                    <h1>少儿编程<br><span>Playing&Coding</span></h1>
                </div>
            </div>
            <div class="row col-sm-7">
                <div class="nav">

                    <div class="row left">

                        <ul>
                            <li><a href="/ChildrenProgramming/index.jsp">首页</a></li>
                            <li><a href="/ChildrenProgramming/reference.jsp">关于</a></li>
                            <li><a href="">个人信息</a></li>
                        </ul>
                    </div>
                </div>

            </div>
            <div class="row col-sm-2">
				<div class="nav">
					<div class="row left" align="right">
						<ul>
						<%  
						User user = (User)session.getAttribute("user");
						if(user != null){
    					%> 
    						<li>您好，<% out.write(user.getName());%> 小朋友</li>
							<li><a href="login?oper=out">退出</a></li> 
						<%}
						else{
						%>						
							<li><a href="login.html">登录</a></li>
							<li><a href="register.html">注册</a></li>
						<%} %>
						</ul>
					</div>
				</div>
            </div>
        </div>
    </div>
    <!--顶部区域-->




    <!--登陆区域-->
    <div class="row col-12 login-area">
        <div class="row col-12 banner">
            <div class="center wow animated fadeInLeft">
                <a href="#"><i class="fa fa-home">&nbsp;&nbsp;首页</i></a>&nbsp;&nbsp;/&nbsp;&nbsp;登录页面
            </div>
        </div>


        <div class="content-login">
            <table border="1">
            	<tr>
            		<td>id值</td>
            		<td>姓名</td>
            		<td>密码</td>
            		<td>当前游戏进度</td>
            	</tr>
            	<tr>
            	<% if(user != null){
    			%> 
            		<td><%out.write(user.getId()+""); %></td>
            		<td><%out.write(user.getName()); %></td>
            		<td><%out.write(user.getPassword()); %></td>
            		<td>游戏进度为第<%out.write(user.getGameProgress()+"关"); %></td>
            	</tr>
            </table>
				<%}else{%>
					<%out.write("当前用户未登录"); %> 
					<a href="/ChildrenProgramming/login.html">请登录</a>
				<%} %>
        </div>


        <div class="bottom-info">
            <p><span><a href="#">注册新用户</a></span>&nbsp;&nbsp;&nbsp;或返回&nbsp;&nbsp;&nbsp;<span><a href="#">首页&nbsp;&nbsp;<i class="fa fa-mail-reply"></i></a></span></p>
        </div>
    </div>
    <!--登陆区域-->



    <!--footer-->
    <div class="row col-md-12 footer-area">
        <div class="row footer">
            <div class="row col-md-3 col-sm-6 wow animated fadeInLeft">
                <h1>About Us</h1>
                <hr>
                <p>来自中国科学技术大学的研究生.</p>
                <p>致力于少儿编程教育方向的研究.</p>
            </div>
            <div class="row col-md-3 col-sm-6 wow animated fadeInLeft" style="padding-bottom: 20px">
                <h1>Contact Info</h1>
                <hr>
                <div>
                    <p>苏州市工业园区中科大苏州研究院.</p>
                </div>
                <div>
                    <p>329220887@qq.com</p>
                </div>
                <div>
                    <p>+18862137103</p>
                </div>
            </div>

            <div class="page-footer">
                <div class="logo wow animated fadeInUp">
                    <hr>
                    <p>少儿编程
                        <br>
                        <span>Playing&Coding</span>
                    </p>
                    <hr>
                </div>
                <div class="page-info wow animated fadeInUp">
                    <p>© 2019 Shaoer Coding. All rights reserved | Design by <span>USTC</span></p>
                </div>
            </div>
        </div>
    <!--footer-->
</body>
</html>