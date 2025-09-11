<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt lại mật khẩu</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body class="auth-container">
    <div class="auth-box">
        <div class="auth-header">
            <h2>Đặt lại mật khẩu</h2>
            <p>Vui lòng nhập mã xác nhận và mật khẩu mới của bạn</p>
        </div>
        
        <form action="${pageContext.request.contextPath}/resetpassword" method="POST">
            <!-- Trường nhập token từ người dùng -->
            <div class="form-group">
                <label for="token">Mã xác nhận (Token)</label>
                <input type="text" class="form-control" id="token" name="token" required placeholder="Nhập mã token bạn nhận được" />
            </div>

            <!-- Trường nhập mật khẩu mới -->
            <div class="form-group">
                <label for="password">Mật khẩu mới</label>
                <input type="password" class="form-control" id="password" name="password" required placeholder="Nhập mật khẩu mới" />
            </div>
            
            <!-- Xác nhận mật khẩu mới -->
            <div class="form-group">
                <label for="confirmPassword">Xác nhận mật khẩu mới</label>
                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required placeholder="Xác nhận mật khẩu mới" />
            </div>

            <!-- Gửi token cùng với mật khẩu mới -->
            <button type="submit" class="btn btn-primary btn-block">Đặt lại mật khẩu</button>
        </form>
        
        <div class="auth-footer">
            <p><a href="${pageContext.request.contextPath}/views/login.jsp">Quay lại trang đăng nhập</a></p>
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