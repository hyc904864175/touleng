<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册页</title>
<meta name="zhuceye" content="WYSIWYG Web Builder 12 - http://www.wysiwygwebbuilder.com">
<link href="注册页.css" rel="stylesheet">
<link href="index.css" rel="stylesheet">

</head>
<body>
<div id="wb_Image1" style="position:absolute;width:100%;height:100%;z-index:0;">
<img src="1514552637392.jpg"alt="Pulpit rock" width="100%" height="100%"></div>
<div id="wb_Signup2" style="position:absolute;left:70%;top:20%;width:310px;height:388px;z-index:1;">
<input type="hidden" name="form_name" value="signupform">
<table id="Signup2">
<form action="新用户.jsp"method="post">
<tr>
   <td class="header">欢迎注册啦啦啦啦</td>
</tr>
<tr>
   <td class="label"><label for="telephone">手机号</label></td>
</tr>
<tr>
   <td class="row"><input class="input" name="telephone" type="text" id="telephone"></td>
</tr>
<tr>
   <td class="label"><label for="username">用户名</label></td>
</tr>
<tr>
   <td class="row"><input class="input" name="username" type="text" id="username"></td>
</tr>
<tr>
   <td class="label"><label for="password">输入密码</label></td>
</tr>
<tr>
   <td class="row"><input class="input" name="password" type="password" id="password"></td>
</tr>
<tr>
   <td class="label"><label for="confirmpassword">请再次输入密码</label></td>
</tr>
<tr>
   <td class="row"><input class="input" name="confirmpassword" type="password" id="confirmpassword"></td>
</tr>
<tr>
   <td class="label"><label for="email">E-mail</label></td>
</tr>
<tr>
   <td class="row"><input class="input" name="email" type="text" id="email"></td>
</tr>
<tr>
   <td style="text-align:center;vertical-align:bottom"><input class="button" type="submit"value="申请注册"></td>
   
</tr>
</table>
</form>
</div>
</body>
</html>