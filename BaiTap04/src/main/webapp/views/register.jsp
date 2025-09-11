<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body class="auth-container">
    <div class="auth-box">
        <div class="auth-header">
            <h2>Đăng ký tài khoản</h2>
            <p>Tạo tài khoản mới để bắt đầu sử dụng dịch vụ</p>
        </div>

        <c:if test="${not empty alert}">
            <div class="alert alert-danger">${alert}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/register" method="post">
            <div class="form-group">
                <label for="username">Tên đăng nhập:</label> 
                <input type="text" id="username" name="username" class="form-control" placeholder="Nhập tên đăng nhập" required />
            </div>

            <div class="form-group">
                <label for="email">Email:</label> 
                <input type="email" id="email" name="email" class="form-control" placeholder="Nhập địa chỉ email" required />
            </div>

            <div class="form-group">
                <label for="password">Mật khẩu:</label> 
                <input type="password" id="password" name="password" class="form-control" placeholder="Nhập mật khẩu" required />
            </div>
            
            <div class="form-group">
                <label for="confirmPassword">Xác nhận mật khẩu:</label> 
                <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Xác nhận mật khẩu" required />
            </div>

            <button type="submit" class="btn btn-primary btn-block">Đăng ký</button>
        </form>

        <div class="auth-footer">
            <p>Đã có tài khoản? <a href="${pageContext.request.contextPath}/views/login.jsp">Đăng nhập</a></p>
        </div>
    </div>
    
    <script>
        // JavaScript để xác nhận mật khẩu khớp
        document.querySelector('form').addEventListener('submit', function(e) {
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            
            if (password !== confirmPassword) {
                e.preventDefault();
                alert('Mật khẩu xác nhận không khớp!');
            }
        });
    </script>
</body>
</html>