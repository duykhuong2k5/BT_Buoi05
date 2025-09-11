<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Danh Mục</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <div class="page-header">
        <div class="container">
            <h1>Thêm Danh Mục Mới</h1>
        </div>
    </div>
    
    <div class="container">
        <div class="form-container">
            <form role="form" action="${pageContext.request.contextPath}/categories/add" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="name">Tên danh mục:</label>
                    <input type="text" class="form-control" placeholder="Nhập tên danh mục" name="name" id="name" required />
                </div>
                <div class="form-group">
                    <label for="icon">Ảnh đại diện:</label>
                    <input type="file" class="form-control" name="icon" id="icon" accept="image/*" />
                    <small>Chỉ chấp nhận file ảnh (JPG, PNG, GIF)</small>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-success">Thêm</button>
                    <button type="reset" class="btn btn-primary">Hủy</button>
                    <a href="${pageContext.request.contextPath}/categories/list" class="btn">Quay lại</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>