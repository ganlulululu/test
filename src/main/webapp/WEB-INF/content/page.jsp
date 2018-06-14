<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()
+":"+request.getServerPort()+path+"/"; 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<base href=" <%=basePath%>"> 
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>江苏省能源经济管理研究中心</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/indexstyle.css" rel="stylesheet" />
 <script type="text/javascript">  
        function readysubmit1() {  
                document.getElementById("formid1").submit();       
        }  
        function readysubmit2() {  
            document.getElementById("formid2").submit();       
    }  
    </script>
  
</head>
<body>
	<nav
		class="navbar navbar-inverse navbar -fix-top hidden-sm hidden-lg hidden-md">
	<div class="navbar-header">
		<div>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-ex1-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<img class="img-responsive pull-left" src="images/logo.png"
				alt="中国矿业大学能源所Logo">
			<div>
				<div class="col-lg-3 pull-right"">

				<form action="select" method="post" id="formid2">
						<div class="input-group" style="padding: 0; padding-top: 80px">
					
						<input type="text" class="form-control"
							placeholder="Search for..." name="words"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button" onclick="return readysubmit2();">
								<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
							</button>
						</span>
						
						</div>
					</form>



				</div>
			</div>
		</div>
	</div>
	<div class="collapse navbar-collapse" id="navbar-ex1-collapse">
		<ul class="nav navbar-nav ">
			<li><a id="dropdown-toggle" href="index"><strong>中心首页</strong></a></li>
			<c:forEach var="name" items="${requestScope.navNameList}">
				<li role="presentation" class="dropdown "><a id="dropdown-toggle"
					class="dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">
						${name}<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
							<c:if test="${name=='中心简介'}">
								<c:forEach var="navber" items="${requestScope.a1}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='组织机构'}">
								<c:forEach var="navber" items="${requestScope.a2}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='学术队伍'}">
								<c:forEach var="navber" items="${requestScope.a3}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='科学研究'}">
								<c:forEach var="navber" items="${requestScope.a4}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='学术交流'}">
								<c:forEach var="navber" items="${requestScope.a5}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>

							<c:if test="${name=='人才培养'}">
								<c:forEach var="navber" items="${requestScope.a6}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='资源链接'}">
								<c:forEach var="navber" items="${requestScope.a7}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='咨询服务'}">
								<c:forEach var="navber" items="${requestScope.a8}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
						</ul></li>
			</c:forEach>
		</ul>

	</div>
	</nav>

	<!-- -------------------------------------------------------------电脑端--------------------------------------------------------------- -->
	<div class="container" id="topcontainer">
		<nav class="navbar navbar-inverse navbar -fix-top hidden-xs">
		<div class="navbar-header">
			<div>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-ex1-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<div class="pull-left">
				
					<img src="images/logo.png">

				</div>
			
				<div class="col-lg-3 pull-right">

				
				<form action="select" method="post" id="formid1">
						<div class="input-group" style="padding: 0; padding-top: 80px">
					
						<input type="text" class="form-control"
							placeholder="Search for..." name="words"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button" onclick="return readysubmit1();">
								<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
							</button>
						</span>
						
						</div>
					</form>

				</div>

			</div>
		</div>
		<!--  ---------------------------navbar-brand---------------->
		<div class="collapse navbar-collapse navbar-brand"
			id="navbar-ex1-collapse">
			<ul class="nav navbar-nav ">
				<li>&emsp;&nbsp;</li>
				<li><a href="index"
					id="dropdown-toggle">中心首页</a></li>
				<c:forEach var="name" items="${requestScope.navNameList}">
					<li role="presentation" class="dropdown "
						onMouseOver="displaySubMenu(this)" onMouseOut="hideSubMenu(this)">
						<a id="dropdown-toggle" class="dropdown-toggle" data-toggle="dropdown" href="#"
						role="button" aria-haspopup="true" aria-expanded="false">
							${name}<span class="caret"></span>
					</a>

						<ul class="dropdown-menu">
							<c:if test="${name=='中心简介'}">
								<c:forEach var="navber" items="${requestScope.a1}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='组织机构'}">
								<c:forEach var="navber" items="${requestScope.a2}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='学术队伍'}">
								<c:forEach var="navber" items="${requestScope.a3}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='科学研究'}">
								<c:forEach var="navber" items="${requestScope.a4}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='学术交流'}">
								<c:forEach var="navber" items="${requestScope.a5}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>

							<c:if test="${name=='人才培养'}">
								<c:forEach var="navber" items="${requestScope.a6}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='资源链接'}">
								<c:forEach var="navber" items="${requestScope.a7}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${name=='咨询服务'}">
								<c:forEach var="navber" items="${requestScope.a8}">
									<li class="dropdown-brand"><a href="${navber.module_url}">${navber.module_name}</a></li>
								</c:forEach>
							</c:if>
						</ul>

					</li>
				</c:forEach>
			</ul>

		</div>
		</nav>
	</div>
	<!--  body开始-->
	<div class="body">
		<div class="container" id="maincontainer">
			<div class="container col-sm-12 col-md-12"
				style="background-color: #ffffff; padding:0px">
				<div>
					<c:forEach items="${requestScope.module1_list}" var="module"
						begin="0" end="0">
						<img class="img-responsive" src="images/${module.image}" />
					</c:forEach>
					
				</div>
				<div class="container">
					<div class="row">
						 <br> 
					</div>
					
				</div>
				<div class="row">
					
				</div>

				<div class="container">
					<div class="row">

						<div class="col-sm-4 col-md-3 " id="left-nav">
							<div style="background-color: #2E8B57; color: #F8F5F5;">
								<c:set var="module1" value="${requestScope.module}"></c:set>
								<label
									style="font-size: 18px; background-color: #2E8B57; margin-top: 10px">&nbsp;${module1.whole_name}</label>
									
							</div>

		<!-- 左边列表 -->					
							<ul class="nav nav-pills nav-stacked">
								<c:forEach var="module" items="${requestScope.module_List}">
									<c:set var="module1" value="${requestScope.module}"></c:set>
									<li role="presentation"><a
										href="${module.module_url}${1}"><span
											style="color: #2E8B57"
											class="glyphicon glyphicon-chevron-right"></span>${module.name}</a></li>
								</c:forEach>
								
							</ul>


						</div>
						<div class="col-sm-7 col-md-8">
							<div class="col-md-12">
								<!--  <div class="col-md-12">

												<div class="col-md-8">
													
												<h2>${thirdPage.name}</h2>
												
												<div class="pull-right">
													
													<li style="margin-top:50px"><a href="http://localhost:8080/fkbookapp/index">首页>></a>
																<a href="${module1.module_url}${module1.page}">${thirdPage.whole_name}>></a>
																<strong>${thirdPage.name}</strong></li>
														
												
												</div>
												
											</div>
											<div class="col-md-12">
											<hr id="contenthr"/>
											</div>
								<div>-->
								<div class="row" >
								<c:forEach items="${requestScope.moduleList}" var="module"
										begin="0" end="0">
										<nav class=" navbar navbar-left" id="dqwz" role="navigation" style="float:left;margin-top:10px;margin-left:15px"><h2><strong>${module.name}</strong></h2></nav>
										
									</c:forEach> 
								 <nav class=" navbar navbar-right" id="dqwz" role="navigation">
					            	<ol class="breadcrumb" >
					                  <li>当前位置：</li>
					                  <li><a href="index">首页</a></li>
									<c:set var="module1" value="${requestScope.module}"></c:set>
									<li><a href="javascript:;" >${module1.whole_name}</a></li>
									<li><c:forEach
								items="${requestScope.modulepagelist}" var="module" begin="0"
								end="0">
								<span style="color: #929292"><strong>${module.name}</strong></span>
								</c:forEach>
								</li>
					            	 </ol>
								 </nav>
							</div>
							<hr>
						
								<%-- 标题及位置导航<div class="col-md-8">
									<c:forEach items="${requestScope.moduleList}" var="module"
										begin="0" end="0">
										<h2 style="margin: 0px">
											<strong>${module.name}</strong>
										</h2>
										
									</c:forEach>
								</div>
								<div class="pull-right">
								<li style="margin-top:50px">
									<a href="index">首页>></a>
									<c:set var="module1" value="${requestScope.module}"></c:set>
									<a href="javascript:;" >${module1.whole_name}>></a><c:forEach
								items="${requestScope.modulepagelist}" var="module" begin="0"
								end="0">
								<span style="color: #929292"><strong>${module.name}</strong></span>
								</c:forEach>
								</li>
								</div>	 --%>
								</div>
								<div class="col-md-12">
									<hr id="contenthr"/>
								</div>
								<br>
								<hr id="contenthr">
								<c:set var="module1" value="${requestScope.module}"></c:set>
								<img class="img-responsive" src="images/${module1.image}" />
								<br>
								<div class="body2">
									<div class="col-sm-12 col-md-12">
										<div class="col-sm-10 col-md-10" style="float: left">

											<c:forEach items="${requestScope.modulepagelist}" var="module">
												<c:set var="content_id" value="${module.content_id}"></c:set>
											
												<li id="list_li"><img src="images/index_dd.jpg">&emsp;<a 
													href="${module.url}${content_id}"
													title="${module.longtitle}">${module.longtitle}</a></li>
											</c:forEach>

										</div>
										<div style="text-align: right;"class="col-sm-2 col-md-2 col-lg-2 visible-lg">

											<c:forEach items="${requestScope.modulepagelist}" var="module">

												<li id="list_li"><span>${module.year}-${module.month}-${module.date}</span></li>
											</c:forEach>

										</div>
									</div>
									<div class="container col-sm-12 col-md-12">
									
										<br />
										<hr>
									</div>
									<div id="page">
										<c:forEach items="${requestScope.modulepagelist}" var="module"
											begin="0" end="0">
											<p class="text-center">
												<a href="module/${module_id}/${1}">首页</a>&emsp;&emsp;<a
													href="module/${module_id}/${requestScope.lastpage}">&lt&lt上一页</a>&emsp;&emsp;当前为第${requestScope.pages2}页&emsp;&emsp;<a
													href="module/${module_id}/${requestScope.nextpage}">下一页>></a>&emsp;&emsp;共${requestScope.finalpage}页<a
													href="module/${module_id}/${requestScope.finalpage}">&emsp;&emsp;尾页</a>
											</p>
										</c:forEach>
									</div>
									<hr id="contenthr">
									</table>

								</div>

							</div>
						</div>
						<br /> <br />
					</div>
				</div>

					<img class=" img-responsive" src="images/页尾.png">
				</div>

				<script type="text/javascript" src="js/jquery.min.js"></script>
				<script type="text/javascript" src="js/bootstrap.min.js"></script>
				<script type="text/javascript" src="js/indexjs.js"></script>
</body>
</html>