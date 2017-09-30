<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/templates/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index News</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/templates/css/style.css"
	type="text/css">
</head>
<body>
	<div class="container">
		<div class="row">

			<h1 class="text-center bg-info">Danh sách tin tức</h1>
			<c:forEach items="${listNews }" var="item">
				<c:set var="slug" value="${slugUtil.makeSlug(name)}"></c:set>
				<c:set var="urlDetail" value="${pageContext.request.contextPath}/${slug}-${item.getId()}.html"></c:set>
				<div class="col-md-8 col-md-push-2 title">
					<h3>
						<a href="${pageContext.request.contextPath}/${slug}-${item.getId()}.html">${item.getName() }</a>
					</h3>
					<a href="${pageContext.request.contextPath}/${slug}-${item.getId()}.html"><img style="margin-bottom: 5px;"
						src="${pageContext.request.contextPath }/files/${item.getImage() }"
						alt=""></a>
					<p>${item.getTitle() }</p>
				</div>
			</c:forEach>

		</div>
	</div>
</body>
</html>