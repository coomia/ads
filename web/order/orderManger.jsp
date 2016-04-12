<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title></title>

<script src="js/jquery/jquery-1.11.1.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link href="<%=path%>/common/css/global.css" rel="stylesheet" />
<link href="<%=path%>/common/css/public.css" rel="stylesheet" />
<script src="js/bootstrap/bootstrap.min.js"></script>
<script src="<%=basePath%>js/bootstrap/bootstrap-paginator.min.js"></script>
<script src="<%=basePath%>js/bootstrap/b3paginator.js"></script>

</head>

<body>
	<div class="container admin-container">
	<!-- 顶部内容 -->
		<header class="navbar navbar-inverse navbar-fixed-top docs-nav"
				role="banner">
			<jsp:include page="/common/include/header_mge.jsp">
				<jsp:param name="target" value="order" />
			</jsp:include>
		</header>
	 <!-- 左侧菜单 -->
		<jsp:include page="/order/common_nav.jsp">
			<jsp:param name="target" value="order" />
		</jsp:include>
		
		<!-- 右侧内容 -->
			<div id="well" class="col-md-10">
				<div  class="">
					<div id="data_header" class="page-header clearfix" style="margin: 0px 0 20px">
						<h1 class="pull-left">订单管理</h1>
					</div>
					<div class="form-inline well well-sm">
						<div class="form-group">
							<input id="name" type="text" class="form-control"
								placeholder="销售人员名称">
						</div>
						<div class="form-group">
						
						</div>
						<span class="btn btn-primary" onclick="loadPage(1)">查询</span> 
						<span class="btn btn-primary" onclick="loadUserAddPage()">添加</span>
					</div>
				</div>
				<div id="content"></div>
			</div>
		
	</div>
</body>
</html>