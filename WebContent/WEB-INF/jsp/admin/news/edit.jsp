<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit News</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8 col-md-push-2">
				<form
					action="${pageContext.request.contextPath }/admin/news/edit/${objNews.getId() }"
					method="POST" role="form" enctype="multipart/form-data">
					<legend class="text-center text-danger">Sữa tin tức</legend>

					<div class="form-group">
						<label for="">Tên tin</label> <input type="text"
							class="form-control" id="" name="name" placeholder="Input field"
							value="${objNews.getName() }">
					</div>

					<div class="form-group">
						<label for="">Tiêu đề</label> <input type="text"
							class="form-control" id="" name="title" placeholder="Input field"
							value="${objNews.getTitle() }">
					</div>

					<div class="form-group">
						<label for="">Mô tả</label>
						<textarea name="description" rows="10" cols="137">${objNews.getDescription() }</textarea>
					</div>

					<div class="form-group row">
						<div class="col-md-6">
							Ảnh cũ: <img width="150px"
								src="${pageContext.request.contextPath }/files/${objNews.getImage() }"
								alt="">
						</div>
						<div class="col-md-6">
							<label class="btn btn-default btn-file">Ảnh mới: </label> <input
								type="file" name="filename">
						</div>
					</div>

					<button type="submit" class="btn btn-primary">Sữa</button>
					<button type="reset" class="btn btn-warning">Nhập lại</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>