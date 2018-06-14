<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>管理员登陆</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/login.css" rel="stylesheet" />
</head>
	<!--  body开始-->
	<body>
	
	<div class="container" >
	<div class="container" id="topcontainer2"  >
			<div class="navbar-header">
				<img class=" img-responsive" src="images/后台管理.png">
			</div>
	</div>
	<div class="body">
		<div class="container"  style="border:1px solid #969696;">
			<div class="row">
				<div class="col-lg-12 col-sm-12 col-md-12 col-xs-12"  style="background-color: #FCFCFC">
					<div style="text-align:right;padding-top:10px;">
						<h4 style="margin-top:0;margin-bottom:0;">当前位置：<a href="#">管理员</a><small>>>管理员登录</small></h4>
					</div><hr>
					<div class="row" >
					<div class="col-lg-12 col-xm-12 col-md-12 col-xs-12" style="margin-top: 20%;margin-bottom: 20%;margin-top: 20%;margin-left: 30%;margin-right:10%" >
						<div>
							<p><h3>管理员登录</h3></p>
			<form role="form" action="login" method="post">
				${requestScope.message}
				${requestScope.message2}
				<div class="form-group">
					 <label for="exampleInputName">Administrator</label><input type="text" name="loginname"class="form-control"  style ="width: 30%" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Password</label><input type="password" name="password" class="form-control" style ="width: 30%" />
				</div>
				<button type="submit" class="btn btn-default">Login</button>
				 <!-- <input type="submit" class="btn btn-default" name="Login"/> -->
			</form>
					
					</div>
				</div>
			</div>
		</div>
	</div><hr>
		</div>

	<div class="container"  id="bottom-container">
  		<img class=" img-responsive" src="images/页尾.png">
	</div>
</div>  


	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/indexjs.js"></script>
</body>
</html>
