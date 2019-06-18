<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shallow Security Manager</title>
   <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
   <script src="https://cdn.staticfile.org/jquery/2.0.0/jquery.min.js"></script>
   <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%


String uu="uu";
Date lastAccessTime = new Date(session.getLastAccessedTime());

if(session.getAttribute("account")==null){
	out.println("<script language='javascript'>alert('欢迎登录本平台，登陆后才可以使用功能哟');"+"window.location.href='login.jsp';</script>");

}else{
	
	uu=session.getAttribute("account").toString();
	lastAccessTime = new Date(session.getLastAccessedTime());
}


%>

<h3>欢迎你，用户：<%= uu %></h3>
<h3>上次登录记录:<%= lastAccessTime%></h3>
<div class="container">
<div class="container">
	<div class="jumbotron">
		<h3>欢迎使用浅层安全管理系统！</h3>
		<p>这是实习生张旭的一次尝试</p>
		<p><a class="btn btn-primary btn-lg" role="button">
			了解更多</a>
		</p>
	</div>
</div>
	<div class="container">
	

	
	<h2>主机列表</h2>
	<a herf=login.jsp>添加主机</a>                                      
	<table class="table table-striped">
		<thead>
			<tr>
				<th>序号</th>
				<th>IP</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>0.0.0.0</td>
			</tr>
			<tr>
				<td>2</td>
				<td>0.0.0.0.</td>
			</tr>
			<tr>
				<td>3</td>
				<td>0.0.0.0</td>
			</tr>
		</tbody>
	</table>
</div>

	<div class="row" >
		<div class="col-md-6"  style="background-color: #dedef8; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do 
			eiusmod tempor incididunt ut labore et dolore magna aliqua
<br>
			
			</p>

			<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
			a
			</p>
		</div>

		<div class="col-md-6" style="background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
			<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
			accusantium doloremque laudantium.
			</p>

			<p> Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, 
			consectetur, adipisci velit, sed quia non numquam eius modi 
			tempora incidunt ut labore et dolore magnam aliquam quaerat 
			voluptatem. 
			</p>
		</div>
	</div>
	<button type="button" class="btn btn-default btn-lg" >
	<span class="glyphicon glyphicon-user"></span> 登出
	
</div>



</body>
</html>