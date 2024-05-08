<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-05-08
  Time: 오후 2:12
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
<div class="row justify-content-center">
    <div class="col-8">
        <h3>회원 리스트</h3>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>#</th>
                <th>이메일</th>
                <th>비밀번호</th>
                <th>닉네임</th>
                <th>작성 게시글 수</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${memberList}" var="member">
                <c:url value="/member" var="viewLink">
                    <c:param name="id" value="${memeber.id}"></c:param>
                </c:url>
                <tr>
                    <td>${member.id}</td>
                    <td>${member.email}</td>
                    <td>${member.password}</td>
                    <td>${member.nickName}</td>
                    <td>공란</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
