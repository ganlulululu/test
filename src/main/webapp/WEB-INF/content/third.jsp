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
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>${thirdPage.name}</title>
 <base href=" <%=basePath%>">
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
						<div class="input-group">

							<input type="text" class="form-control"
								placeholder="Search for..." name="words"> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button"
									onclick="return readysubmit2();">
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
			<li><a id="dropdown-toggle"
				href="index"
				>中心首页</a></li>
			<c:forEach var="name" items="${requestScope.navNameList}">
				<li role="presentation" class="dropdown "><a
					id="dropdown-toggle" class="dropdown-toggle" data-toggle="dropdown"
					href="#" role="button" aria-haspopup="true" aria-expanded="false">
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
						<div class="input-group"  id="waiDiv">

							<input type="text" class="form-control"
								placeholder="Search for..." name="words"> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button"
									onclick="return readysubmit1();">
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

				<li><a href="index"
					id="dropdown-toggle">中心首页</a></li>
				<c:forEach var="name" items="${requestScope.navNameList}">
					<li role="presentation" class="dropdown "
						onMouseOver="displaySubMenu(this)" onMouseOut="hideSubMenu(this)">
						<a id="dropdown-toggle" class="dropdown-toggle"
						data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
						aria-expanded="false"> ${name}<span class="caret"></span>
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
				<div class="container">
					<div class="row">

						<div class="col-lg-3 col-sm-12 col-md-12 col-xs-12" id="left-nav" >
							<div >
								<label ><h3>&nbsp;${thirdPage.whole_name}</h3></label>
							</div>
							<ul class="nav nav-pills nav-stacked">
								<c:forEach var="third" items="${requestScope.thirdPageList}">
									<li role="presentation"><a href="${third.url}"><span class="glyphicon glyphicon-chevron-right"></span>${third.name}</a></li>
								</c:forEach>
							</ul>
						</div>
						<div class="container col-lg-9 col-sm-12 col-md-12 col-xs-12">
							<div class="body2">
								<%-- <div class="row">
									<div class="col-lg-5 col-md-6 col-sm-6 col-xs-6">
										<h2>${thirdPage.name}</h2>
									</div>
									<div class="col-lg-7 col-md-7 col-sm-7 col-xs-7  visible-lg" style="margin-top: 30px;padding-bottom: 0px;text-align: right;">
										<a href="index">首页</a>>><a href="${module1.module_url}${module1.page}">${thirdPage.whole_name}</a>>><strong>${thirdPage.name}</strong>
									</div>
								</div> --%>
								
							<div class="row" >
							<nav class=" navbar navbar-left" id="dqwz" role="navigation" style="float:left;margin-top:10px;margin-left:15px"><h2><strong>${thirdPage.name}</strong></h2></nav>
								 <nav class=" navbar navbar-right" id="dqwz" role="navigation">
					            	<ol class="breadcrumb" >
					                  <li>当前位置：</li>
					                  <li><a href="index">首页</a></li>
					                  <li><a href="javascript:;" >${thirdPage.whole_name}</a></li>
				                 	  <li >${thirdPage.name}</li>
					            	 </ol>
								 </nav>
							</div>
									<hr>
								<div>
									<p>${thirdPage.content}</p>
								</div>                 		
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

        <div class="container"  id="bottom-container">
			<img class=" img-responsive" src="images/页尾.png">
		</div>
											
 
											
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/indexjs.js"></script>
         
</body>
</html>
