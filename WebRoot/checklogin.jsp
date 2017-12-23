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
  <%
			// 获取用户名和密码
			String strUname = request.getParameter("uname");
			String strUpwd = request.getParameter("upwd");
			
			

			if(strUname.equals("admin")&&strUpwd.equals("123456"))
			{
				response.sendRedirect("welcome.jsp?uname="+String.valueOf(strUname));
			}else if(strUname == "" )
			{
				 String script = "<script>alert('用户名不能为空，请重新登陆');location.href='login.jsp'</script>";
  				 response.getWriter().println(script);
			}else if(strUpwd == "")
			{
				 String script = "<script>alert('密码不能为空，请重新登陆');location.href='login.jsp'</script>";
  				 response.getWriter().println(script);
			}else if(!strUname.equals("admin"))
			{
				 String script = "<script>alert('用户名错误，请重新登陆');location.href='login.jsp'</script>";
  				 response.getWriter().println(script);
			}else if(!strUpwd.equals("123456"))
			{
				 String script = "<script>alert('密码错误，请重新登陆');location.href='login.jsp'</script>";
  				 response.getWriter().println(script);
			}
		%>
  </body>
</html>
