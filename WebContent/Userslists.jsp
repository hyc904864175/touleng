<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "[图片]http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="bao.generator"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有用户信息</title>
<style type="text/css">
	td{font-size: 12px;}
	h2{margin: 0px}
</style>
<script language="JavaScript">
<!--var password="";
password=prompt('请输入密码:','');
if (password != '123')  
{alert("密码错误!!");   
window.opener=null; window.close();} // 密码不正确就关闭//-->
</script>
</head>
<body>
<table align="center" width="450" border="1" height="180" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
	<tr bgcolor="white">
		<td align="center" colspan="5">
			<h2>所有用户信息</h2>
		</td>
	</tr>
	<tr align="center" bgcolor="#e1ffc1" >
		<td><b>手机号</b></td>
		<td><b>用户名</b></td>
		<td><b>密码</b></td>
		<td><b>E-mail</b></td>
	</tr>
<%
	List<generator> list = (List<generator>)request.getAttribute("list");
	for(generator generator1:list){
%>
	<tr align="center" bgcolor="white">
		<td><%=generator1.gettelephone()%></td>
		<td><%=generator1.getusername()%></td>
		<td><%=generator1.getemail()%></td>
		<td><%=generator1.getpassword()%></td>
	</tr>
	<%	
		}
	%>
	<tr>
		<td align="center" colspan="5" bgcolor="white">
			<%=request.getAttribute("bar")%>
		</td>
	</tr>
</table>
</body>
</html>
