<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%request.setCharacterEncoding("utf-8");%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册结果</title>
</head>
<body>
	<jsp:useBean id="user" class="bao.generator"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	<%
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/zhuce1";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "123123";
			// 创建Connection连接
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/zhuce1","root","123123");
			// 添加图书信息的SQL语句
			String sql = "insert into zhuce(telephone,username,password,email) values(?,?,?,?)";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,user.gettelephone());
			ps.setString(2,user.getusername());
			ps.setString(3,user.getpassword());
			ps.setString(4,user.getemail());
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				out.print("成功申请了 " + row + "个账号！");
			}
			// 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("账号注册失败！");
			e.printStackTrace();
		}
	%>
	<br>
	<a href="NewFile2.jsp">返回</a>
</body>
</html>