<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
String sex =request.getParameter("sex");
   String community =request.getParameter("community");
   String navyname =request.getParameter("navyname");
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>(๑´ㅂ`๑)</p>欢迎  <%=sex %><br>
你现在来到了 社区: <%=community%><br>
你肯定就是那只水军(•̀ᴗ•́)و ̑̑: <%=navyname%><br>
<p> 你看起来  很好吃ლ(╹◡╹ლ)</p>
</body>
</html>