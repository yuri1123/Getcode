<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
   <%@include file="../include/head.jsp"%>>
</head>
<body>
<%@ include file="../include/header.jsp"%>

<section class="cta-section section-padding section-bg">
    <div class="container">
        <div class="row justify-content-center align-items-center">

            <div class="col-lg-5 col-12 ms-auto">
                <h2 class="mb-0">This is your Study Room</h2>
            </div>

            <div class="col-lg-5 col-12">
<%--                <a href="${contextPath}/study/create" class="custom-btn btn smoothscroll">make study</a>--%>
            </div>

        </div>
    </div>
</section>


<section class="section-padding" >
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12 text-center mb-4">
                <h2>Your Study Here</h2>
            </div>

            <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0">
                <div class="custom-block-wrap">
                    <img src="/resources/assets/images/causes/group-african-kids-paying-attention-class.jpg"
                          style="max-height: 35vh" alt="">

                    <div class="custom-block">
                        <div class="custom-block-body">
                            <h5 class="mb-3">율스 자바 스터디</h5>

                            <p>Lorem Ipsum dolor sit amet, consectetur adipsicing kengan omeg kohm tokito</p>

                            <div class="progress mt-4">
                                <div class="progress-bar w-75" role="progressbar" aria-valuenow="75"
                                     aria-valuemin="0" aria-valuemax="100"></div>
                            </div>

                            <div class="d-flex align-items-center my-2">
                                <p class="mb-0">
                                    <strong>Raised:</strong>
                                    $18,500
                                </p>

                                <p class="ms-auto mb-0">
                                    <strong>Goal:</strong>
                                    $32,000
                                </p>
                            </div>
                        </div>

                        <a href="kind/donate.html" class="custom-btn btn">Enter room</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0">
                <div class="custom-block-wrap">
                    <img src="/resources/assets/images/causes/poor-child-landfill-looks-forward-with-hope.jpg"
                         style="max-height: 35vh" alt="">

                    <div class="custom-block">
                        <div class="custom-block-body">
                            <h5 class="mb-3">자바스크립트 온라인 스터디</h5>

                            <p>Sed leo nisl, posuere at molestie ac, suscipit auctor mauris. Etiam quis metus
                                tempor</p>

                            <div class="progress mt-4">
                                <div class="progress-bar w-50" role="progressbar" aria-valuenow="50"
                                     aria-valuemin="0" aria-valuemax="100"></div>
                            </div>

                            <div class="d-flex align-items-center my-2">
                                <p class="mb-0">
                                    <strong>Raised:</strong>
                                    $27,600
                                </p>

                                <p class="ms-auto mb-0">
                                    <strong>Goal:</strong>
                                    $60,000
                                </p>
                            </div>
                        </div>

                        <a href="kind/donate.html" class="custom-btn btn">Enter room</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 col-12">
                <div class="custom-block-wrap">
                    <img src="/resources/assets/images/causes/african-woman-pouring-water-recipient-outdoors.jpg"
                         style="max-height: 35vh" alt="">

                    <div class="custom-block">
                        <div class="custom-block-body">
                            <h5 class="mb-3">무무짱의 신나는 스프링 프로젝트 </h5>

                            <p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus
                            </p>

                            <div class="progress mt-4">
                                <div class="progress-bar w-100" role="progressbar" aria-valuenow="100"
                                     aria-valuemin="0" aria-valuemax="100"></div>
                            </div>

                            <div class="d-flex align-items-center my-2">
                                <p class="mb-0">
                                    <strong>Raised:</strong>
                                    $84,600
                                </p>

                                <p class="ms-auto mb-0">
                                    <strong>Goal:</strong>
                                    $100,000
                                </p>
                            </div>
                        </div>

                        <a href="kind/donate.html" class="custom-btn btn">Enter room</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>


<%@include file="../include/footer.jsp"%>
<%@include file="../include/js.jsp"%>>


</body>
</html>
