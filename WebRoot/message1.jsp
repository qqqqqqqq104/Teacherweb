<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Refresh" content="2;url=teacher/material_showMaterial">
  </head>
  
  <body>
    <header>
       <div><img src="images/logo1.png" style="width:30%"></div>    
    </header>
 
    <main style="background-color:#FCE9D6;width:100%;height:80%;text-align:center;position:absolute;margin:auto;top:0;left:0;right:0;bottom:0;">
      成功添加了一篇资料。
    </main>
  </body>
</html>
