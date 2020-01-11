<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>查看</title>
    <link href="style/navigation.css" rel="stylesheet" type="text/css"/>
    <style>
       body {
            height: 100%;width: 100%;
        }
       .top{
          width:100%;
          height:70px;
          top:0px;
          left:0px;
          background: url('images/dao.jpg');
          background-size:cover;
       }
       .main{
          width:100%;
          height:420px;
          margin-top:20px;
          background:url('images/index.jpg');
          background-size:cover;
       }
       .t1{
          width:500px;
       }
       .t2{
          width:60px;
       }
    </style>
  </head>
  
  <body>
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
  <div class="content" style="text-align:center;width:100%;height:100%;margin-top:60px;">
  <table style="margin-left:450px;">  
      <s:iterator value="list" status="li" var="post">
           <tr>
           <td class="t1"><a class="a1" href="discontent.jsp?ztitle=${post.ztitle}&zcontent=${post.zcontent}">${post.ztitle}</a></td>
           <td class="t2"><a class="a2" href="updateExp.jsp?ztype=${post.ztype}&zid=${post.zid}&zcontent=${post.zcontent}&ztitle=${post.ztitle}">[修改]</a>
           </td>
           <td class="t2"><a class="a2" href="deleteExp.action?ztype=${post.ztype}&zid=${post.zid}">[删除]</a>
           </tr>
      </s:iterator>
  </table>
  </div>
  <div style="width:90px;height:40px;margin-left:1000px;margin-top:-200px;">
        <a href="add.jsp">
        <input type="submit" value="添加" style="width:70px;height:35px;">
        </a>
  </div>
  </body>
</html>
