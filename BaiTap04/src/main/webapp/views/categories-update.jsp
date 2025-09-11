<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh Sửa Danh Mục</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <div class="page-header">
        <div class="container">
            <h1>Chỉnh Sửa Danh Mục</h1>
        </div>
    </div>
    
    <div class="container">
        <div class="form-container">
            <form role="form" action="${pageContext.request.contextPath}/categories/update" method="post" enctype="multipart/form-data">
                <input type="hidden" name="id" value="${category.id}"/>
                
                <div class="form-group">
                    <label for="name">Tên danh mục:</label>
                    <input type="text" class="form-control" value="${category.categoryName}" name="name" id="name" required />
                </div>

                <div class="form-group">
                    <label>Ảnh hiện tại:</label>
                    <c:url value="/image?fname=${category.icon}" var="imgUrl"/>
                    <img class="img-thumbnail" width="200" src="${imgUrl}" alt="Ảnh hiện tại" />
                </div>
                
                <div class="form-group">
                    <label for="icon">Cập nhật ảnh đại diện:</label>
                    <input type="file" class="form-control" name="icon" id="icon" accept="image/*" />
                    <small>Để trống nếu không muốn thay đổi ảnh</small>
                </div>

                <div class="form-actions">
                    <button type="submit" class="btn btn-success">Cập nhật</button>
                    <button type="reset" class="btn btn-primary">Hủy</button>
                    <a href="${pageContext.request.contextPath}/categories/list" class="btn">Quay lại</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>