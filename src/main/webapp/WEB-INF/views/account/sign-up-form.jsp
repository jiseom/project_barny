<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html lang="ko">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Find your own drink, Barny</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon-2.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/static/main_page/css/styles.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/static/css/styles.css">
    <!--jQuery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/static/main_page/css/styles.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/static/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="/static/login/css/util.css">
    <link rel="stylesheet" type="text/css" href="/static/login/css/main.css">
</head>

<body id="page-top">

<%--navbar--%>
<%@ include file="/WEB-INF/views/include/navbar.jsp" %>

<!--signUpForm-->
<form:form name="frmMember" modelAttribute="signUpForm" action="/account/new" method="POST">
<div class="container" style="width:60%; padding: 8rem 0;">
    <div class="input-form-backgroud row">
        <div class="input-form col-md-12 mx-auto">
            <h4 class="mb-3 join_title">회원가입</h4>
            <div class="form-line"></div>
            <form class="validation-form" novalidate>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <div class="wrap-input100 validate-input m-b-16" style="background-color: transparent;">
                            <label for="accountId">아이디</label>
                            <input class="form-control" type="text" id="accountId" name="accountId"
                                   value="${signUpForm.accountId}"
                                   placeholder="6~12자 이내의 영어,숫자 조합 " required
                                   minlength="6" maxlength="12">
                            <form:errors path="accountId"/>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="wrap-input100 validate-input m-b-16" style="background-color: transparent;">
                            <label for="name">이름</label>
                            <input class="form-control" type="text" id="name" name="name"
                                   value="${signUpForm.name}"
                                   placeholder="" required>
                            <form:errors path="name"/>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="wrap-input100 validate-input m-b-16" style="background-color: transparent;">
                            <label for="password">패스워드</label>
                            <input class="form-control" type="password" id="password" name="password"
                                   placeholder="8자~20자 이내의 영문,숫자,특수기호 조합" required>
                            <form:errors path="password"/>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="wrap-input100 validate-input m-b-16" style="background-color: transparent;">
                            <label for="nickname">닉네임</label>
                            <input class="form-control" type="text" id="nickname" name="nickname"
                                   value="${signUpForm.nickname}"
                                   placeholder="" required>
                            <form:errors path="nickname"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8 mb-3 ">
                        <div class="wrap-input100 validate-input m-b-16" style="background-color: transparent;">
                            <label for="email">이메일</label>
                            <input type="email"
                                   placeholder="E-Mail" name="email" id="email"
                                   value="${signUpForm.email}"
                                   class="form-control" required>
                            <form:errors path="email" cssStyle="color: #e80f25"/>
                        </div>
                    </div>
                    <div class="col-md-3 mb-4 pt-4">
                        <input type="button" value="인증하기" id="sendMail" class="btn btn-outline-primary btn-s"> <br>
                    </div>
                    <div class="col-md-8 mb-3 ">
                        <input type="text" placeholder="인증 키 입력" style="display: none;"
                               class="compare form-control" required><span class="compare-text"
                                                                           style="display: none">불일치</span>
                    </div>
                </div>
                <div class="row">
                    <label for="postcode">주소</label>
                    <div class="col-md-8 mb-3">
                        <input type="text" class="form-control" id="postcode" name="address" placeholder="우편번호">
                    </div>
                    <div class="col-md-4 mb-3">
                        <input type="button" class="btn btn-outline-primary btn-s"
                               onclick="execDaumPostcode()"
                               value="우편번호 찾기"><br>
                    </div>
                    <div class="col-md-8 mb-3">
                        <input type="text" class="form-control" id="roadAddress"
                               value="${signUpForm.address}"
                               name="address"
                               placeholder="도로명주소 " required>
                        <div class="invalid-feedback">
                            주소를 입력해주세요.
                        </div>
                    </div>
                    <div class="col-md-8 mb-3 ">
                        <input type="text" class="form-control" id="detailAddress"
                               value="${signUpForm.address}"
                               name="address"
                               placeholder="상세주소" required>
                        <div class="invalid-feedback">
                            주소를 입력해주세요.
                        </div>
                        <input type="hidden" id="jibunAddress" placeholder="지번주소"></br>
                        <span id="guide" style="color:#6A6666;display:none"></span>
                        <input type="hidden" id="extraAddress" placeholder="참고항목">
                    </div>
                </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 mb-3">
            <label for="tel">연락처</label>
            <input type="tel" class="form-control"
                   value="${signUpForm.tel}"
                   placeholder="010-0000-0000"
                   id="tel" name="tel">
            <div class="invalid-feedback"> 연락처를 입력해주세요.</div>
        </div>
        <div class="col-md-4 mb-3"><label for="dateOfBirth">생년월일</label>
            <input type="date"
                   class="form-control"
                   value="${signUpForm.dateOfBirth}"
                   id="dateOfBirth"
                   name="dateOfBirth"
                   placeholder=""
                   required>
            <div class="invalid-feedback"> 생년월일을 입력해주세요.</div>
        </div>
    </div>

    <hr class="mb-4" >
    <h4 class="h4"> 홈페이지 이용약관 </h4>
    <hr class="mb-3">
    <textarea rows="5"  cols="100" name="content">3조(개인정보 보호 원칙) ① 개인정보처리자는 개인정보의 처리 목적을 명확하게 하여야 하고 그 목적에 필요한 범위에서 최소한의 개인정보만을 적법하고 정당하게 수집하여야 한다.

