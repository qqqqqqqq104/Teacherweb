<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>注册界面</title>
    <!--  <link href="style/login.css" rel="stylesheet" type="text/css"/>-->
    <style>
        body {
            height: 100%;width: 100%;
            background: url('images/beijing.jpg');
            background-size:cover;
        }
        .parent{
            background:white;
            height:300px;
            width:500px;
            position:absolute;
            margin:auto;
            top:0;
            left:0;
            right:0;
            bottom:0;
        }
        .child{
            width:500px;
            height:40px;
            font-size:24px;
            font-family:微软雅黑;
            text-align:center;
            margin-top:20px;
        }
        .name{
            background-image: url(images/name.jpg);
            backgronud-size:25px 25px;
            background-position:5px 4px;
            background-repeat:no-repeat;
            padding:8px 10px 8px 40px;
            border:1px solid #ddd;
            width:220px;
        }
        .password{
            background-image: url(images/passwd.jpg);
            backgronud-size:25px 25px;
            background-position:5px 4px;
            background-repeat:no-repeat;
            padding:8px 10px 8px 40px;
            border:1px solid #ddd;
            width:220px;
        }
        .child2{
            position:absolute;
            margin:auto;
            top:-30px;
            left:110px;
            right:0;
            bottom:0;
            height:100px;
        }
        .btn{
            width:270px;
            height:35px;
            background:#4682B4;
            color:white;
        }
    </style>
  </head>
  
  <body>
      <div class="parent">
        <form action="registerAction" method="post">
          <div class="child">注册界面</div>
          <div class="child2">
          <input name="account" class="name"type="text" placeholder="用户名"><br><br>
          <input name="password" class="password"type="password" placeholder="密码"><br><br>
          <input class="btn" type="submit" value="注册"><br><br>
          </div>
         </form>
      </div>
  </body>
</html>
