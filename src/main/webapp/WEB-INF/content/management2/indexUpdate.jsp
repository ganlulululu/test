<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传文件详细信息</title>
<link href="../css/bootstrap.min.css" rel="stylesheet" />
<link href="../css/login.css" rel="stylesheet" />
<!-- <script type="text/javascript">
function validateForm()
{
  var x=document.forms["myForm"]["up_date"].value;
  if (x==null || x=="")
  {
    alert("更新日期不能为空");
    return false;
  }
} 
</script> -->

<script src="js/jquery-2.1.4.min.js"></script>

</head>
<body>

	<div class="container">
		<div class="container" id="topcontainer2">
			<div class="navbar-header">
				<img class=" img-responsive" src="../images/后台管理.png">
			</div>
		</div>
		<div class="body">
			<div class="container" style="border: 1px solid #969696;">
				<div class="row">
					<div class="col-lg-12 col-sm-12 col-md-12 col-xs-12"
						style="background-color: #FCFCFC">
						<div style="text-align: right; padding-top: 10px;">
							<h4 style="margin-top: 0; margin-bottom: 0;">
								当前位置：<a href="../index">首页</a>>><a href="updateModule">更新模块选择</a><small>>>更新模块内容</small>
							</h4>
						</div>
						<hr>
						<div class="row">
							<div class="col-lg-2 col-xm-12 col-md-12 col-xs-12">
								<div style="color: #F8F5F5">
									<label style="font-size: 18px; margin-top: 10px"><h3>&emsp;模块管理</h3></label>
								</div>
								<ul class="nav nav-pills nav-stacked">
									<li role="presentation"><a
										href="#"><span
											class="glyphicon glyphicon-chevron-right"></span>模块内容</a></li>
									<li role="presentation"><a href="http://localhost:8090/fkbookapp/management/updateModule"><span
											class="glyphicon glyphicon-chevron-right"></span>模块更新</a></li>
								</ul>
								<div style="color: #F8F5F5">
									<label style="font-size: 18px; margin-top: 10px"><h3>&emsp;文件管理</h3></label>
								</div>
								<ul class="nav nav-pills nav-stacked">
									<li role="presentation"><a href="#"><span
											class="glyphicon glyphicon-chevron-right"></span>文件浏览</a></li>
									<li role="presentation"><a
										href="http://localhost:8090/fkbookapp/management/DocumentUpdate"><span
											class="glyphicon glyphicon-chevron-right"></span>文件上传</a></li>
									<li role="presentation"><a href="http://localhost:8090/fkbookapp/management/DocumentUpdate"><span class="glyphicon glyphicon-chevron-right"></span>上传图片</a></li>
								</ul>
							</div>


							<div class="col-lg-10 col-xm-12 col-md-12 col-xs-12"
								style="border-left: 1px solid #969696;">
								<div class="row">
									<div class="col-lg-10 col-sm-12 col-md-12 col-xs-12"
										style="margin-bottom: 20%;">
										<form class="form-horizontal" role="form"
											 name="myform" action="indexUpdateA" onsubmit="return validateForm()"   method="post"  >
											<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
												<div class="form-group">
													<label
														class="col-lg-6 col-sm-12 col-md-12 col-xs-12 control-label">name:</label>
													<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
														<input type="text" class="form-control" name="name"
															value="${requestScope.name} " readonly="readonly" />
													</div>
												</div>
												
												<div class="form-group">
													<label for="inputWhole_name"
														class="col-lg-6 col-sm-12 col-md-12 col-xs-12 control-label">whole_name:</label>
													<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
														<input type="text" class="form-control" name="whole_name"
															value="${requestScope.whole_name}" readonly="readonly" />
													</div>
												</div>
												<div class="form-group">
													<label for="inputImage"
														class="col-lg-6 col-sm-12 col-md-12 col-xs-12 control-label">image:</label>
													<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
													<c:choose>
														<c:when test="${requestScope.name=='图片新闻'}">
															<!-- <input type="text" class="form-control" name="image" />  -->
															<select id="sel" class="selectpicker" data-style="btn-primary"
																	name="image">
																	<c:forEach items="${requestScope.image_list}" var="image">
																		<option value="${image.fileName}">${image.fileName}</option>
																	</c:forEach>
															</select> 
														</c:when>
														<c:otherwise>
															<input type="text" class="form-control" name="image"
															value="${requestScope.image}" readonly="readonly" />
														</c:otherwise>
													</c:choose>
														<%-- <input type="text" class="form-control" name="image"
															value="${requestScope.image}" readonly="readonly" /> --%>
													</div>
												</div>
												<div class="form-group">
													<label
														class="col-lg-6 col-sm-12 col-md-12 col-xs-12 control-label">start_date:</label>
													<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
														<input type="date" class="form-control" name="start_date" />
													</div>
												</div>
												<!-- <div class="form-group">
													<label for="inputTitle"
														class="col-lg-6 col-sm-12 col-md-12 col-xs-12 control-label">title:</label>
													<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
														<input type="text" class="form-control" name="title" />
													</div>
												</div> -->
												<div class="form-group">
													<!-- <label for="inputUrl"
														class="col-lg-6 col-sm-12 col-md-12 col-xs-12 control-label">url:</label> -->
													<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
														<input type="hidden" class="form-control" name="url"
															value="${requestScope.url}" readonly="readonly" />
													</div>
												</div>
												
											</div>
											<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
												<div class="form-group">
													<label
														class="col-lg-6 col-sm-12 col-md-12 col-xs-12  control-label">content_id:</label>
													<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
														<input type="text" class="form-control" name="content_id"
															value="${requestScope.thisContentId}" readonly="readonly"/>
													</div>
												</div>
												<div class="form-group">
													<label for="inputModule_id"
														class="col-lg-6 col-sm-12 col-md-12 col-xs-12 control-label">module_id:</label>
													<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
														<input type="text" class="form-control" name="module_id"
															value="${module_id}" readonly="readonly" />
													</div>
												</div>
												<div class="form-group">
													<label
														class="col-lg-6 col-sm-12 col-md-12 col-xs-12 control-label">longtitle:</label>
													<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
														<input type="text" class="form-control" name="longtitle" />
													</div>
												</div>
												
												<div class="form-group">
													<!-- <label for="inputModule_url"
														class="col-lg-6 col-sm-12 col-md-12 col-xs-12 control-label">module_url:</label> -->
													<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
														<input type="hidden" class="form-control" name="module_url"
															value="${module_url}" readonly="readonly" />
													</div>
												</div>
												<div class="form-group">
													<label
														class="col-lg-6 col-sm-12 col-md-12 col-xs-12 control-label">up_date:</label>
													<div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
														<input type="date" class="form-control" name="up_date" />
													</div>
												</div>
												
												

												</div>
											<div class="row col-lg-12 col-sm-12 col-md-12 col-xs-12">
											<div class="form-group">
												<label
													class="col-lg-1 col-sm-12 col-md-12 col-xs-12 control-label">content:</label>
												<div class="col-lg-2 col-sm-12 col-md-12 col-xs-12"></div>	
												<div class="col-lg-9 col-sm-12 col-md-12 col-xs-12">
												<!-- 	<script type="text/javascript" src="../js/nicEdit.js"></script>
													<script type="text/javascript">
														bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
													</script>
													<textarea id="introContent" name="content" style="width: 100%;min-height:400px ">
														Some Initial Content was in this textarea
												   </textarea> -->
												   
												    <div class="form-group">
										              <label for="article-content" class="sr-only">内容</label>
										              <script id="article-content" name="content" type="text/plain"  style="width: 100%;min-height:200px"></script>
										            </div>
												</div>
											</div>
											</div>
											<div class="form-group">
												<div class="col-lg-10 col-sm-12 col-md-12 col-xs-12"
													style="padding-left: 50%;">
													<button type="submit" class="btn btn-default" 
													onclick="$('#article-content').getContent())">提交</button>
													
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<hr>
					</div>
				</div>
			</div>
		</div>
		<div class="container" id="bottom-container">
			<img class=" img-responsive" src="../images/页尾.png">
		</div>
	</div>

	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/indexjs.js"></script>
	<script src="../js/admin-scripts.js"></script>
	<script src="../ueditor/ueditor.config.js"></script> 
	<script src="../ueditor/ueditor.all.min.js"> </script> 
	<script src="../ueditor/lang/zh-cn/zh-cn.js"></script> 
	<script id="uploadEditor" type="text/plain" style="display:none;"></script>
	
	<!-- 	<script>
		$(function() {
		 //本来是这样的:UE.getEditor('editor');  传入参数后就是下面那样子了，toolbars里的就是工具的图标
		 UE.getEditor('article-content', {
		 toolbars: [
		['fullscreen', 'source', 'undo', 'redo', 'bold', 'italic', 'underline', 'fontborder', 'backcolor', 'fontsize', 'fontfamily', 'justifyleft', 'justifyright', 'justifycenter', 'justifyjustify', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', 'link', 'unlink', 'emotion', 'help']
		 ]
		 });
		})
		</script>  -->
	
	<script type="text/javascript">
	var editor = UE.getEditor('article-content',{toolbars:[['fullscreen', 'source', '|', 'undo', 'redo', '|',
        'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch','blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist','cleardoc', '|',
        'rowspacingtop', 'rowspacingbottom', 'lineheight', '|',
        'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
        'directionalityltr', 'directionalityrtl', 'indent', '|',
        'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|',
        'link', 'unlink', '|', 'imagenone', 'imageleft', 'imageright', 'imagecenter', '|',
        'simpleupload','attachment','insertcode','pagebreak', 'template', 'background', '|',
        'horizontal', 'date', 'time', 'spechars','|',
        'inserttable', 'deletetable', 'insertparagraphbeforetable', 'insertrow', 'deleterow', 'insertcol', 'deletecol', 'mergecells', 'mergeright', 'mergedown', 'splittocells', 'splittorows', 'splittocols', 'charts', '|',
        'preview', 'searchreplace']],  
            //focus时自动清空初始化时的内容  
            autoClearinitialContent:true,  
            //关闭字数统计  
            wordCount:false,  
            //关闭elementPath  
            elementPathEnabled:false,  
            //默认的编辑区域高度  
            initialFrameHeight:300  
            //更多其他参数，请参考ueditor.config.js中的配置项  
        }); 
	window.onresize=function(){
	    window.location.reload();
	}
	var _uploadEditor;
	$(function () {
	    //重新实例化一个编辑器，防止在上面的editor编辑器中显示上传的图片或者文件
	    _uploadEditor = UE.getEditor('uploadEditor');
	    _uploadEditor.ready(function () {
	        //设置编辑器不可用
	        //_uploadEditor.setDisabled();
	        //隐藏编辑器，因为不会用到这个编辑器实例，所以要隐藏
	        _uploadEditor.hide();
	        //侦听图片上传
	        _uploadEditor.addListener('beforeInsertImage', function (t, arg) {
	            //将地址赋值给相应的input,只去第一张图片的路径
	            $("#pictureUpload").attr("value", arg[0].src);
	            //图片预览
	            //$("#imgPreview").attr("src", arg[0].src);
	        })
	        //侦听文件上传，取上传文件列表中第一个上传的文件的路径
	        _uploadEditor.addListener('afterUpfile', function (t, arg) {
	            $("#fileUpload").attr("value", _uploadEditor.options.filePath + arg[0].url);
	        })
	    });
	});
	//弹出图片上传的对话框
	$('#upImage').click(function () {
	    var myImage = _uploadEditor.getDialog("insertimage");
	    myImage.open();
	});
	//弹出文件上传的对话框
	function upFiles() {
	    var myFiles = _uploadEditor.getDialog("attachment");
	    myFiles.open();
	}
	</script> 
	

</body>
</html>

