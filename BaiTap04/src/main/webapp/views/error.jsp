<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lỗi</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <div class="auth-container">
        <div class="auth-box">
            <div class="auth-header">
                <h2 class="text-danger">Có lỗi xảy ra</h2>
            </div>
            
            <div class="alert alert-danger">
                ${error} <!-- Hiển thị thông báo lỗi từ servlet -->
            </div>

            <div class="text-center">
                <a href="${pageContext.request.contextPath}/views/forgot_pas.jsp" class="btn btn-primary">Quay lại trang reset mật khẩu</a>
            </div>
        </div>
    </div>
</body>
</html>