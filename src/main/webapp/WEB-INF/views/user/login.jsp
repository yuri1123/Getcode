<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />


<html>
<head>
  <%@include file="../include/head.jsp" %>
  >

  <style>
    .colortitle {
      color: lightpink;
    }

    .colorsub {
      color: white;
    }
  </style>

</head>
<body>
<%@ include file="../include/header.jsp" %>

<section class="gradient-custom">
  <div style="height: 80px;"></div>
  <div class="container">
    <div class="row d-flex justify-content-center text-center">

        <div class="col-md-8 justify-content-center text-center">

          <div class="mb-md-5 mt-md-4 pb-5 justify-content-center text-center">

            <form class="custom-form contact-form justify-content-center text-center" action="#" method="post" role="form">
              <h2>Login</h2>
              <p class="mb-4">Please enter your login and password!</p>

              <form action="${contextPath}/user/login" role="form" method="post">
              <div class="row justify-content-center align-items-center">
                <div class="col-8 justify-content-center align-items-center">
                  <div class="form-outline form-white mb-4">
                    <label class="form-label text-start" for="userid">ID</label>
                    <input type="text" id="userid" name="userid" class="form-control form-control-lg"/>
                  </div>
                </div>

                <div class="col-8 justify-content-center align-items-center">
                  <div class="form-outline form-white mb-4">
                    <label class="form-label text-start" for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control form-control-lg"/>
                  </div>
                </div>

                <p class="small mb-5 pb-lg-2 justify-content-center align-items-center"><a class="text-white-50" href="#!">Forgot password?</a></p>
              </div>
              <%--                            <button type="submit" class="form-control">reset</button>--%>
                <button class="btn btn-outline-light btn-lg px-5 " type="submit">Login</button>
            </form>
              <div>
                <p class="mb-0">Don't have an account? <a href="${contextPath}/user/signup" class="text-black-70 fw-bold">Sign Up</a> </p>
              </div>

            </form>
        </div>


        </div>
      </div>
    </div>

</section>


<%@include file="../include/footer.jsp" %>
<%@include file="../include/js.jsp" %>


</body>
</html>
