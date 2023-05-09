<%@ page import="java.time.LocalDate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<html>
<head>

    <%@include file="../include/head.jsp" %>

    <style>
        .two-columns {
            display: flex;
            flex-wrap: wrap;
        }

        @media (min-width: 990px) {
            .column {
                flex-basis: 50%;
                box-sizing: border-box;
                padding: 0 10px;
            }
        }

        .mysidebar.active {
            background-color: #20c997;
            color: white;
            border-radius: 20px;
            font-size: 18px;
            margin-bottom: 10px;
            padding: 10px;
        }

        .mysidebar {
            color: #676666;
            border-radius: 20px;
            font-size: 18px;
            margin-bottom: 10px;
            padding: 10px;
        }

        .mysidebar:hover {
            background-color: #ecfae4;
            color: #676666;
            border-radius: 20px;
            font-size: 18px;
            margin-bottom: 10px;
            padding: 10px;
        }

        .progress {
            height: 13px;
        }
    </style>

</head>
<body>
<%@ include file="../include/header.jsp" %>

<section class="cta-section section-padding section-bg">
    <div class="container">
        <div class="row justify-content-center align-items-center">

            <div class="col-lg-5 col-12 ms-auto">
                <h2 class="mb-0">Study Community</h2>
            </div>

            <div class="col-lg-5 col-12">
                <%--                <a href="${contextPath}/study/create" class="custom-btn btn smoothscroll">make study</a>--%>
            </div>

        </div>
    </div>
</section>


