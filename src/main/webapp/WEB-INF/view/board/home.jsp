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
    <style>
        a:link {
            color: black;
            text-decoration-line: none;
        }

        a:visited {
            color: black;
            text-decoration-line: none;
        }

        a:hover {
            color: black;
            text-decoration-line: none;
        }

        a:active {
            color: black;
            text-decoration-line: none;
        }
    </style>
</head>
<body>
<c:import url="/WEB-INF/fragment/navbar.jsp"/>

<div class="row justify-content-center">
    <aside class="col-1">
        <ul class="list-group">
            <li class="list-group-item active" aria-current="true">
                <a href="/">
                    맛집 리스트
                </a>
            </li>
            <li class="list-group-item">
                <a href="/add">
                    새 음식점 등록
                </a>

            </li>
        </ul>
    </aside>
    <div class="col-8">
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
                    <td>
                        <a href="${viewLink}">${restaurantBoard.foodName}</a>
                    </td>
                    <td>${restaurantBoard.price}</td>
                    <td>${restaurantBoard.score}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-10">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <c:if test="${pageInfo.currentPage > 1}">
                        <c:url value="/" var="firstPageLink">
                            <c:param name="page" value="1"/>
                        </c:url>
                        <li class="page-item">
                            <a class="page-link" href="${firstPageLink}" aria-label="First">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${pageInfo.prevPage > 0}">
                        <c:url value="/" var="prevPageLink">
                            <c:param name="page" value="${pageInfo.prevPage}"/>
                        </c:url>
                        <li class="page-item">
                            <a class="page-link" href="${prevPageLink}" aria-label="Previous">
                                &lt;
                            </a>
                        </li>
                    </c:if>

                    <c:forEach begin="${pageInfo.beginPage}" end="${pageInfo.endPage}" var="page">
                        <c:url value="/" var="pageLink">
                            <c:param name="page" value="${page}"/>
                        </c:url>
                        <li class="page-item ${pageInfo.currentPage eq page ? 'active' : ''}">
                            <a class="page-link" href="${pageLink}">${page}</a>
                        </li>
                    </c:forEach>

                    <c:if test="${pageInfo.nextPage < pageInfo.lastPage}">
                        <c:url value="/" var="nextPageLink">
                            <c:param name="page" value="${pageInfo.nextPage}"/>
                        </c:url>
                        <li class="page-item">
                            <a class="page-link" href="${nextPageLink}" aria-label="Next">
                                &gt;
                            </a>
                        </li>
                    </c:if>

                    <c:if test="${pageInfo.currentPage < pageInfo.lastPage}">
                        <c:url value="/" var="lastPageLink">
                            <c:param name="page" value="${pageInfo.lastPage}"/>
                        </c:url>
                        <li class="page-item">
                            <a class="page-link" href="${lastPageLink}" aria-label="Last">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>

                </ul>
            </nav>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
