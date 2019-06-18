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
String sessionAccount=account;
if(account==null){
	out.println("<script language='javascript'>window.location.href='index.jsp';</script>");
}else{
	account=UsePsql.login(account, password);
	out.print(account);
	if(account.equals("登录成功")){
		session.setAttribute("account", sessionAccount);
		out.println("<script language='javascript'>alert('登录成功,点击确认进入首页!');"+"window.location.href='index.jsp';</script>");
	}else if(account.equals("用户名或密码错误")){
		out.println("<script language='javascript'>alert('用户名或密码错误'+account);"+"window.location.href='login.jsp';</script>");
	}else if(account.equals("没有找到该用户")){
		out.println("<script language='javascript'>alert('用户名或密码错误哦!');"+"window.location.href='login.jsp';</script>");
	}
}
out.print(account);
%>
</body>
</html>