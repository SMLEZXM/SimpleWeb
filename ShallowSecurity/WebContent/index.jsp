<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h2>表格</h2>
	<p> .active 类将悬停的颜色应用在行或者单元格上:</p>                                        
	<table class="table table-striped">
		<thead>
			<tr>
				<th>#</th>
				<th>Firstname</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Anna</td>
			</tr>
			<tr>
				<td>2</td>
				<td>Debbie</td>
			</tr>
			<tr>
				<td>3</td>
				<td>John</td>
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
	<button type="button" class="btn btn-default btn-lg">
	<span class="glyphicon glyphicon-user"></span> User
</div>

<div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
            成功！很好地完成了提交。
        </div>
        <div class="alert alert-info alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
            信息！请注意这个信息。
        </div>
        <div class="alert alert-warning alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
            警告！请不要提交。
        </div>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
            错误！请进行一些更改。
        </div>

</body>
</html>