<section class="section-padding">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                <!-- Bg -->
                <div class="pt-20 rounded-top" style="background:
                url(/resources/yuri/studyroom.jpg) no-repeat;
                background-size: cover;">
                </div>
                <div class="bg-white rounded-bottom smooth-shadow-sm ">
                    <div class="d-flex align-items-center justify-content-between
                  pt-4 pb-6 px-4">
                        <div class="d-flex align-items-center">
                            <!-- avatar -->
                            <div class="avatar-xxl avatar-indicators avatar-online me-2
                      position-relative d-flex justify-content-end
                      align-items-end mt-n10">
                                <img src="/resources/yuri/squirrel.png" height="100" width="100" class="avatar-xxl
                        rounded-circle border border-4 border-white-color-40" alt="">
                                <%--                                <a href="#!" class="position-absolute top-0 right-0 me-2" data-bs-toggle="tooltip" data-placement="top" title="" data-original-title="Verified" data-bs-original-title="">--%>
                                <%--                                    <img src="/resources/yuri/studyroom.jpg" alt="" height="30" width="30">--%>
                                <%--                                </a>--%>
                            </div>
                            <!-- text -->
                            <div class="lh-1">
                                <h2 class="mb-0">유리짱의 스프링 프로젝트 겟코드
                                    <a href="#!" class="text-decoration-none" data-bs-toggle="tooltip"
                                       data-placement="top" title="" data-original-title="Beginner"
                                       data-bs-original-title="">

                                    </a>
                                </h2>
                                <p class="mb-0 d-block">진행기간 : 2023.04.01 ~ 2023.07.08 ( 20% 진행중)</p>
                            </div>
                        </div>
                        <div>
                            <a href="#" class="btn btn-outline-primary
                      d-none d-md-block">Edit Profile</a>
                        </div>
                    </div>
                    <!-- nav -->
                    <ul class="nav nav-lt-tab px-4" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Overview</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link alert-danger" href="#">Chat</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">Notice</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Files</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Repeat</a>

                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Activity</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- content -->
        <!-- content -->
        <div class="py-6">
            <!-- row -->
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-12 mb-6">
                    <!-- card -->
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between mb-5
                      align-items-center">
                                <!-- avatar -->
                                <div class="d-flex align-items-center">
                                    <div>
                                        <img src="../assets/images/avatar/avatar-1.jpg" alt=""
                                             class="avatar avatar-md rounded-circle">
                                    </div>
                                    <div class="ms-3">
                                        <h5 class="mb-0 fw-bold">Jitu Chauhan</h5>
                                        <p class="mb-0">19 minutes ago</p>
                                    </div>
                                </div>
                                <div>
                                    <!-- dropdown -->
                                    <div class="dropdown dropstart">
                                        <a href="#" class="text-muted text-primary-hover" id="dropdownprojectFive"
                                           data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                 viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                 stroke-linecap="round" stroke-linejoin="round"
                                                 class="feather feather-more-vertical icon-xxs">
                                                <circle cx="12" cy="12" r="1"></circle>
                                                <circle cx="12" cy="5" r="1"></circle>
                                                <circle cx="12" cy="19" r="1"></circle>
                                            </svg>
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="dropdownprojectFive">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else
                                                here</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-4">
                                <!-- text -->
                                <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspen disse
                                    var ius enim in eros elementum tristique. Duis cursus, mi quis viverra ornare, eros
                                    dolor interdum nulla, ut commodo diam libero vitae erat.</p>
                                <img src="../assets/images/blog/blog-img-1.jpg" class="rounded-3 w-100" alt="">
                            </div>
                            <!-- icons -->
                            <div class="mb-4">
                                <span class="me-1 me-md-4"><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" viewBox="0 0 24 24" fill="none"
                                                                stroke="currentColor" stroke-width="2"
                                                                stroke-linecap="round" stroke-linejoin="round"
                                                                class="feather feather-heart icon-xxs text-muted me-2"><path
                                        d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg><span>20 Like</span></span>
                                <span class="me-1 me-md-4"><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" viewBox="0 0 24 24" fill="none"
                                                                stroke="currentColor" stroke-width="2"
                                                                stroke-linecap="round" stroke-linejoin="round"
                                                                class="feather feather-message-square icon-xxs text-muted me-2"><path
                                        d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg><span>12 Comment</span></span>
                                <span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                           fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                           stroke-linejoin="round"
                                           class="feather feather-share-2 icon-xxs text-muted me-2"><circle cx="18"
                                                                                                            cy="5"
                                                                                                            r="3"></circle><circle
                                        cx="6" cy="12" r="3"></circle><circle cx="18" cy="19" r="3"></circle><line
                                        x1="8.59" y1="13.51" x2="15.42" y2="17.49"></line><line x1="15.41" y1="6.51"
                                                                                                x2="8.59"
                                                                                                y2="10.49"></line></svg><span>Share</span></span>
                            </div>
                            <div class="border-bottom border-top py-5 d-flex
                      align-items-center mb-4">
                                <!-- avatar group -->
                                <div class="avatar-group me-2 me-md-3">
                      <span class="avatar avatar-sm">
                            <!-- img -->
                          <img alt="avatar" src="../assets/images/avatar/avatar-7.jpg" class="rounded-circle">
                        </span>
                                    <span class="avatar avatar-sm">
                             <!-- img -->
                          <img alt="avatar" src="../assets/images/avatar/avatar-8.jpg" class="rounded-circle">
                        </span>
                                    <span class="avatar avatar-sm">
                             <!-- img -->
                          <img alt="avatar" src="../assets/images/avatar/avatar-9.jpg" class="rounded-circle">
                        </span>
                                </div>
                                <div><span>You and 20 more liked this</span></div>
                            </div>
                            <!-- row -->
                            <div class="row">
                                <div class="col-xl-1 col-lg-2 col-md-2 col-12 mb-3 mb-lg-0">
                                    <!-- avatar -->
                                    <img src="../assets/images/avatar/avatar-1.jpg"
                                         class="avatar avatar-md rounded-circle" alt="">
                                </div>
                                <!-- input -->
                                <div class="col-xl-11 col-lg-10 col-md-9 col-12 ">

                                    <div class="row g-3 align-items-center">
                                        <div class="col-md-2 col-xxl-1">
                                            <label for="name" class="col-form-label ">Name</label>
                                        </div>
                                        <div class="col-md-8 col-xxl-9  mt-0 mt-md-3">
                                            <input type="password" id="name" class="form-control"
                                                   aria-describedby="name">
                                        </div>
                                        <div class="col-md-2 col-xxl-2">
                                            <button type="submit" class="btn btn-primary">Post</button>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>

                        <!-- content -->


                    </div>
                </div>
            </div>
        </div>
</section>


<%@include file="../include/footer.jsp" %>
<%@include file="../include/js.jsp" %>


</body>
</html>
