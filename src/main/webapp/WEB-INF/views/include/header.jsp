<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <nav class="main-nav">
          <!-- ***** Logo Start ***** -->
          <a href="../index.jsp" class="logo">
            <img src="/resources/yuri/getcode2.png" alt="">
          </a>
          <!-- ***** Logo End ***** -->
          <!-- ***** Search End ***** -->
          <div class="search-input">
            <form id="search" action="#">
              <input type="text" placeholder="Type Something" id='searchText' name="searchKeyword" onkeypress="handle" />
              <i class="fa fa-search"></i>
            </form>
          </div>
          <!-- ***** Search End ***** -->
          <!-- ***** Menu Start ***** -->
          <ul class="nav">
<%--            <li><a href="index.jsp" >홈으로</a></li>--%>
            <li><a href="browse.html" class="active">내 스터디</a></li>
            <li><a href="details.html">스터디 찾기</a></li>
            <li><a href="streams.html">관리자페이지</a></li>
            <li><a href="streams.html">커뮤니티</a></li>
            <li><a href="/user/login">로그인</a></li>
            <li><a href="profile.html">마이페이지<img src="/resources/assets/images/profile-header.jpg" alt=""></a></li>
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