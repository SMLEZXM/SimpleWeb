<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.zx.UsePsql"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<%

response.setContentType("text/html");
response.setCharacterEncoding("utf-8");
request.setCharacterEncoding("utf-8");
String account=request.getParameter("user");
String password=request.getParameter("pwd");
String repassword=request.getParameter("rpwd");
if(account==null){
	out.println("<script language='javascript'>window.location.href='index.jsp';</script>");
}else{
if(password.equals(repassword)){
String sex=request.getParameter("sex");
account=UsePsql.registUser(account, password);
if(account.equals("注册成功")){
	out.println("<script language='javascript'>alert('注册成功,点击确认进入登录页面!');"+"window.location.href='index.jsp';</script>");
}else if(account.equals("该账号已被注册")){
	out.println("<script language='javascript'>alert('对不起,该账号已被抢注了,换个账号吧');"+"window.location.href='login.jsp';</script>");
}else{
	out.println("<script language='javascript'>alert('对不起,系统出现问题了,请联系管理员');"+"window.location.href='login.jsp';</script>");
}
}else{
	out.println("<script language='javascript'>alert('前后密码不一致');"+"window.location.href='login.jsp';</script>");
}
}
%>
</body>
</html>