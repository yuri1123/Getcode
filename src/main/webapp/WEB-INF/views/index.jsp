<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<head>
    <%@ include file="include/head.jsp" %>
</head>

<body>
<%@ include file="include/header.jsp" %>

<main>

    <%--    <section class="hero-section hero-section-full-height">--%>
    <%--        <div class="container-fluid">--%>
    <%--            <div class="row">--%>

    <%--                <div class="col-lg-12 col-12 p-0">--%>
    <%--                    <div id="hero-slide" class="carousel carousel-fade slide" data-bs-ride="carousel">--%>
    <%--                        <div class="carousel-inner">--%>
    <%--                            <div class="carousel-item active">--%>
    <%--                                <img src="/resources/yuri/makestudy.jpg"--%>
    <%--                                     class="carousel-image img-fluid" alt="...">--%>

    <%--                                <div class="carousel-caption d-flex flex-column justify-content-end">--%>
    <%--                                    <h1 style="font-size: 38px;">Make Study</h1>--%>
    <%--                                    <p style="font-size: 16px;">멋진 스터디를 만들어<br> 팀원들과 함께 실력을 향상시켜보아요</p>--%>
    <%--                                </div>--%>
    <%--                            </div>--%>

    <%--                            <div class="carousel-item">--%>
    <%--                                <img src="/resources/yuri/community.jpg"--%>
    <%--                                     class="carousel-image img-fluid" alt="...">--%>

    <%--                                <div class="carousel-caption d-flex flex-column justify-content-end">--%>
    <%--                                    <h1 style="font-size: 38px;">Community</h1>--%>
    <%--                                    <p style="font-size: 16px;">스터디 커뮤니티 공간을 <br> 스터디원간의 소통에 활용해 보세요</p>--%>
    <%--                                </div>--%>
    <%--                            </div>--%>

    <%--                            <div class="carousel-item">--%>
    <%--                                <img src="/resources/yuri/setgoal.jpg" class="carousel-image img-fluid" alt="...">--%>

    <%--                                <div class="carousel-caption d-flex flex-column justify-content-end">--%>
    <%--                                    <h1 style="font-size: 38px;">Manage</h1>--%>
    <%--                                    <p style="font-size: 16px;">프로젝트 스터디에서 <br>프로젝트 관리 메뉴를 활용해보세요!</p>--%>
    <%--                                </div>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>

    <%--                        <button class="carousel-control-prev" type="button" data-bs-target="#hero-slide"--%>
    <%--                                data-bs-slide="prev">--%>
    <%--                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>--%>
    <%--                            <span class="visually-hidden">Previous</span>--%>
    <%--                        </button>--%>

    <%--                        <button class="carousel-control-next" type="button" data-bs-target="#hero-slide"--%>
    <%--                                data-bs-slide="next">--%>
    <%--                            <span class="carousel-control-next-icon" aria-hidden="true"></span>--%>
    <%--                            <span class="visually-hidden">Next</span>--%>
    <%--                        </button>--%>
    <%--                    </div>--%>
    <%--                </div>--%>

    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </section>--%>


    <section style="margin-top:100px;">
        <div class="container">
            <div class="row">

                <div class="col-lg-10 col-12 text-center mx-auto">
                    <h2 class="mb-5">당신이 원하는 스터디를 찾아보세요!</h2>
                </div>

                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                    <div class="featured-block d-flex justify-content-center align-items-center">
                        <a href="kind/donate.html" class="d-block">
                            <img src="/resources/yuri/frontend.png" width="40%" class="featured-block-image img-fluid"
                                 alt="">

                            <p class="featured-block-text"><strong>Frontend</strong></p>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
                    <div class="featured-block d-flex justify-content-center align-items-center">
                        <a href="kind/donate.html" class="d-block">
                            <img src="/resources/yuri/backend.png" width="40%" class="featured-block-image img-fluid"
                                 alt="">

                            <p class="featured-block-text"><strong>Backend</strong></p>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
                    <div class="featured-block d-flex justify-content-center align-items-center">
                        <a href="kind/donate.html" class="d-block">
                            <img src="/resources/yuri/smartphone.png" width="40%" class="featured-block-image img-fluid"
                                 alt="">

                            <p class="featured-block-text"><strong>Mobile</strong></p>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                    <div class="featured-block d-flex justify-content-center align-items-center">
                        <a href="kind/donate.html" class="d-block">
                            <img src="/resources/yuri/more.png" width="40%" class="featured-block-image img-fluid"
                                 alt="">

                            <p class="featured-block-text"><strong>Etc</strong></p>
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </section>


    <section style="margin-top:100px;">
        <div class="container">
            <div class="row">

                <div class="col-lg-10 col-12 text-center mx-auto">
                    <h2 class="mb-5">인기있는 스터디를 확인해보세요!</h2>
                </div>
                <div class="container custom-form contact-form justify-content-center text-center" style=" margin-bottom: 100px;">
                    <div class="row">

                        <c:forEach items="${studyDtos}" var="list">
                            <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0 ">
                                <div class="custom-block-wrap">
                                    <div class="custom-block">
                                        <div class="custom-block-body">
                                            <h5 class="mb-3"
                                                style="font-size: 19px; font-weight: bold">${list.studyname}</h5>

                                            <p>${list.studyname}</p>

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
                                        <a href="kind/donate.html" class="custom-btn btn">Study Details</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>



            </div>
        </div>
    </section>

    <%@include file="include/footer.jsp" %>
    <%@include file="include/js.jsp" %>


</body>

</html>