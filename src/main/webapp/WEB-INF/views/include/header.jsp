<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="/" class="logo">
                        <img src="/resources/yuri/getcode2.png" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->

                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">

                        <!-- 로그인 O session에 값이 들어있을때 -->
                        <c:if test="${User != null}">
                            <p class="text-white" text="[★${User.nickname}님 안녕하세요★]"></p>
                        </c:if>
                        <!-- 회원이 ADMIN인 경우-->
                        <c:if test="${User.role == 'ADMIN'}">
                            <li><a href="/admin" class="text-white">관리자페이지</a></li>
                        </c:if>

                        <%--                <a href="streams.html" class="text-white">관리자페이지</a></li>--%>
                        <li><a href="browse.html" class="text-white">내 스터디</a></li>
                        <li><a href="details.html" style="color:white;">스터디 찾기</a></li>
                        <li><a href="streams.html" class="text-white">커뮤니티</a></li>

                        <!-- 로그인 X session에 값이 없을때 -->
                        <c:if test="${User == null}">
                            <li><a href="/user/login" class="text-white">로그인</a></li>
                        </c:if>

                        <c:if test="${User != null}">
                            <li><a href="/user/logout" class="text-white">로그아웃</a></li>
                        </c:if>

                        <li><a href="profile.html" class="text-white">마이페이지<img
                                src="/resources/assets/images/profile-header.jpg" alt=""></a></li>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->