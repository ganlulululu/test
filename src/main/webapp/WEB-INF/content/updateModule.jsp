<%String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>江苏省能源经济管理研究中心</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/login.css" rel="stylesheet" />
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- MetisMenu CSS -->
<link href="css/metisMenu.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/sb-admin-2.css" rel="stylesheet">
</head>
<div class="container">
	<div class="container" id="topcontainer2">
		<div class="navbar-header">
			<img class=" img-responsive" src="images/后台管理.png">
		</div>
	</div>
	<div class="body">
		<div class="container" style="border: 1px solid #969696;">
			<div class="row">
				<div class="col-lg-12 col-sm-12 col-md-12 col-xs-12"
					style="background-color: #FCFCFC">
					<div style="text-align: right; padding-top: 10px;">
						当前位置：<a href="index">首页</a><small>>>更新模块选择</small>
					</div>
					<hr>
					<div class="row">
						<div class="col-lg-3 col-xm-12 col-md-12 col-xs-12">
							<!-- <div style="color: #F8F5F5">
								<label style="font-size: 18px; margin-top: 10px"><h3>&emsp;模块管理</h3></label>
							</div>
							<ul class="nav nav-pills nav-stacked" >
									<li role="presentation"><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>模块内容</a></li>
									<li role="presentation"><a href="http://localhost:8090/fkbookapp/management/updateModule"><span class="glyphicon glyphicon-chevron-right"></span>更新内容</a></li>
								</ul>
							<div style="color: #F8F5F5">
								<label style="font-size: 18px; margin-top: 10px"><h3>&emsp;文件管理</h3></label>
							</div>
							<ul class="nav nav-pills nav-stacked" >
								<li role="presentation"><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>文件浏览</a></li>
								<li role="presentation"><a href="http://localhost:8090/fkbookapp/management/DocumentUpdate"><span class="glyphicon glyphicon-chevron-right"></span>上传文件</a></li>
								<li role="presentation"><a href="http://localhost:8090/fkbookapp/management/DocumentUpdate"><span class="glyphicon glyphicon-chevron-right"></span>上传图片</a></li>
							</ul> -->
							<nav class="navbar navbar-default navbar-static-top"
								role="navigation" style="margin-bottom: 0">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
								<a class="navbar-brand" href="#">管理</a>
							</div>
							<div class="navbar-default sidebar" role="navigation">
								<div class="sidebar-nav navbar-collapse">
									<ul class="nav" id="side-menu">
										<!--   <li>
				                            <a href="#"><i class="fa fa-dashboard fa-fw"></i> 内容更新</a>
				                        </li> -->
										<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
												模块管理<span class="fa arrow"></span></a>
											<ul class="nav nav-second-level">
												<li><a href="#">模块内容</a></li>
												<li><a href="management/updateModule">更新内容</a></li>
											</ul> <!-- /.nav-second-level --></li>

										<li><a href="#"><i class="fa fa-wrench fa-fw"></i>
												文件管理<span class="fa arrow"></span></a>
											<ul class="nav nav-second-level">
												<li><a href="#">文件浏览</a></li>
												<li><a href="management/DocumentUpdate">上传文件</a></li>
												<li><a href="management/PicUpdate">上传图片</a></li>

											</ul> <!-- /.nav-second-level --></li>


									</ul>
								</div>
								<!-- /.sidebar-collapse -->
							</div>
							<!-- /.navbar-static-side -->
						</div>
						</nav>
						<div class="col-lg-8 col-xm-9 col-md-9 col-xs-9"
							style="border-left: 1px solid #969696;">
							<div
								style="margin-top: 30%; margin-left: 10%; margin-bottom: 42%;">
								<form action="<%=basePath%>management/indexUpdateB"
									method="post">
									<h3>请选择需要添加的模块</h3>
									<select class="selectpicker" data-style="btn-primary"
										name="MoudleId">
										<option value=""></option>
										<option value="学术活动">学术活动</option>
										<option value="行业动态">行业动态</option>
										<option value="中心动态">中心动态</option>
										<option value="通知公告">通知公告</option>
										<option value="图片新闻">图片新闻</option>

									</select> <input type="submit" class="btn btn-default" name="确定"
										style="width: 10%" />
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container" id="bottom-container">
		<img class=" img-responsive" src="images/页尾.png">
	</div>
</div>


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/indexjs.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="js/sb-admin-2.js"></script>
</body>
</html>
