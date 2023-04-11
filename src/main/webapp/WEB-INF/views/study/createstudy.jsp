<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
        <div class="row d-flex justify-content-center align-items-center ">
            <div class="col-md-8">
<%--                <div class="card bg-dark text-white " style="border-radius: 1rem;">--%>
<%--                    <div class="card-body ps-5 pe-5 text-center vh-70">--%>

                        <div class="mb-md-5 mt-md-4 pb-5 ">

                          <form class="custom-form contact-form" action="#" method="post" role="form">
                            <h2>Create Study!</h2>

                            <p class="mb-4">이제 당신도 함께 스터디를 시작해보세요! </p>
                            <div class="row">
                            <div class="col-12">
                              <input type="text" name="studyname" id="studyname" class="form-control"
                                     placeholder="스터디명" required>
                            </div>

                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="date" name="studystart" id="studystart" class="form-control"
                                       placeholder="스터디 시작일" required>
                              </div>

                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="date" name="last-name" id="studyend" class="form-control"
                                       placeholder="스터디 종료일" required>
                              </div>
                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="text" name="subject-name" id="subject" class="form-control"
                                       placeholder="스터디 주제" required>
                              </div>
                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="number" name="recruit" id="recruit" class="form-control"
                                       placeholder="모집인원" required>
                              </div>
                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="text" name="onoff" id="onoff" class="form-control"
                                       placeholder="온라인/오프라인" required>
                              </div>
                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="text" name="etc" id="etc" class="form-control"
                                       placeholder="비고사항" required>
                              </div>
                            </div>
<%--                            <button type="submit" class="form-control">reset</button>--%>
                            <button type="submit" class="form-control">create</button>
                          </form>


                        </div>

                    </div>

                </div>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

</section>


<%@include file="../include/footer.jsp" %>
<%@include file="../include/js.jsp" %>
>


</body>
</html>
