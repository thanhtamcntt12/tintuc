<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/templates/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>List News</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="templates/icon/css/font-awesome.min.css">
</head>
<body>
	<div class="container">
		<table class="table table-bordered table-hover">
			<thead>
				<c:if test="${param['msg'] eq 'add'}">
					<p class="alert alert-success">Thêm thành công</p>
				</c:if>
				<c:if test="${param['msg'] eq 'edit' }">
					<p class="alert alert-success">Sửa thành công</p>
				</c:if>
				<c:if test="${param['msg'] eq 'del' }">
					<p class="alert alert-success">Xóa thành công</p>
				</c:if>
				<c:if test="${param['param'] eq 'err' }">
					<p class="alert alert-danger">Lổi khi thực hiện</p>
				</c:if>
				<tr class="bg-danger text-center">
					<td colspan="6"><a
						href="${pageContext.request.contextPath }/admin/news/add">Thêm
							tin</a></td>
				</tr>
				<tr class="bg-primary">
					<th>STT</th>
					<th>Tên tin</th>
					<th>Tiêu đề</th>
					<th>Mô tả</th>
					<th>Hình ảnh</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listNews }" var="item">
					<tr>
						<td>${item.getId() }</td>
						<td>${item.getName() }</td>
						<td>${item.getTitle() }</td>
						<td>${item.getDescription() }</td>
						<td><img
							src="${pageContext.request.contextPath }/files/${item.getImage() }"
							width="150px" alt=""></td>
						<td><span><a href="${pageContext.request.contextPath }/admin/news/edit/${item.getId() }" class="fa fa-edit">Sữa</a></span> <span><a
								href="${pageContext.request.contextPath }/admin/news/del/${item.getId()}" onclick = "return confirm('Bạn muốn xóa tin tức này ?')" class="fa fa-remove">Xóa</a></span></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>