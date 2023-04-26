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
  <h2 style="font-size: 43px;">유저 권한 변경</h2>
</div>
      <div class="col-lg-10 offset-1 col-12 justify-content-center text-center mb-5 mt-4">
  <div class="card text-center">
    <table class="table table-hover">
      <thead>
      <tr>
        <th>순번</th>
        <th>유저아이디</th>
        <th>유저권한</th>
        <th>권한변경</th>
        <th>저장</th>
      </tr>
      </thead>
      <tbody class="table-border-bottom-0 ">
      <c:forEach items="${userDto}" var="userDto">
      <tr>
        <td>${userDto.id}</td>
        <td>${userDto.userid}</td>
        <td>
          <c:if test="${userDto.role == 'USER'}"><span class="badge bg-label-secondary me-1">${userDto.role}</span></c:if>
          <c:if test="${userDto.role == 'ADMIN'}"><span class="badge bg-label-warning me-1">${userDto.role}</span></c:if>
        </td>
        <td><center><select class="form-control text-center justify-content-center" style="font-size:13px;width: 150px; height: 30px " id="role">
          <c:if test="${userDto.role == 'USER'}">
            <option value="USER" selected>유저</option>
            <option value="ADMIN">관리자</option>
          </c:if>
          <c:if test="${userDto.role == 'ADMIN'}">
            <option value="USER" >유저</option>
            <option value="ADMIN" selected>관리자</option>
          </c:if>
        </select></center></td>
        <td><button type="button" class="btn btn-primary" style="height: 30px; font-size: 15px">저장</button>
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
