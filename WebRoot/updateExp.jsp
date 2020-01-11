<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <% 
    //获得id：先获得newsDetailList中标题超链接中的id
	int eno=Integer.parseInt(request.getParameter("zid"));
	String etitle=new String(request.getParameter("ztitle").getBytes("iso-8859-1"), "utf-8");
	String econtent=new String(request.getParameter("zcontent").getBytes("iso-8859-1"), "utf-8");
    String etype=new String(request.getParameter("ztype").getBytes("iso-8859-1"), "utf-8");
    %> 
    <title>修改经验帖</title>
    <style>
       body {
            height:100%;
            width:100%;
            background: url('images/index.jpg');
            background-size:cover;
        }
        #parent{
            width:800px;
            height:680px;
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
  <form action="updateExp?zid=<%=eno%>&ztype=<%=etype%>" method="post" style="padding-top:40px;">
        <span style="font-size:21px;font-weight:bold;">修改<%=etype%></span><hr><br><br>
        <span style="font-size:18px;"><%=etype%>标题：<input name="ztitle" type="text" style="width:600px;height:35px;" value="<%=etitle%>"/></span><br><br>
        <span style="font-size:18px;float:left;margin-left:53px;"><%=etype%>内容：</span><textarea cols="100" rows="300" name="zcontent" style="width:600px;height:400px;display:inline;margin-left:-48px;"><%=econtent%></textarea><br><br>
        <input type="submit" value="修改" style="width:100px;height:30px;margin-left:500px;margin-top:10px;"/>
  </form>
  </div>
    </div>
  </body>
</html>
