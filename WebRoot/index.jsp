<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>首页</title>
    <link href="style/navigation.css" rel="stylesheet" type="text/css"/>
    <style>
       .top{
          width:100%;
          height:70px;
          top:0px;
          left:0px;
          background:url('images/dao.jpg');
          background-size:cover;
       }
       .main{
          width:100%;
          height:420px;
          margin-top:20px;
          background:url('images/index.jpg');
          background-size:cover;
       }
    </style>
  </head>
  
  <body style="height:100%;width:100%;">
  <div class="top">
      <header>
      <img src="images/logo1.png" style="height:80px;width:260px;float:left;">
      <nav>
      <ul>
         <li><a href="index.jsp">首页</a></li>
         <li><a href="disExp.action?ztype=资讯">考试资讯</a></li>
         <li><a href="disExp.action?ztype=经验">经验之谈</a></li>
         <li><a href="disExp.action?ztype=干货">学习干货</a></li>
         <li><a href="http://ntce.neea.edu.cn/">官网通道</a></li>
         <li><a href="login.jsp">退出</a></li>
      </ul>
      </nav>
      </header>
  </div>
      <div class="main">      
      </div>
  </body>
</html>
