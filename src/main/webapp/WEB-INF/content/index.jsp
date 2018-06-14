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
<title>江苏省能源经济管理研究中心</title>
<base href=" <%=basePath%>"> 
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/index.css" rel="stylesheet" />
    <script type="text/javascript">
        function readysubmit1() {
                document.getElementById("formid1").submit();
        }
  
        function readysubmit2() {
                document.getElementById("formid2").submit();
        }
    </script>
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/1.12.3/jquery.js"></script>
    <style>
    .searchResult ul li a span {
        color: red;
    }
    </style>  
     

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
				<div class="col-lg-3 pull-right">
				<form action="select" method="post" id="formid2">
						<div class="input-group"  id="waiDiv">
					
						<input type="text" class="form-control" id="keyword"
							placeholder="Search for..." name="words"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button" id="search" onclick="return readysubmit2();">
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
			<li><a id="dropdown-toggle" class="dropdown-toggle" href="#">中心首页</a></li>
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
								<li class="dropdown-brand"><<a href="${navber.module_url}">${navber.module_name}</a></li>
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

				<div class="col-lg-3 pull-right" >
				<form action="select" method="post" id="formid1">
						<div class="input-group"  id="waiDiv">
					
						<input type="text" class="form-control" id="keyword"
							placeholder="Search for..." name="words"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button" id="search" onclick="return readysubmit1();">
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

				<li><a id="dropdown-toggle" href="index">中心首页</a></li>
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
									<li class="dropdown-brand"><a href="${navber.module_url }">${navber.module_name}</a></li>
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
		<div class="container">


			<div class="body">
				<div class="container">


					<div id="carousel-ad" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-ad" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-ad" data-slide-to="1"></li>
							<li data-target="#carousel-ad" data-slide-to="2"></li>
							<li data-target="#carousel-ad" data-slide-to="3"></li>
							<li data-target="#carousel-ad" data-slide-to="4"></li>
							<li data-target="#carousel-ad" data-slide-to="5"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
						
						<c:forEach items="${requestScope.index_list_pic}" var="pic" begin="0" end="0">
							<div class="item active">
								<a href="${pic.url}${pic.content_id}">
									<img class="img-responsive"  src="images/${pic.image}" alt="" />
								</a>
							</div>
						</c:forEach>
						
						<c:forEach items="${requestScope.index_list_pic}" var="pic" begin="1">
								<div class="item">
								<a href="${pic.url}${pic.content_id}">
									<img class="img-responsive"  src="images/${pic.image}" alt="" />
								</a>
								</div>
								
						</c:forEach>  

						</div>

						 
                 <a class="left carousel-control" href="#carousel-ad" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span> </a>
                <a class="right carousel-control" href="#carousel-ad" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span> </a>
					</div>
					<!--    导航结束------------------------------------------------------------>

            			<div class="col-md-12 col-sm-12 col-lg-12" >
             				<div class="col-md-4 col-sm-4 col-lg-4" id="col-4-1">
								<div class="lhead" style="background-image: url(images/3.0/学术活动.jpg);" >
										<a class="pull-right" href="module/1/1"><img src="images/1.png"></a>
							    </div>
								<hr>
								<div class=" col-md-9 col-sm-9 col-lg-9" >
                     				<div class="xshd_list">
										<ul class="ulxshd">
											<c:forEach items="${requestScope.index_list_xshd }"
												var="index">
												<c:set var="content_id" value="${index.content_id}"></c:set>
												<li class="ili"><a href="${index.url}${content_id}"
													title="${index.longtitle}">${index.title}</a></li>
											</c:forEach>
										</ul>
									</div>
								</div>
								<div class="col-md-3 col-sm-3 col-lg-3 visible-lg">
										<ul class="xshdtime">
											<c:forEach items="${requestScope.index_list_xshd }"
												var="index">
												<c:set var="content_id" value="${index.content_id}"></c:set>
												<li class="itli"><span>${index.month}/${index.date}</span></li>
											</c:forEach>
										</ul>
									</div>
								</div>
						<div class="col-md-4 col-sm-4 col-lg-4">
                    		<div class="lhead" style="background-image:url(images/3.0/行业动态.jpg);"><a class="pull-right"href="module/2/1"><img src="images/1.png"></a>
							</div><hr>
						<div class=" col-md-9 col-sm-9 col-lg-9" >
                        	<div class="hydt_list">
                            	<ul class="ulxshd">
									<c:forEach items="${requestScope.index_list_hydt}"
												var="index">
												<c:set var="content_id" value="${index.content_id}"></c:set>
												<li class="ili"><a href="${index.url}${content_id}"
													title="${index.longtitle}">${index.title}</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-lg-3 visible-lg">
							<ul class="xshdtime">
								<c:forEach items="${requestScope.index_list_hydt}"
												var="index">
												<c:set var="content_id" value="${index.content_id}"></c:set>
												<li style="color: gray;"class="itli">${index.month}/${index.date}</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<!-- <div class="col-md-4 col-sm-4 col-lg-4" >      
               			<div class="lhead" style="background-image:url(images/3.0/通知公告.jpg);"><a class="pull-right"href="module/2/1"><img class="downpng" src="images/1.png"></a>
               			</div><hr>
						    <div class=" col-md-12 col-sm-12 col-lg-12" >
                  				<div class="xshd_list">
                   					 <ul id="tzgg">
										<li class="ili2" style="width:120%"><span class="ispan"><i>07-11</i> .  2017</span><a href="../tzgg/tzggxx/index.htm?id=276766">MBA论坛 -- 如何打造传统制造业企业运营敏捷力 </a> </li>
										
                   					 </ul>
                   					 
                  				</div>
						    </div>
						</div>
            		</div> --><div class="col-md-4 col-sm-4 col-lg-4" >      
               			<div style="background-image:url(images/3.0/通知公告.jpg);height:36px;background-repeat:no-repeat;"><a class="pull-right"href="module/4/1"><img src="images/1.png"></a>
               			</div><hr>
						    <div class=" col-md-10 col-sm-10 col-lg-10" >
                  				<div class="tzgg_list">
                   					 <ul class="ultzgg">
										<c:forEach items="${requestScope.index_list_tzgg }" var="index" begin="0" end="5">
											<c:set var="content_id" value="${index.content_id}"></c:set>
											<div class="row">
												<li class="ili2" style="width:120%;margin-top:6px;margin-bottom:0px;"><span style="margin-right:0px;margin-left:10px" class="ispan"><i>${index.month}-${index.date}</i>  . ${index.year} </span><a style="line-height:36px;height:29px" href="${index.url}${content_id}"
													title="${index.longtitle}">${index.title}</a></li>
											</div>
										</c:forEach>
                   					 </ul>
                  				</div>
						    </div>
							<%-- <div class="col-md-2 col-sm-2 col-lg-2 visible-lg">
								<ul class="xshdtime " style="padding-left:0px;">
									<c:forEach items="${requestScope.index_list_tzgg }" var="index" begin="0" end="5">
										<c:set var="content_id" value="${index.content_id}"></c:set>
										<li><span>${index.month}/${index.date}</span></li>
									</c:forEach>
								</ul>
							</div> --%>
						</div>
            		</div>
			   </div>
			 
			
					<!--下边-->
				<div class="row">
              		<div class="col-md-12 col-sm-12 col-lg-12">
           				 <div class="col-md-8 col-sm-8 col-lg-8">
                				<div class="lhead" style="background-image:url(images/3.0/中心动态.jpg);"><a class="pull-right"href="module/2/1"><img src="images/1.png"></a>
                				</div><hr>
									<div class="col-md-2 col-sm-2 col-lg-2">
                    					<a id="a" href="content/194"><img src="images/zxcg.jpg"  style="height:170px;width:170px;margin-top:10px"></a>
                					</div>
									 <div class=" col-sm-offset-1 col-md-7 col-sm-7 col-lg-7">
                						<div class="jddt_list">
                        					<ul class="ulxshd" id="jddt">
												<c:forEach items="${requestScope.index_list_jddt }"
													var="index">
													<c:set var="content_id" value="${index.content_id}"></c:set>
													<li class="ili"><img src="images/index_dd.jpg">&emsp;<a href="${index.url}${content_id}"
														title="${index.longtitle}">${index.title}</a></li>
												</c:forEach>
                        					</ul>
                						</div>
									 </div>
									 <div class="col-md-2 col-sm-2 col-lg-2 visible-lg">
										 <ul class="xshdtime" id="jddttime" style="text-align:right" >
												<c:forEach items="${requestScope.index_list_jddt }"
													var="index">
													<c:set var="content_id" value="${index.content_id}"></c:set>
													<li style="margin-bottom:5px;margin-top:5px;"><span>${index.month}/${index.date}</span></li>
												</c:forEach>
											</ul>
									</div>
							</div>
							<div class=" col-md-4 col-sm-4 col-lg-4" >    
                   				<div class="lhead" style="background-image:url(images/3.0/项目申报.jpg);"><a class="pull-right" href="javascript:;"><img class="downpng" src="images/1.png" /></a>
								</div>
								<hr>
									 <div class="xglj_list">
                    					<ul class="ultzgg">
										 	<li class="ili">&emsp;&emsp;<a href="http://www.cumt.edu.cn/" target="_blank">中国矿业大学</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a href="http://sm.cumt.edu.cn/" target="_blank">管理学院</a></li>
                        					<li class="ili">&emsp;&emsp;<a href="http://www.eri.org.cn/" target="_blank">发改委能源研究所</a>&emsp;&emsp;&emsp;&emsp;<a href="http://www.nea.gov.cn/" target="_blank">国家能源局</a></li>
                        					<li class="ili">&emsp;&emsp;<a href="http://www.newenergy.org.cn/" target="_blank">中国新能源网</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a href="http://www.china5e.com/" target="_blank">中国能源网</a></li>
										</ul>
									</div>
									<div class="lhead" style="background-image:url(images/3.0/专题链接.png);"><a class="pull-right" href="javascript:;"><img class="downpng" src="images/1.png" /></a>
									</div><hr>
										<!-- <div class="wzxx_list">
                    						<ul class="ultzgg">
												<li class="imli">&emsp;<a href=""><img  src="images/shpg.png"/></a>&emsp;<a href="http://www.cumt.edu.cn/"><img  src="images/lxyz.png"/></a></li>
												<li class="imli">&emsp;<a href=""><img  src="images/qzdt.png"/></a>&emsp;<a href="http://www.cumt.edu.cn/"><img  src="images/ddh.png"/></a></li>
											</ul>
											<a href="login">登录</a>
										</div> -->
								</div>
							</div>
						</div>

		<div class="container" id="bottom-container">

			<img class=" img-responsive" src="images/页尾.png">
		</div>
		
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/indexjs.js"></script>
</body>
</html>