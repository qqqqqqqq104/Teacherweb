<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
     <% 
    //获得id：先获得newsDetailList中标题超链接中的id
	//int eno=Integer.parseInt(request.getParameter("eno"));
	String etitle=new String(request.getParameter("ztitle").getBytes("iso-8859-1"), "utf-8");
	String econtent=new String(request.getParameter("zcontent").getBytes("iso-8859-1"), "utf-8");
    %> 
    <title><%out.println(etitle);%></title>
  </head>
  
  <body>
  <center><div><h1><%out.println(etitle);%></h1></div></center>
  <hr><br>
  <form>
  <textarea cols="100" rows="300" name="expcontent" style="border:none;font-size:18px;width:650px;height:500px;margin-left:360px;">
  <%=econtent%>
  </textarea>
  </form>
  </body>
</html>
