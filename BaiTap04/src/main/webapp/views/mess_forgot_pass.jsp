<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông báo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body class="auth-container">
    <div class="auth-box">
        <div class="auth-header">
            <h2>Thông báo</h2>
        </div>
        
        <div class="text-center mb-4">
            <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" fill="currentColor" class="bi bi-envelope-check text-info" viewBox="0 0 16 16">
                <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
                <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
            </svg>
        </div>

        <!-- Hiển thị thông báo -->
        <div class="alert alert-info">
            ${message}
        </div>

        <!-- Nút quay lại trang đăng nhập -->
        <a href="${pageContext.request.contextPath}/views/reset_pas.jsp" class="btn btn-primary btn-block">Đến trang đặt lại mật khẩu</a>
        
        <div class="auth-footer mt-3">
            <p><a href="${pageContext.request.contextPath}/views/login.jsp">Quay lại trang đăng nhập</a></p>
        </div>
    </div>
</body>
</html>