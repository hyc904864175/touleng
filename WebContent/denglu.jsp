<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db" class="bean.DBBean"/>
<%
    request.setCharacterEncoding("UTF-8");
    String username=(String)request.getParameter("username");
    String password=(String)request.getParameter("password");//取出login.jsp的值
    
    //下面是数据库操作
    String sql="select * from zhuce where username="+"'"+username+"'";//定义一个查询语句
    ResultSet rs=db.executeQuery(sql);//运行上面的语句
    if(rs.next())
    {
        /* if(password.equals(rs.getString(2)))
        {
            
        } */
        if(password.equals(rs.getObject("password"))){
            response.sendRedirect("./dengjinqule/denglule.jsp");
        }
        else{
            out.print("<script language='javaScript'> alert('密码错误');</script>");
            response.setHeader("refresh", "0;url=NewFile2.jsp");
        }
    }
    else 
    {
        out.print("<script language='javaScript'> alert('账号错误——else');</script>");
        response.setHeader("refresh", "0;url=NewFile2.jsp");
    }
    
%>
</body>
</html>