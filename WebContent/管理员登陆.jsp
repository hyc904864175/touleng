<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登陆</title>
</head>
<body>
<center><br>    <form id="indexform" name="indexForm" action="denglu.jsp" method="post">
                <tr>
                        <td>管理员姓名：</td>
                        <td><input type="text" name="username"></td>
                    </tr><br><br>
                    <tr>
                        <td>管理员密码：</td>
                        <td><input type="password" name="password">
                        </td>
                    </tr>
            <br><br>
                <input type="submit" value="登录" >
            </form></center>
</body>
</html>