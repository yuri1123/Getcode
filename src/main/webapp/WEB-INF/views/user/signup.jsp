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

<section class="gradient-custom">
  <div style="height: 80px;"></div>
  <div class="container">
    <div class="row d-flex justify-content-center align-items-center ">
      <div class="col-md-10">
        <div class="card bg-dark text-white " style="border-radius: 1rem;">
          <div class="card-body ps-5 pe-5 text-center vh-70">

            <div class="mb-md-5 mt-md-4 pb-5 ">

              <h2 class="fw-bold mb-2 text-uppercase">SIGN UP</h2>
              <p class="text-white-50 mb-5">Please Write your Information!</p>

              <div class="row ">

              <div class="form-outline form-white mb-4 col-md-10 mr-1">
                <label class="text-right form-label" for="userid">ID</label>
                <input type="text" id="userid" class="form-control form-control-lg" />
              </div>
              <div class="form-outline form-white mb-4 col-md-5 mr-1">
                <label class="text-right form-label" for="password">PASSWORD</label>
                <input type="password" id="password" class="form-control form-control-lg" />
              </div>
                <div class="form-outline form-white mb-4 col-md-5 mr-1">
                  <label class="text-right form-label" for="passwordcheck">PASSWORD 확인</label>
                  <input type="password" id="passwordcheck" class="form-control form-control-lg" />
                </div>

              <div class="form-outline form-white mb-4 col-md-5 mr-1">
                <label class="text-right form-label" for="username">NAME</label>
                <input type="text" id="username" class="form-control form-control-lg" />
              </div>

                <div class="form-outline form-white mb-4 col-md-5">
                  <label class="text-right form-label" for="nickname">NICKNAME</label>
                  <input type="text" id="nickname" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-5 mr-1">
                  <label class="text-right form-label" for="email">EMAIL</label>
                  <input type="email" id="email" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-5">
                  <label class="text-right form-label" for="phonenumber">PHONE</label>
                  <input type="text" id="phonenumber" class="form-control form-control-lg" />
                </div>
                <div class="form-outline form-white mb-4 col-md-5">
                  <label class="text-right form-label" for="postNumber">postcode</label>
                  <input type="text" id="postNumber" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-10">
                  <label class="text-right form-label" for="address1">ADDRESS1</label>
                  <input type="text" id="address1" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-10">
                  <label class="text-right form-label" for="address2">ADDRESS2</label>
                  <input type="text" id="address2" class="form-control form-control-lg" />
                </div>
                <div class="form-outline form-white mb-4 col-md-5 mr-1">
                  <label class="text-right form-label" for="birthday">BIRTH</label>
                  <input type="date" id="birthday" class="form-control form-control-lg" />
                </div>
                <div class="form-outline form-white mb-4 col-md-5">
                  <label class="text-right form-label" for="sex">SEX</label>
                  <input type="radio" id="sex" class="form-control form-control-lg" />
                </div>
              </div>

              <button class="btn btn-outline-light btn-lg px-5" type="submit">SIGN UP</button>

              </div>

            </div>

          </div>
        </div>
      </div>
    <div style="height: 80px;"></div>
    </div>

</section>


<%@include file="../include/footer.jsp"%>

    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="resources/assets/js/isotope.min.js"></script>
    <script src="resources/assets/js/owl-carousel.js"></script>
    <script src="resources/assets/js/tabs.js"></script>
    <script src="resources/assets/js/popup.js"></script>
    <script src="resources/assets/js/custom.js"></script>


</body>
</html>