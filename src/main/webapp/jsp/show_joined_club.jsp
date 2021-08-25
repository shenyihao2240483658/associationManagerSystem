<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>社团管理系统</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<%--	<link rel="stylesheet" href="../res/layui/css/layui.css">--%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/layui/css/layui.css">
<%--	<link rel="stylesheet" href="../res/static/css/mian.css">--%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/static/css/mian.css">
</head>
<body class="lay-blog">
		<div class="header">
			<div class="header-wrap">
				<h1 class="logo pull-left">
					<a href="${pageContext.request.contextPath}/userInfo/${sessionScope.get("uName")}">
						<img src="${pageContext.request.contextPath}/${sessionScope.get("uPhoto")}" alt="" class="logo-img" style="border-radius: 50%;overflow: hidden;width: 70px;height: 70px;">
						<h4 style="display: inline;">${sessionScope.get("uName")}</h4>
					</a>
				</h1>
				<div class="blog-nav pull-right">
					<ul class="layui-nav pull-left">
					  <li class="layui-nav-item layui-this"><a href="${pageContext.request.contextPath}/joinedClub/${sessionScope.get("uName")}">我的社团</a></li>
					  <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/getAllActivityByUNameService/${sessionScope.get("uName")}">我的活动</a></li>
					  <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/userInfo/${sessionScope.get("uName")}">我的信息</a></li>
						<li class="layui-nav-item"><a href="${pageContext.request.contextPath}/html/club_apply.html">社团创建申请</a></li>
					</ul>

					<a href="${pageContext.request.contextPath}/html/main_index.html?uId=${sessionScope.get("uId")}" class="personal pull-left">
						<i class="layui-icon layui-icon-fire"></i>
					</a>
				</div>
				<div class="mobile-nav pull-right" id="mobile-nav">
					<a href="javascript:;">
						<i class="layui-icon layui-icon-more"></i>
					</a>
				</div>
			</div>
			<ul class="pop-nav" id="pop-nav">
				<li><a href="${pageContext.request.contextPath}/joinedClub/${sessionScope.get("uName")}">我的社团</a></li>
				<li><a href="${pageContext.request.contextPath}/getAllActivityByUNameService/${sessionScope.get("uName")}">我的活动</a></li>
				<li><a href="${pageContext.request.contextPath}/userInfo/${sessionScope.get("uName")}">我的信息</a></li>
				<li><a href="${pageContext.request.contextPath}/html/club_apply.html">社团创建申请</a></li>
			</ul>
		</div>
		<div class="container-wrap">
			<div class="container">
					<div class="contar-wrap">
						<h4 class="item-title">
							<p><i class="layui-icon layui-icon-speaker"></i>公告：<span>欢迎来到社团管理系统</span></p>
						</h4>
						<c:forEach items="${list}" var="club">
						<div class="item">
							<div class="item-box  layer-photos-demo1 layer-photos-demo">
								<a href="../html/club.html?cId=${club.cId}&uId=${sessionScope.get("uId")}"><h3>${club.cName}&nbsp;&nbsp;${club.cCreateTime}</h3></a>
								<h5>${club.cDescription}</h5>
								<img src=".${pageContext.request.contextPath}/${club.cPhoto}" alt="">
							</div>
						</div>
						</c:forEach>
					</div>
			</div>
		</div>
		<div class="footer">
			<p>
				<span>&copy; 2021</span>
			</p>
			<p><span>人生就是一场修行</span></p>
		</div>
	<script src="${pageContext.request.contextPath}/res/layui/layui.js"></script>
	<script>
		layui.config({
		  base: '${pageContext.request.contextPath}/res/static/js/'
		}).use('blog');
	</script>
</body>
</html>