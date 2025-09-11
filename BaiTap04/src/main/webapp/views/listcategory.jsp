<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Danh Mục</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/2.3.3/css/dataTables.bootstrap5.css" rel="stylesheet" />
</head>
<body>
    <div class="page-header">
        <div class="container">
            <h1>Quản lý Danh Mục</h1>
        </div>
    </div>
    
    <div class="container">
        <div class="action-bar">
            <form action="${pageContext.request.contextPath}/logout" method="get" class="d-inline">
                <button type="submit" class="btn btn-danger">Đăng xuất</button>
            </form>

            <%-- Chỉ hiển thị nút "Thêm mới" cho Admin và User --%>
            <c:if test="${sessionScope.roleId == 0 || sessionScope.roleId == 2}">
                <a href="<c:url value='/views/add-category.jsp'/>" class="btn btn-success">Thêm mới danh mục</a>
            </c:if>
        </div>

        <div class="data-table-container">
            <table id="categoryTable" class="table table-striped">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Icon</th>
                        <th>Tên danh mục</th>
                        <%-- Chỉ hiển thị cột "Hành động" cho Admin và User --%>
                        <c:if test="${sessionScope.roleId == 0 || sessionScope.roleId == 2}">
                            <th>Hành động</th>
                        </c:if>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${cateList}" var="cate" varStatus="STT">
                        <tr>
                            <td>${STT.index + 1}</td>
                            <c:url value="/image?fname=${cate.icon}" var="imgUrl"></c:url>
                            <td><img height="80" width="100" src="${imgUrl}" class="img-thumbnail" /></td>
                            <td>${cate.categoryName}</td>

                            <%-- Chỉ hiển thị các nút "Sửa" và "Xóa" cho Admin và User --%>
                            <c:if test="${sessionScope.roleId == 0 || sessionScope.roleId == 2}">
                                <td>
                                    <a href="<c:url value='/categories/update?id=${cate.id}'/>" class="btn btn-success btn-sm">Sửa</a>
                                    <a href="<c:url value='/categories/delete?id=${cate.id}'/>" class="btn btn-danger btn-sm" onclick="return confirm