② 개인정보처리자는 개인정보의 처리 목적에 필요한 범위에서 적합하게 개인정보를 처리하여야 하며, 그 목적 외의 용도로 활용하여서는 아니 된다.

③ 개인정보처리자는 개인정보의 처리 목적에 필요한 범위에서 개인정보의 정확성, 완전성 및 최신성이 보장되도록 하여야 한다.

④ 개인정보처리자는 개인정보의 처리 방법 및 종류 등에 따라 정보주체의 권리가 침해받을 가능성과 그 위험 정도를 고려하여 개인정보를 안전하게 관리하여야 한다.

⑤ 개인정보처리자는 개인정보 처리방침 등 개인정보의 처리에 관한 사항을 공개하여야 하며, 열람청구권 등 정보주체의 권리를 보장하여야 한다.

⑥ 개인정보처리자는 정보주체의 사생활 침해를 최소화하는 방법으로 개인정보를 처리하여야 한다.

⑦ 개인정보처리자는 개인정보를 익명 또는 가명으로 처리하여도 개인정보 수집목적을 달성할 수 있는 경우 익명처리가 가능한 경우에는 익명에 의하여, 익명처리로 목적을 달성할 수 없는 경우에는 가명에 의하여 처리될 수 있도록 하여야 한다. <개정 2020. 2. 4.>

⑧ 개인정보처리자는 이 법 및 관계 법령에서 규정하고 있는 책임과 의무를 준수하고 실천함으로써 정보주체의 신뢰를 얻기 위하여 노력하여야 한다.
        </textarea>

    <div>
        <br>
        <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input"
                   id="aggrement" required> &nbsp; 개인정보 수집 및 이용에 동의합니다.
                <%--        <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label></div>--%>
        </div>
        <div class="mb-4"></div>
        <div class="form-line"></div>
        <div style="text-align: right;">
            <button class="btn btn-primary btn-lg btn-block" style="font-family: BBTreeGB; " id="submit-btn"
                    type="submit">가입 완료
            </button>
            </form>
        </div>

        <script> window.addEventListener('load', () => {
            const forms = document.getElementsByClassName('validation-form');
            Array.prototype.filter.call(forms, (form) => {
                form.addEventListener('submit', function (event) { //이 addEventListener 가 submit 이라는 이벤트를 발생시켰을떄 function실행
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false); </script>
        </form:form>
    </div>
</body>

<%--JS--%>
<script src="/static/join_page/js/join.js"></script>
<script src="/static/login/js/main.js"></script>
<script src="/static/join_page/js/find-address.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/static/login/vendor/animsition/js/animsition.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="/static/login/vendor/select2/select2.min.js"></script>
<script src="/static/login/vendor/daterangepicker/moment.min.js"></script>
<script src="/static/login/vendor/daterangepicker/daterangepicker.js"></script>
<script src="/static/login/vendor/countdowntime/countdowntime.js"></script>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="/static/main_page/js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</html>