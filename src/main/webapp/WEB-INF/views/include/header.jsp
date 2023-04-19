<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<header class="site-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-12 d-flex flex-wrap">
                <p class="d-flex me-4 mb-0">
                    <i class="bi-geo-alt me-2"></i>
                    수원시 영통구 동탄지성로488번길 22
                </p>

                <p class="d-flex mb-0">
                    <i class="bi-envelope me-2"></i>

                    <a href="yurifrom1123@gmail.com">
                        yurifrom1123@gmail.com
                    </a>
                </p>
            </div>

            <div class="col-lg-5 col-12 ms-auto d-lg-block d-none">
                <ul class="social-icon">
                    <li class="social-icon-item">
                    <!-- 로그인 O session에 값이 들어있을때 -->
                    <c:if test="${User.userid != null}">
                        <p class="pr-1 ps-1 fw-bold">[${User.nickname}님 안녕하세요😊😊😍]</p>
                    </c:if>
                    </li>

                </ul>
            </div>

        </div>
    </div>
</header>
<nav class="navbar navbar-expand-lg bg-light shadow-lg">
    <div class="container">
        <a class="navbar-brand" href="${contextPath}/">
            <img src="/resources/yuri/getcode2.png" class="logo img-fluid" alt="GetCodeLogo">
            <span>
                    Get Code!
                    <small>Get Code with me!</small>
                </span>
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <!-- 회원이 ADMIN인 경우-->
                    <c:if test="${not empty sessionScope.User and sessionScope.User.role == 'ADMIN'}">
                <li><a class="nav-link click-scroll"
                       href="${contextPath}/admin" >Admin</a></li>
                </c:if>
                </li>

                <li class="nav-item">
                    <a class="nav-link click-scroll" href="${contextPath}/">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link click-scroll" href="${contextPath}/study/browse">Search</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link click-scroll dropdown-toggle" href=""
                       id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">Community</a>

                    <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                        <li><a class="dropdown-item" href="kind/news.html">Notice</a></li>
                        <li><a class="dropdown-item" href="/community/qnalist">Q&A</a></li>
                        <li><a class="dropdown-item" href="/community/qnalist">Review</a></li>
                    </ul>
                </li>

                <li class="nav-item">
                    <c:if test="${User != null}">
                    <a class="nav-link click-scroll" href="${contextPath}/user/mypage/${User.id}">My Page</a>
                    </c:if>
                </li>
                <li class="nav-item ms-3">
                    <!-- 로그인 X session에 값이 없을때 -->
                    <c:if test="${User.userid == null}">
                        <a  class="nav-link custom-btn custom-border-btn btn" href="${contextPath}/user/login" >LOGIN</a>
                    </c:if>

                    <c:if test="${User.userid != null}">
                        <a class="nav-link custom-btn custom-border-btn btn" href="${contextPath}/user/logout">LOGOUT</a>
                    </c:if>
<%--                    <a class="nav-link custom-btn custom-border-btn btn" href="kind/donate.html">Donate</a>--%>
                </li>
            </ul>
        </div>
    </div>
</nav>

