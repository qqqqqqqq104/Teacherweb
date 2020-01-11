<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>修改成功</title>
    <style>
       body {
            height: 100%;width: 100%;
            background: url('images/index.jpg');
            background-size:cover;
        }
        #parent{
            width:370px;
            height:270px;
            background:white;
            position:absolute;
            margin:auto;
            top:0;
            left:0;
            right:0;
            bottom:0;
            text-align:center;
            border-top-right-radius:10px;
            border-bottom-left-radius:10px;
        }
    </style>
  </head>
  
  <body>
  <div id="parent">
  <div style="margin-top:100px;font-size:24px;">提示：修改成功！</div>
  <div style="margin-top:60px;margin-left:180px;">
  <a href="disExp.action?ztype=${ztype}">
  <input type="submit" value="确定" style="width:70px;height:30px;background:#4682B4;color:white;"></a></div>
  </div>
  </body>
</html>
