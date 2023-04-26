<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link type="text/css" href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <title>유리의 GETCODE 사이트</title>

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" type="text/css" href="/resources/vendor/bootstrap/css/bootstrap.min.css">

  <%--    <!-- Additional CSS Files -->--%>
  <link type="text/css" type="text/css" rel="stylesheet" href="/resources/assets/css/fontawesome.css">
  <link type="text/css" type="text/css" rel="stylesheet" href="/resources/assets/css/templatemo-cyborg-gaming.css">
  <link type="text/css" type="text/css" rel="stylesheet" href="/resources/assets/css/owl.css">
  <link type="text/css" type="text/css" rel="stylesheet" href="/resources/assets/css/animate.css">
  <link type="text/css" type="text/css" rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

  <style>
    .gradient-custom {
      /* fallback for old browsers */
      background: #ff83c2;
      /* Chrome 10-25, Safari 5.1-6 */
      background: -webkit-linear-gradient(to right, rgb(255, 131, 194), rgb(253, 222, 162));
      /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
      background: linear-gradient(to right, rgb(255, 131, 194), rgb(253, 222, 162))
    }
  </style>

</head>
<body>
<%@ include file="../include/header.jsp"%>

<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
              <p class="text-white-50 mb-5">Please enter your login and password!</p>

              <form action="/user/login" role="form" method="post">

                <div class="form-outline form-white mb-4">
                  <label class="form-label text-start" for="userid">ID</label>
                  <input type="text" id="userid" name="userid" class="form-control form-control-lg"/>
                </div>

                <div class="form-outline form-white mb-4">
                  <label class="form-label text-start" for="password">Password</label>
                  <input type="password" id="password" name="password" class="form-control form-control-lg"/>
                </div>

                <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>

                <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
              </form>

              <div class="d-flex justify-content-center text-center mt-4 pt-1">
                <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
              </div>
            </div>

            <div>
              <p class="mb-0">Don't have an account? <a href="/user/signup" class="text-white-50 fw-bold">Sign Up</a>
              </p>
            </div>

          </div>
        </div>
      </div>
    </div>
    <div style="height: 80px;"></div>
  </div>

</section>

<%@include file="../include/footer.jsp"%>

<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/resources/assets/js/isotope.min.js"></script>
<script src="/resources/assets/js/owl-carousel.js"></script>
<script src="/resources/assets/js/tabs.js"></script>
<script src="/resources/assets/js/popup.js"></script>
<script src="/resources/assets/js/custom.js"></script>


</body>
</html>
