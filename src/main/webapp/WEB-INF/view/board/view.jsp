<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-05-07
  Time: 오후 4:07
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
            <h3>가게 ${restaurantBoard.restaurantName} 메뉴 ${restaurantBoard.foodName} 의 평가</h3>
            <div class="mb-3">
                <label for="inputRestaurant" class="form-label">
                    가게이름
                </label>
                <input id="inputRestaurant" value="${restaurantBoard.restaurantName}" type="text" class="form-control"
                       readonly>
            </div>
            <div class="mb-3">
                <label for="inputFoodName" class="form-label">
                    음식이름
                </label>
                <input id="inputFoodName" value="${restaurantBoard.foodName}" type="text" class="form-control" readonly>
            </div>
            <div class="mb-3">
                <label for="inputPrice" class="form-label">
                    가격
                </label>
                <input id="inputPrice" value="${restaurantBoard.price}" type="text" class="form-control" readonly>
            </div>
            <div class="mb-3">
                <label for="inputScore" class="form-label">
                    점수
                </label>
                <input id="inputScore" value="${restaurantBoard.score}" type="text" class="form-control" readonly>
            </div>
            <div class="mb-3">
                <label for="inputTextarea" class="form-label">
                    한줄평
                </label>
                <textarea id="inputTextarea" class="form-control" cols="30" rows="10"
                          readonly>${restaurantBoard.content}</textarea>
            </div>
            <div class="mb-3">
                <label for="inputInserted" class="form-label">
                    작성일시
                </label>
                <input id="inputInserted" class="form-control" type="datetime-local" value="${restaurantBoard.inserted}"
                       readonly>
            </div>
            <div class="mb-3">
                <button form="formDelete" class="btn btn-danger">게시글 삭제</button>
                <a href="/edit?id=${restaurantBoard.id}" class="btn btn-secondary">게시글 수정</a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
