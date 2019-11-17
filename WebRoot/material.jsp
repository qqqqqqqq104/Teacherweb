<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>资料列表</title>
    <meta charset="utf-8">
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
	    <s:form>
	      <table>
	         <c:forEach var="material" items="${materialList}">
	           <tr>
	             <td><c:out value="${material.mno}"></c:out></td>
	             <td><c:out value="${material.mtitle}"></c:out></td>
	             <td><c:out value="${material.msubject}"></c:out></td>
	           </tr>
	         </c:forEach>
	       </table>
	    </s:form>
	</main>
  </body>
</html>
