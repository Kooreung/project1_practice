<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-05-07
  Time: 오후 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css"
          integrity="sha512-jnSuA4Ss2PkkikSOLtYs8BlYIeeIK1h99ty4YfvRPAlzr377vr3CXDb7sb7eEEBYjDtcYj+AjBH3FLv5uSJuXg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<c:import url="/WEB-INF/fragment/navbar.jsp"/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-6">
            <h3>맛집 추천 리스트</h3>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>#</th>
                    <th>가게 이름</th>
                    <th>음식 이름</th>
                    <th>가격</th>
                    <th>평점</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${restaurantBoardList}" var="restaurantBoard">
                    <c:url value="/board" var="viewLink">
                        <c:param name="id" value="${restaurantBoard.id}"></c:param>
                    </c:url>
                    <tr>
                        <td>${restaurantBoard.id}</td>
                        <td>${restaurantBoard.restaurantName}</td>
                        <td>${restaurantBoard.foodName}</td>
                        <td>${restaurantBoard.price}</td>
                        <td>${restaurantBoard.score}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
