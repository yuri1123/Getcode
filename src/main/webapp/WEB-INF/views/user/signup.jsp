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

          <form class="custom-form contact-form justify-content-center text-center" action="/user/signup" method="post" role="form">
            <h2>SIGN UP</h2>
            <p class="mb-4">Register your account in GetCode!</p>

              <div class="row">

              <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                <label class="text-right form-label" for="userid">ID</label>
                <input type="text" id="userid" name="userid" class="form-control form-control-lg" />
              </div>
              <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                <label class="text-right form-label" for="password">PASSWORD</label>
                <input type="password" id="password" name="password" class="form-control form-control-lg" />
              </div>
                <div class="form-outline form-white mb-4 col-md-5">
                  <label class="text-right form-label" for="passwordcheck">PASSWORD 확인</label>
                  <input type="password" id="passwordcheck"  class="form-control form-control-lg" />
                </div>

              <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                <label class="text-right form-label" for="username">NAME</label>
                <input type="text" id="username" name="username" class="form-control form-control-lg" />
              </div>

                <div class="form-outline form-white mb-4 col-md-5 ">
                  <label class="text-right form-label" for="nickname">NICKNAME</label>
                  <input type="text" id="nickname" name="nickname" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                  <label class="text-right form-label" for="email">EMAIL</label>
                  <input type="email" id="email" name="email" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-5">
                  <label class="text-right form-label" for="phonenumber">PHONE</label>
                  <input type="text" id="phonenumber" name="phonenumber" class="form-control form-control-lg" />
                </div>
                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                  <label class="text-right form-label" for="postcode">postcode</label>
                  <input type="text" id="postcode" name="postcode" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                  <label class="text-right form-label" for="address1">ADDRESS1</label>
                  <input type="text" id="address1" name="address1" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                  <label class="text-right form-label" for="address2">ADDRESS2</label>
                  <input type="text" id="address2" name="address2" class="form-control form-control-lg" />
                </div>
                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                  <label class="text-right form-label" for="birthday">BIRTH</label>
                  <input type="date" id="birthday" name="birthday" class="form-control form-control-lg" />
                </div>
                <div class="form-outline form-white mb-4 col-md-5">
                  <label class="text-right form-label" for="sex">SEX</label>
                  <input type="text" id="sex" name="sex" class="form-control form-control-lg" />
                </div>
                <input type="hidden" value="${User.userid}" name="createdBy" id="createdBy">
              </div>
                  <div class="form-outline form-white mb-4 col-md-12 justify-content-center text-center">
                    <center>
                      <button style="width: 200px; height: 50px" class=" custom-btn custom-border-btn btn text-center" type="submit">Sign Up</button>
                      <button style="width: 200px;" class=" custom-btn custom-border-btn btn text-center" type="reset">Reset</button>
                    </center>
                  </div>
          </form>
              </div>
              </div>

            </div>

          </div>
        </div>
      </div>
    <div style="height: 80px;"></div>
    </div>

</section>


<%@include file="../include/footer.jsp" %>
<%@include file="../include/js.jsp" %>


</body>
</html>