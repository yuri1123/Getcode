<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>


<!-- beautify ignore:start -->
<html
        lang="ko"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="/resources/adminassets/assets/"
        data-template="vertical-menu-template-free">
<head>
  <%@include file="../include/admin_head.jsp"%>
</head>

<body>

<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
  <div class="layout-container">

    <%@include file="../include/admin_navbar.jsp"%>

      <!--content-->
<div class="col-lg-12 col-12 text-center mb-5 mt-4">
  <h2 style="font-size: 43px;">Study List</h2>
</div>
      <div class="col-lg-10 offset-1 col-12 justify-content-center text-center mb-5 mt-4">
  <div class="card text-center">
    <table class="table table-hover">
      <thead>
      <tr>
        <th>스터디명</th>
        <th>포지션</th>
        <th>기술스택</th>
        <th>참여자</th>
        <th>등록일</th>
        <th>시작일</th>
        <th>신청상태</th>
        <th>설정</th>
      </tr>
      </thead>
      <tbody class="table-border-bottom-0">
      <c:forEach items="${studyDto}" var="studyDto">
      <tr>
        <td>${studyDto.studyname}</td>
        <td>${studyDto.position}</td>
        <td>${studyDto.skillstack}</td>
        <td>
          <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center justify-content-center text-center">
            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" title="" data-bs-original-title="Lilian Fuller">
              <img src="/resources/yuri/yuripic.png" alt="Avatar" class="rounded-circle">
            </li>
            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" title="" data-bs-original-title="Sophia Wilkerson">
              <img src="/resources/yuri/yuripic.png" alt="Avatar" class="rounded-circle">
            </li>
            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" title="" data-bs-original-title="Christina Parker">
              <img src="/resources/yuri/yuripic.png" alt="Avatar" class="rounded-circle">
            </li>
          </ul>
        </td>
        <td><span class="badge bg-label-primary me-1">${studyDto.regDate}</span></td>
        <td><span class="badge bg-label-info me-1">${studyDto.studystart}</span></td>
        <td>
          <c:if test="${studyDto.state == 'apply'}"><span class="badge bg-label-secondary me-1">${studyDto.state}</span></c:if>
          <c:if test="${studyDto.state == 'permit'}"><span class="badge bg-label-warning me-1">${studyDto.state}</span></c:if>
          <c:if test="${studyDto.state == 'decline'}"><span class="badge bg-label-danger me-1">${studyDto.state}</span></c:if>
        </td>
        <td>
          <div class="dropdown">
            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-vertical-rounded"></i></button>
            <div class="dropdown-menu" style="">
              <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a>
              <a class="dropdown-item" href="deletestudy"><i class="bx bx-trash me-1"></i>Delete</a>
            </div>
          </div>
        </td>
      </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>
     <%--    content end--%>



      <%@include file="../include/admin_footer.jsp"%>

      <div class="content-backdrop fade"></div>
    </div>
    <!-- Content wrapper -->
  </div>
  <!-- / Layout page -->
</div>

<!-- Overlay -->
<div class="layout-overlay layout-menu-toggle"></div>
</div>
<!-- / Layout wrapper -->

<div class="buy-now">
  <a
          href="#"
          target="_blank"
          class="btn btn-danger btn-buy-now"
  >Go UP!</a>
</div>
<%@include file="../include/admin_js.jsp"%>

</body>
</html>






</body>
</html>
