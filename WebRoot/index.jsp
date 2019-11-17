<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
    <header>
       <div><img src="images/logo1.png" style="width:30%"></div>    
    </header>
    
    <main style="background-color:#FCE9D6;width:100%;height:80%;text-align:center;position:absolute;margin:auto;top:0;left:0;right:0;bottom:0;">
      <s:form action="teacher/material_addMaterial" method="post">
        <s:textfield name="material.mno" label="资料编号"></s:textfield>
        <s:textfield name="material.mtitle" label="资料标题"></s:textfield>
        <s:textfield name="material.msubject" label="资料科目"></s:textfield>
        <s:submit value="提交"></s:submit>
      </s:form>
      <br>
    </main>
  </body>
</html>
