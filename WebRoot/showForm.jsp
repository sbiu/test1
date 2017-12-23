<%@ page language="java" import="java.util.*" 
    pageEncoding="utf-8"%>
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
	<script language="javascript"> 
function baocun(){
	var val=document.myform.uname.value;
			if(!val)
				alert("用户名不能为空！！！");
			var valu=document.myform.upwd.value;
			var value=document.myform.zupwd.value;
			if(valu!=value)
				alert("两次输入密码不一致！！！");
			var valuea=document.myform.question.value;
				alert("选择的密保问题为："+valuea);
			var valueaa=document.myform.gender.value;
			if(!valueaa){
				alert("请选择性别！！！");
				}else{alert("性别："+valueaa);
				}
}

</script> 
	
  </head>
  
  <body><br><br><br>
	<form action="" method="post" name="myform">
     <center>
     <table width="700" border="0" align="center">
     	<tr><td align="left"><font color="blue">创建您的帐号</font></td></tr>
			<tr>
				<td width="50%" align="right">用户名：<font color="red">*</font></td>
				<td width="50%" ><input type="text" name="uname" style="width:90px;"><input type="button" value="检测"></td>
			</tr>
			<tr>
				<td width="50%"  align="right">密码: <font color="red">*</font></td>
				<td width="50%"  ><input type="text" name="upwd"></td>
			</tr>
			<tr>
				<td width="50%"  align="right">再次输入密码:<font color="red">*</font></td>
				<td width="50%" ><input type="text" name="zupwd"></td>
			</tr>
		<tr><td align="left"><font color="blue">安全信息设置</font><font size="2">（以下信息非常重要，请慎重填写）</font></td></tr>
			<tr>
				<td width="50%"  align="right">密码保护问题:<font color="red">*</font></td>
				<td width="50%" ><SELECT name="question">
        				<OPTION value="01" selected>请选择密码提示问题
      			 	 	<OPTION value="02" >父亲姓名
      			 	 	<OPTION value="03" >母亲姓名
      			 	 	<OPTION value="04" >家庭电话号码
 					</SELECT></td>
			</tr>
			<tr>
				<td width="50%"  align="right">密码保护问题答案：<font color="red">*</font></td>
				<td width="50%" ><input type="text" name="answer"></td>
			</tr>
			<tr>
				<td width="50%"  align="right">性别：<font color="red">*</font></td>
				<td width="50%" >
					<input name="gender" type="radio" value=“男" checked>男
					<input name="gender" type="radio" value=“女" checked>女
				</td>
			</tr>
			<tr>
				<td width="50%"  align="right">出生日期：<font color="red">*</font></td>
				<td width="50%" >
				<input type="text" name="year" style="width:40px;">年
				<input type="text" name="month" style="width:20px;">月
				<input type="text" name="day" style="width:20px;">日</td>
			</tr>
			<tr>
				<td width="50%"  align="right">手机号：</td>
				<td width="50%" ><input type="text" name="telnum"></td>
			</tr>
			<tr><td></td>
				<td width="50%"><input type="submit" value="保存" onClick="baocun()">
				<input type="button" value="取消"></td>
			</tr>
		</table>
	</center>
	</form>
	注册信息显示
	<% 
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("uname");
	String pwd = request.getParameter("upwd");
	String question1 = request.getParameter("question");
	String answer1 = request.getParameter("answer");
	String gender1 = request.getParameter("gender");
	String year1 = request.getParameter("year");
	String month1 = request.getParameter("month");
	String day1 = request.getParameter("day");
	String telnum1 = request.getParameter("telnum");
	
	
	 %>
	<br>用户名：<%= name %>
	<br>密码：<%= pwd %>
	<br>问题：<%= question1 %>
	<br>答案：<%= answer1 %>
	<br>性别：<%= gender1 %>
	<br>出日：<%= year1 %>年<%= month1 %>月<%= day1 %>日
	<br>手机：<%= telnum1 %>
  </body>
</html>