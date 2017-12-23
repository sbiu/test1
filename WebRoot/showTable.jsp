<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <jsp:include page="showInclude.jsp"flush="true"/>
  
  <% String[] stuNos ={"01","02","03","04"};
  	 String[] stuNames={"张建浩","张朝宇","刘云飞","贾文博"};
  	 String[] stuMajors={"计算机","考古","养猪","道士"}; %>
    <center>
    	<table border=1>
   			<tr>
    			<td>学号</td>
    			<td>姓名</td>
    			<td>专业</td>
    		</tr>
    <% 
    	for(int i=0;i<4;i++)
    	{
    		String num=stuNos[i];
    		String name=stuNames[i];
    		String major=stuMajors[i];
    	 %>	
    		<tr>
    			<td><%= num %></td>
    			<td><%= name %></td>
    			<td><%= major %></td>
    		</tr>
    		<% } %>
    	
    
    		
    	</table>
    </center>
  </body>
</html>
