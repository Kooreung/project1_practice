<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-05-08
  Time: 오후 12:01
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
<div class="contains">
    <div class="row justify-content-center">
        <div class="col-8">
            <h3>회원가입</h3>
            <form action="/member/signup" method="post" onsubmit="return checkValues()">
                <div class="my-3">
                    <label class="form-label" for="inputEmail">이메일</label>
                    <div class="input-group">
                        <input required class="form-control" id="inputEmail" name="email" type="email">
                        <button class="btn btn-outline-secondary" id="buttonEmailCheck" type="button"
                                onclick="emailCheck()">
                            중복확인
                        </button>
                    </div>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="inputPassword">비밀번호</label>
                    <input required class="form-control" id="inputPassword" name="password" type="password"
                           oninput="passwordCheck()">
                </div>
                <div class="mb-3">
                    <label class="form-label" for="inputPasswordCheck">비밀번호 확인</label>
                    <input required class="form-control" id="inputPasswordCheck" type="password"
                           oninput="passwordCheck()">
                    <div class="form-text" id="passwordMessage"></div>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="inputNickname">닉네임</label>
                    <div class="input-group">
                        <input required class="form-control" id="inputNickName" name="nickName" type="text">
                        <button class="btn btn-outline-secondary" id="buttonNickNameCheck" type="button"
                                onclick="nickNameCheck()">
                            중복확인
                        </button>
                    </div>
                </div>
                <div>
                    <button class="btn btn-primary">회원가입</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function checkValues() {
        const password = document.getElementById("inputPassword").value;
        const passwordCheck = document.getElementById("inputPasswordCheck").value;

        if (password != "" && password == passwordCheck) {
            return true;
        } else {
            alert("비밀번호가 일치하지 않습니다.")
            return false;
        }
    }

    async function emailCheck() {
        const email = document.getElementById("inputEmail").value;
        const url = "/member/email?email=" + email;
        const response = await fetch(encodeURI(url));

        alert(await response.text());
    }

    function passwordCheck() {
        const password = document.getElementById("inputPassword").value;
        const passwordCheck = document.getElementById("inputPasswordCheck").value;

        if (password != passwordCheck) {
            document.querySelector("#passwordMessage").textContent = "비밀번호가 일치하지 않습니다.";
        } else {
            document.querySelector("#passwordMessage").textContent = "";
        }
    }

    async function nickNameCheck() {
        const nickName = document.getElementById("inputNickName").value;
        const url = "/member/nickName?nickName=" + nickName;
        const response = await fetch(encodeURI(url));

        alert(await response.text());
    }
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
