<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quên Mật Khẩu</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <div class="auth-container">
        <div class="auth-box">
            <div class="auth-header">
                <h2>Quên Mật Khẩu</h2>
                <p>Vui lòng nhập email để đặt lại mật khẩu</p>
            </div>

            <!-- Alert thông báo lỗi hoặc thành công -->
            <c:if test="${not empty error}">
                <div class="alert alert-danger" role="alert">
                    ${error}
                </div>
            </c:if>
          
            <form action="${pageContext.request.contextPath}/forgotpassword" method="POST">
                <div class="form-group">
                    <label for="email">Địa chỉ Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Nhập email của bạn" required />
                </div>
                <button type="submit" class="btn btn-primary btn-block">Gửi yêu cầu reset</button>
            </form>
            
            <div class="auth-footer">
                <p>Nhớ mật khẩu? <a href="${pageContext.request.contextPath}/views/login.jsp">Đăng nhập</a></p>
            </div>
        </div>
    </div>
</body>
</html>