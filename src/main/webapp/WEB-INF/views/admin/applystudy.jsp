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
    <!-- Content wrapper -->
    <div class="content-wrapper">


<%--      content--%>

        <div class="container mt-5">
            <div class="row">

                <div class="col-lg-12 col-12 text-center mb-5 mt-4">
                    <h2 style="font-size: 43px;">Study Applied Now</h2>
                </div>

                <c:forEach var="list" items="${studyDtoList}">
                <div class="col-md-6 col-lg-4 mb-3">
                    <div class="card text-center">
                        <div class="card-header"><div class="row justify-content-center"><p class="col-4 badge rounded-pill bg-label-warning mr-4">  ${list.skillstack} </p><p class="ms-3 col-4 badge rounded-pill bg-label-primary">  ${list.position}</p></div></div>
                        <div class="card-body">
                            <h5 class="card-title mb-5"> ${list.studyname}</h5>
                            <p class="card-text">${list.personnel}명 모집예정</p>
                            <p class="card-text">${list.studystart}부터 시작</p>
                            <p class="card-text">${list.recruitend}까지 모집종료</p>

                        <div class="card-footer text-muted">${list.regDate}에 신청</div>
                            <input type="hidden" value="${list.id}" id="id">
                            <c:if test="${list.state == 'apply'}">
                            <button type="button" class="btn btn-primary btn-permit" data-study-id="${list.id}" >승인하기</button>
                            <button type="button" data-study-id="${list.id}" class="btn btn-dark btn-decline" >거절하기</button>
                            </c:if>
                            <c:if test="${list.state == 'permit'}">
                                <button type="button" class="btn btn-danger btn-restore" data-study-id="${list.id}" >승인 취소하기</button>
                            </c:if>
                            <c:if test="${list.state == 'decline'}">
                                <button type="button" class="btn btn-info btn-restore" data-study-id="${list.id}" >거절 취소하기</button>
                            </c:if>
                        </div>
                    </div>
                </div>
                </c:forEach>
                <script>
                    $(document).ready(function() {
                        $(".btn-permit, .btn-decline, .btn-restore").click(function() {
                            if(confirm("상태를 변경하시겠습니까?")) {
                                var studyId = $(this).data("study-id");
                                var studyState = "";
                                if ($(this).hasClass("btn-permit")) {
                                    studyState = "permit";
                                } else if ($(this).hasClass("btn-decline")) {
                                    studyState = "decline";
                                } else if ($(this).hasClass("btn-restore")) {
                                    studyState = "apply";
                                }
                                $.ajax({
                                    url: "/admin/applystudy/updatestate",
                                    type: "POST",
                                    data: {id: studyId, state: studyState},
                                    success: function (response) {
                                        if (response == "success") {
                                            location.reload(); // 페이지 리로드
                                        }
                                    },
                                    error: function (xhr) {
                                        console.log(xhr.responseText);
                                    }
                                });
                            }
                        });
                    });
                </script>
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