<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

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

    <div class="col-md-6 col-lg-4 mb-3">
        <div class="card text-center">
            <div class="card-header">Featured</div>
            <div class="card-body">
                <h5 class="card-title">Special title treatment</h5>
                <p class="card-text">With supporting text below as a natural.</p>
            <div class="card-footer text-muted">2 days ago</div>
                <a href="javascript:void(0)" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
    </div>

                <div class="col-md-6 col-lg-4 mb-3">
                    <div class="card text-center">
                        <div class="card-header">Featured</div>
                        <div class="card-body">
                            <h5 class="card-title">Special title treatment</h5>
                            <p class="card-text">With supporting text below as a natural.</p>
                        <div class="card-footer text-muted">2 days ago</div>
                            <a href="javascript:void(0)" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 mb-3">
                    <div class="card text-center">
                        <div class="card-header">Featured</div>
                        <div class="card-body">
                            <h5 class="card-title">Special title treatment</h5>
                            <p class="card-text">With supporting text below as a natural.</p>
                        <div class="card-footer text-muted">2 days ago</div>
                            <a href="javascript:void(0)" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 mb-3">
                    <div class="card text-center">
                        <div class="card-header">Featured</div>
                        <div class="card-body">
                            <h5 class="card-title">Special title treatment</h5>
                            <p class="card-text">With supporting text below as a natural.</p>
                        <div class="card-footer text-muted">2 days ago</div>
                            <a href="javascript:void(0)" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 mb-3">
                    <div class="card text-center">
                        <div class="card-header">Featured</div>
                        <div class="card-body">
                            <h5 class="card-title">Special title treatment</h5>
                            <p class="card-text">With supporting text below as a natural.</p>
                        <div class="card-footer text-muted">2 days ago</div>
                            <a href="javascript:void(0)" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 mb-3">
                    <div class="card text-center">
                        <div class="card-header">Featured</div>
                        <div class="card-body">
                            <h5 class="card-title">Special title treatment</h5>
                            <p class="card-text">With supporting text below as a natural.</p>
                        <div class="card-footer text-muted">2 days ago</div>
                            <a href="javascript:void(0)" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>

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