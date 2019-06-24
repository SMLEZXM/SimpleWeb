<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>奇了怪了</title>
</head>
<body>
<% 

String uu="dd";
uu=session.getAttribute("account").toString();
//session.removeAttribute("account");
session.invalidate();  

out.println("<script language='javascript'>alert('当前用户已登出');"+"window.location.href='index.jsp';</script>");
%>
</body>
</html>