<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://cksource.com/ckfinder" prefix="ckfinder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm tin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/templates/ckeditor/ckeditor.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/templates/ckfinder/ckfinder.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8 col-md-push-2">
				<form action="${pageContext.request.contextPath }/admin/news/add"
					method="POST" role="form" enctype="multipart/form-data">
					<legend class="text-center">Thêm tin</legend>

					<div class="form-group">
						<label for="">Tên tin</label> <input type="text"
							class="form-control" id="name" name="name"
							placeholder="Input field">
					</div>

					<div class="form-group">
						<label for="">Tiêu đề</label> <input type="text"
							class="form-control" id="title" name="title"
							placeholder="Input field">
					</div>

					<div class="form-group">
						<label for="">Mô tả</label>
						<textarea name="description" id="description" rows="10" cols="137"></textarea>
					</div>

					<div class="form-group">
						<label for="">Hình ảnh</label> <input type="file"
							class="form-control" id="" name="img" placeholder="Input field">
					</div>


					<button type="submit" class="btn btn-primary">Thêm</button>
				</form>
			</div>
		</div>
	</div>
	<script>
		var description = CKEDITOR.replace('description');
		CKFinder.setupCKEditor(description, '${pageContext.request.contextPath }/templates/ckfinder/');
	</script>
</body>
</html>