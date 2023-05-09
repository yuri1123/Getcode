<%@ page import="java.time.LocalDate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<html>
<head>

    <%@include file="../include/head.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <rel ></rel>
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
                                    <a href="#!" class="text-decoration-none" data-bs-toggle="tooltip" data-placement="top" title="" data-original-title="Beginner" data-bs-original-title="">

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
                            <a  href="${contextPath}/mycommunity/chat">Chat</a>
                        </li>

                        <li class="nav-item">
                            <a href="#">Notice</a>
                        </li>
                        <li class="nav-item">
                            <a href="#">Files</a>
                        </li>
                        <li class="nav-item">
                            <a  href="${contextPath}/mycommunity/repeat">Repeat</a>

                        </li>
                        <li class="nav-item">
                            <a href="#">Activity</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
                        <!-- content -->
                        <div class="py-6">
                            <!-- row -->
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-12 mb-6">
                                    <!-- card -->
                                    <div class="card">
                                        <!-- card body -->
                                        <div class="card-body">
                                            <!-- card title -->
                                            <h4 class="card-title">About Me</h4>
                                            <span class="text-uppercase fw-medium text-dark
                      fs-5 ls-2">Bio</span>
                                            <!-- text -->
                                            <p class="mt-2 mb-6">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit. Suspen disse var ius enim in eros elementum tristique. Duis
                                                cursus, mi quis viverra ornare, eros dolor interdum nulla, ut commodo
                                                diam libero vitae erat.
                                            </p>
                                            <!-- row -->
                                            <div class="row">
                                                <div class="col-12 mb-5">
                                                    <!-- text -->
                                                    <h6 class="text-uppercase fs-5 ls-2">Position
                                                    </h6>
                                                    <p class="mb-0">Theme designer at Bootstrap.</p>
                                                </div>
                                                <div class="col-6 mb-5">
                                                    <h6 class="text-uppercase fs-5 ls-2">Phone </h6>
                                                    <p class="mb-0">+32112345689</p>
                                                </div>
                                                <div class="col-6 mb-5">
                                                    <h6 class="text-uppercase fs-5 ls-2">Date of Birth </h6>
                                                    <p class="mb-0">01.10.1997</p>
                                                </div>
                                                <div class="col-6">
                                                    <h6 class="text-uppercase fs-5 ls-2">Email </h6>
                                                    <p class="mb-0">Dashui@gmail.com</p>
                                                </div>
                                                <div class="col-6">
                                                    <h6 class="text-uppercase fs-5 ls-2">Location
                                                    </h6>
                                                    <p class="mb-0">Ahmedabad, India</p>
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
