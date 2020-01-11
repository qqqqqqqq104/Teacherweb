<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>添加</title>
    <style>
       body {
            height:100%;
            width:100%;
            background: url('images/index.jpg');
            background-size:cover;
        }
        #parent{
            width:800px;
            height:730px;
            background:white;
            position:absolute;
            margin:auto;
            top:0;
            left:0;
            right:0;
            bottom:0;
            text-align:center;
        }
    </style>
  </head>
  
  <body>
    <div id="parent">
    <div class="content" style="text-align:center;width:100%;height:100%;margin-top:30px;">
  <form action="addA.action" method="post" style="padding-top:40px;">
        <span style="font-size:21px;font-weight:bold;">添加</span><hr><br><br>
        <span style="font-size:18px;">标题：<input name="ztitle" type="text" style="width:600px;height:35px;"/></span><br><br>
        <span style="font-size:18px;">类型：<input name="ztype" type="text" style="width:600px;height:35px;"/></span><br><br>
        <span style="font-size:18px;float:left;margin-left:72px;">内容：</span><textarea cols="100" rows="300" name="zcontent" style="width:600px;height:400px;display:inline;margin-left:-67px;"></textarea><br><br>
        <input type="submit" value="添加" style="width:100px;height:30px;margin-left:500px;margin-top:0px;"/>
  </form>
  </div>
    </div>
  </body>
</html>
