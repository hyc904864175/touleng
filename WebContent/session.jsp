<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "[图片]http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>wuli 哔哩哔哩</title>
</head>
<body>
<head>
<style>
*{
box-sizing:border-box;
}
body{
margin:0;
}
/* stytle of header*/
.header{
background-color:#F660AB;
padding:20px;
text-align:center;
}
/* stytle of top navi*/
.topnavi{
overflow:hidden;
background-color:#FAAFBE;
}
.topnavi a {
display:block;
text-decoration:none;
color:	#FFFFFF;
float:left;/* all in one line*/
padding:14px;
}
.topnavi a:hover{
background-color:#FF0080;
color:black;
}
/*style of main content*/

.column{
float:left;



}
.column.middle {
width:50%;

}
.column.side{
width:22%;

}
.row:after{
content:"";
display:table;
clear:both;
}
@media screen and (max-width:600px){
.column.middle,.column.side{
width:100%;
}
}
.footer{
background-color:#FAAFBE;
text-align:center;
padding:15px 10px;
}

</style>
</head>
<body>
<div class="header">
<b><h1>致敬BILIBILI
<img src="小人.gif" ></h1>
</div>
<div class="topnavi">
<a href="[图片]https://www.bilibili.com/v/douga/?spm_id_from=333.334.primary_menu.2">动画</a>
<a href="[图片]https://www.bilibili.com/v/douga/mad/?spm_id_from=333.5.primary_menu.3#/">MAD</a>
<a href="[图片]https://www.bilibili.com/v/douga/mmd/?spm_id_from=333.54.primary_menu.4#/">MMD</a>
<a href="[图片]https://www.bilibili.com/v/douga/voice/?spm_id_from=333.334.primary_menu.5">短片&手书&配音</a>
<a href="[图片]https://bangumi.bilibili.com/22/?spm_id_from=333.56.primary_menu.7">番剧</a>
<a href="[图片]https://bangumi.bilibili.com/guochuang/">国创</a>
<a href="[图片]https://www.bilibili.com/v/game/?spm_id_from=333.5.primary_menu.33">游戏</a>
<a href="[图片]https://www.bilibili.com/v/technology/?spm_id_from=333.8.primary_menu.42">科技</a>
<a href="[图片]https://www.bilibili.com/v/life/?spm_id_from=333.9.primary_menu.50">生活</a>
<a href="[图片]https://www.bilibili.com/v/kichiku/?spm_id_from=333.10.primary_menu.60">鬼畜</a>
<a href="[图片]https://www.bilibili.com/v/douga/">综合</a>
<select name="select">
<option>别点开</option>
<option>既然点开</option>
<option>那就关注我们一下吧</option>
<option>又不会怀孕</option>
</select>
<img src="喵.gif" >
</div>
<div class="row">
<div class="column side">
<h2>Up主创意展览区</h2>
<p>
<img src="123.gif">
</p>
<br>
<img src="小视频.jpg">
</br>
<br>
<img src="相簿.jpg">
</br><br>

<li>
<a href="#">每日新番</a>
</li><br>
<li>
<a href="#">cosplay</a>
</li><br>
</div>

<div class="column middle">
<h2>头条</h2>
<p><h3>《紫罗兰永恒花园》今日上映！</h3><br>
<img src="131434ieu1iuisuufisjuf.jpg" alt="Pulpit rock" width="95%" height="60%"></p><br>
</div>
<div class="column side">

<%
request.setCharacterEncoding("utf-8");
String community=request.getParameter("community");
String navyname=request.getParameter("navyname");
String sex=request.getParameter("sex");
session.setAttribute("community",community);
session.setAttribute("navyname",navyname);
session.setAttribute("sex",sex);
%>
<form id="form1"name="name1"method="post"action="result.jsp">
<tr>
<td>你现在来到了 社区:</td>
<td><%=community%></td>
</tr><br><br>
<tr>
<td>水军名 :</td>
<input type="text" name="navyname" value="">
<br><br>
<td>性别：</td>
<input type="radio"name="sex"value="小可爱"> 小可爱 <input type="radio"name="sex"value="老巫婆"> 老巫婆 <br><br>
<input type="submit" value="戳戳">
</tr>
</form>


<br><br><p>《紫罗永恒开花园》第一集就看哭了</p>
<p><img src="TIM图片20180328194615.jpg"></p>
</div>
</div>
<div class="footer">
致敬BILIBILI——信管161班web开发课程设计
</div>
</body>
</html>
</body>
</html>