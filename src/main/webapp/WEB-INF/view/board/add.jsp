<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-05-07
  Time: 오후 2:09
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
            <h3>새 음식점 등록</h3>
            <br>
            <form action="/add" method="post">
                <div class="mb-3">
                    <label for="inputRestaurant" class="form-label">
                        가게이름
                    </label>
                    <input id="inputRestaurant" name="restaurantName" type="text" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="inputFoodName" class="form-label">
                        음식이름
                    </label>
                    <input id="inputFoodName" name="foodName" type="text" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="inputPrice" class="form-label">
                        가격
                    </label>
                    <input id="inputPrice" name="price" type="text" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="inputPrice" class="form-label">
                        점수
                    </label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="score" id="inputScore1" value="1.0"
                               required>
                        <label class="form-check-label" for="inputScore1">
                            1.0
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="score" id="inputScore2" value="2.0"
                               required>
                        <label class="form-check-label" for="inputScore2">
                            2.0
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="score" id="inputScore3" value="3.0"
                               required>
                        <label class="form-check-label" for="inputScore3">
                            3.0
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="score" id="inputScore4" value="4.0"
                               required>
                        <label class="form-check-label" for="inputScore4">
                            4.0
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="score" id="inputScore5" value="5.0"
                               required>
                        <label class="form-check-label" for="inputScore5">
                            5.0
                        </label>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="inputTextarea" class="form-label">
                        한줄평
                    </label>
                    <textarea id="inputTextarea" name="content" class="form-control" cols="30" rows="10"
                              required></textarea>
                </div>
                <div class="mb-3">
                    <button class="btn btn-primary">저장</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
