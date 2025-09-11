<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body class="auth-container">
    <div class="auth-box">
        <div class="auth-header">
            <h2>Đăng nhập</h2>
            <p>Vui lòng nhập thông tin đăng nhập của bạn</p>
        </div>

        <c:if test="${not empty alert}">
            <div class="alert alert-danger">${alert}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/login" method="post">
            <div class="form-group">
                <label for="username">Tên đăng nhập:</label> 
                <input type="text" id="username" name="username" class="form-control" placeholder="Nhập tên đăng nhập" required>
            </div>

            <div class="form-group">
                <label for="password">Mật khẩu:</label> 
                <input type="password" id="password" name="password" class="form-control" placeholder="Nhập mật khẩu" required>
            </div>

            <div class="form-group">
                <div class="form-check">
                    <input type="checkbox" name="remember" id="remember" class="form-check-input">
                    <label class="form-check-label" for="remember">Ghi nhớ đăng nhập</label>
                </div>
            </div>

            <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
        </form>

        <div class="auth-footer">
            <p><a href="${pageContext.request.contextPath}/views/forgot_pas.jsp">Quên mật khẩu?</a></p>
            <p>Chưa có tài khoản? <a href="${pageContext.request.contextPath}/views/register.jsp">Đăng ký ngay</a></p>
        </div>
    </div>
</body>
</html>