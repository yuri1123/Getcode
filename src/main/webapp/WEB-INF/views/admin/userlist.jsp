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
  <h2 style="font-size: 43px;">User List</h2>
</div>
      <div class="col-lg-10 offset-1 col-12 justify-content-center text-center mb-5 mt-4">
  <div class="card text-center">
    <table class="table table-hover">
      <thead>
      <tr>
        <th>순번</th>
        <th>유저아이디</th>
        <th>유저닉네임</th>
        <th>유저권한</th>
        <th>가입일자</th>
        <th>설정</th>
      </tr>
      </thead>
      <tbody class="table-border-bottom-0">
      <c:forEach items="${userDto}" var="userDto">
      <tr data-id="${userDto.id}">
        <td>${userDto.id}</td>
        <td>${userDto.userid}</td>
        <td>${userDto.nickname}</td>
        <td>
          <c:if test="${userDto.role == 'USER'}"><span class="badge bg-label-secondary me-1">${userDto.role}</span></c:if>
          <c:if test="${userDto.role == 'ADMIN'}"><span class="badge bg-label-warning me-1">${userDto.role}</span></c:if>
        </td>
        <td>${userDto.regDate}</td>
        <td>
          <div class="dropdown">
            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-vertical-rounded"></i></button>
            <div class="dropdown-menu" style="">
              <a class="dropdown-item" href="#" onclick="deleteUser(this)">
                <i class="bx bx-trash me-1"></i> Delete
              </a>
              <script>
                function deleteUser(obj) {
                  if (confirm("정말로 이 유저를 삭제하시겠습니까?")) {
                    let id = $(obj).closest('tr').data('id');
                    if (!id) {
                      id = ${userDto.id};
                    }// 해당 열의 id값 추출
                    var url = "/admin/user/delete/" + id;
                    $.ajax({
                      url: url,
                      type: "DELETE",
                      dataType: "json",
                      cache: false,
                      success: function(result, status) {
                        alert(${msg})
                        location.href = '/admin/userlist';
                      },
                      error: function(jqXHR, status, error) {
                        alert("삭제 실패");
                      }
                    });
                  }
                }
              </script>
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
