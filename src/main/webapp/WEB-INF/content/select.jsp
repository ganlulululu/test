<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <% String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()
+":"+request.getServerPort()+path+"/"; 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>江苏省能源经济管理研究中心</title>
 <base href=" <%=basePath%>">  
<link href="css/login.css" rel="stylesheet" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<script type="text/javascript" src="js/select.js"></script>
    <style>
    .searchResult ul li a span {
        color: red;
    }
    </style>
</head>

<div class="container">
	<div class="container" id="topcontainer2">
			<div class="navbar-header">
				<img class=" img-responsive" src="images/查询题头.png">
			</div>
	</div>
	<div class="body">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm=12 col-md-12 col-xs-12"  style="background-color: #FCFCFC">
					<div style="text-align:right;padding-top:10px;">
						<h4 style="margin-top:0;margin-bottom:0;">当前位置：<a href="index">首页</a><small>>>检索</small></h4>
					</div><hr>
					<div class="searchResult">
					
						<c:choose> 
							  <c:when test="${not empty requestScope.module_longtitlelist}">   
							   <ul class="list-unstyled">
									<c:forEach var="module" items="${requestScope.module_longtitlelist}">
									<li><img src="images/index_dd.jpg">&emsp;<a href="${module.url}${module.content_id}" title="${module.longtitle}">${module.longtitle}</a></li>
									</c:forEach>
								</ul> 
							  </c:when> 
							  <c:when test="${empty requestScope.module_longtitlelist}">   
							   没有找到有关“${requestScope.word}”的内容 
							  </c:when> 
							 
						</c:choose> 
						
						<!--<c:if test="${requestScope.module_contentlist!=null}">
							<ul class="list-unstyled">
							<c:forEach var="module" items="${requestScope.module_contentlist}">
							<li><img src="images/index_dd.jpg">&emsp;<a href="${module.url}${module.content_id}" title="${module.longtitle}">${module.longtitle}</a></li>
							<li><img src="images/index_dd.jpg">&emsp;${module.content}</li>
							</c:forEach>
							</ul>
						</c:if>-->
						</div><hr>
					 <div id="page">
                        	<p class="text-center" ><a href=""  >首页</a>&emsp;&emsp;<a href="">&lt;&lt;上一页</a>&emsp;&emsp;当前为第1页&emsp;&emsp;<a href="">下一页>></a>&emsp;&emsp;<a href="">尾页</a></p>
					</div><hr>
				</div>
			</div>
		</div>
	</div>

	<div class="container"  id="bottom-container">
  		<img class=" img-responsive" src="images/页尾.png">
	</div>
	<!-- <input id="keyword" type="text" value="${module.longtitle}" style="display:none">-->
	<div  id="keyword" style="display:none" >${word}</div>
	
</div>


<script>
$(function(){
      showKeyword($("#keyword").html());
	console.log($("#keyword").html());
//showKeyword('研究');

    /* 遍历li,搜索键关键字变色*/
    function showKeyword(keyword) {
        //如果搜索结果为空，跳出
        if($(".searchResult ul li").length == 0) { retrun;}

        //遍历li
        for (var i = 0; i < $(".searchResult ul li").length; i++) {
            //获取a标签里面的内容
            var words = $(".searchResult ul li").eq(i).find("a").text();
            //关键字变
            var reReg = new RegExp(keyword,"g");
            var reStr = "<span>" + keyword + "</span>";
            var lastWords = words.replace(reReg, reStr);
            $(".searchResult ul li").eq(i).find("a").html(lastWords);
        }
    }
});
</script>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/indexjs.js"></script>
</body>
</html>