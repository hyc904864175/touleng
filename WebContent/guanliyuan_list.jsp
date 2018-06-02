<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "[图片][图片]http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="bao.generator"%>
<%request.setCharacterEncoding("utf-8");%>
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

<style type="text/css">
	form{margin: 0px;}
	td{font-size: 12px;}
	h2{margin: 2px}
</style>

<script type="text/javascript">
	function check(form){
		with(form){
			if(telephone.value == ""){
				alert("请输入更新数量！");
				return false;
			}
			if(isNaN(telephone.value)){
				alert("格式错误！");
				return false;
			}
			return true;;
		}
	}
</script>
</head>
<body>
	<table align="center" width="700" border="1" height="200" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
		<tr bgcolor="white">
			<td align="center" colspan="6">
				<h2>所有用户信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#e1ffc1" >
			<td><b>手机号</b></td>
			<td><b>用户名</b></td>
			<td><b>密码</b></td>
			<td><b>E-mail</b></td>
			<td><b>修改手机号</b></td>
			<td><b>删除</b></td>
		</tr>
			<%
				// 获取图书信息集合
					List<generator> list = (List<generator>)request.getAttribute("list");
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历图书集合中的数据
						for(generator generator1: list){
			%>
		<tr align="center" bgcolor="white">
					<td><%=generator1.gettelephone()%></td>
					<td><%=generator1.getusername()%></td>
					<td><%=generator1.getpassword()%></td>
					<td><%=generator1.getemail()%></td>
			<td>
				<form action="UpdateServlet" method="post" onsubmit="return check(this);">
				<input type="hidden" name="username" value="<%=generator1.getusername()%>"> 
				<input type="text"  name= "telephone" size="11">
				<input type="submit" value="修　改">
				</form>
			</td>
			
			<td>
				<a href="DeleteServlet?username=<%=generator1.getusername()%>">删除</a>
			</td>
		</tr>
			<%
					}
				}
			%>
	</table>
</body>
</html>
