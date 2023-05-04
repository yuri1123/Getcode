<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>

<head>
    <%@ include file="include/head.jsp" %>
    <style>
        .progress {
            height: 13px;
        }
    </style>
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
                <div class="container custom-form contact-form justify-content-center text-center"
                     style=" margin-bottom: 100px;">
                    <div class="row">
                        <c:forEach items="${studyDtos}" var="list">
                            <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0 ">
                                <div class="custom-block-wrap">
                                    <div class="custom-block">
                                        <div class="custom-block-body">
                                            <div class="mb-2">
                                                <a href="#" class="category-block-link badge">
                                                        ${list.skillstack}
                                                </a>

                                                <a href="#" class="category-block-link badge">
                                                        ${list.position}
                                                </a>
                                            </div>
                                            <h5 class="mb-3"
                                                style="font-size: 19px; font-weight: bold">${list.studyname}</h5>

                                            <div class="d-flex mt-2 justify-content-center align-content-center">
                                                <div class="news-block-author mx-1">
                                                    <p style="font-size: 16px;">
                                                        <c:forEach items="${partnerMap[list.id]}" var="partner">
                                                            <i class="bi-person custom-icon me-1"></i>
                                                            ${partner}
                                                        </c:forEach>
                                                    </p>
                                                </div>
                                            </div>

                                            <div class="progress mt-4">
                                                <div id="progress-bar-${list.id}" class="progress-bar"
                                                     role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <script>
                                                // 현재 인원 구하기
                                                var currentPersonnel = ${fn:length(partnerMap[list.id])};
                                                // 진행 상황 계산
                                                var progress = Math.round((100 * currentPersonnel) / ${list.personnel});
                                                // 프로그레스바 업데이트
                                                $("#progress-bar-${list.id}").css("width", progress + "%").attr("aria-valuenow", progress).text(progress + "%");
                                            </script>

                                            <div class="d-flex align-items-center my-2">
                                                <c:set var="partnerList" value="${partnerMap[list.id]}"/>
                                                <p class="mb-0">
                                                    <strong>Now:</strong>
                                                        ${fn:length(partnerList)} 명
                                                </p>
                                                <p class="ms-auto mb-0">
                                                    / ${list.personnel} 명
                                                </p>
                                            </div>
                                        </div>
                                        <a href="/study/studydetail/${list.id}" class="custom-btn btn">Study Details</a>
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