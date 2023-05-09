<%--<%@ page import="java.time.LocalDate" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous" referrerpolicy="no-referrer"/>


<html>
<head>
    <%@include file="../include/head.jsp" %>

    <style>


        @media (min-width: 990px) {
            .column {
                flex-basis: 50%;
                box-sizing: border-box;
                padding: 0 10px;
            }
        }

        #chat3 .form-control {
            border-color: transparent;
        }

        #chat3 .form-control:focus {
            border-color: transparent;
            box-shadow: inset 0px 0px 0px 1px transparent;
        }

        .badge-dot {
            border-radius: 50%;
            height: 10px;
            width: 10px;
            margin-left: 2.9rem;
            margin-top: -.75rem;
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
        <section>
            <div class="container py-5">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card" id="chat3" style="border-radius: 15px;">
                            <div class="card-body">

                                <div class="row">
                                    <div class="col-md-6 col-lg-5 col-xl-4 mb-4 mb-md-0">

                                        <div class="p-3">

                                            <div class="input-group rounded mb-3">
                                                <input type="search" class="form-control rounded"
                                                       placeholder="Search" aria-label="Search"
                                                       aria-describedby="search-addon"/>
                                                <span class="input-group-text border-0"
                                                      id="search-addon">
                                                                  <i class="fas fa-search"></i>
                                                                </span>
                                            </div>

                                            <div style="position: relative; height: 400px overflow:auto;">
                                                <ul class="list-unstyled mb-0">
                                                    <li class="p-2 border-bottom">
                                                        <a href="#!"
                                                           class="d-flex justify-content-between">
                                                            <div class="d-flex flex-row">
                                                                <div>
                                                                    <img
                                                                            src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                                                            alt="avatar"
                                                                            class="d-flex align-self-center me-3"
                                                                            width="60">
                                                                    <span class="badge bg-success badge-dot"></span>
                                                                </div>
                                                                <div class="pt-1">
                                                                    <p class="fw-bold mb-0">Marie
                                                                        Horwitz</p>
                                                                    <p class="small text-muted">
                                                                        Hello, Are you there?</p>
                                                                </div>
                                                            </div>
                                                            <div class="pt-1">
                                                                <p class="small text-muted mb-1">
                                                                    Just now</p>
                                                                <span class="badge bg-danger rounded-pill float-end">3</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="p-2 border-bottom">
                                                        <a href="#!"
                                                           class="d-flex justify-content-between">
                                                            <div class="d-flex flex-row">
                                                                <div>
                                                                    <img
                                                                            src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava2-bg.webp"
                                                                            alt="avatar"
                                                                            class="d-flex align-self-center me-3"
                                                                            width="60">
                                                                    <span class="badge bg-warning badge-dot"></span>
                                                                </div>
                                                                <div class="pt-1">
                                                                    <p class="fw-bold mb-0">Alexa
                                                                        Chung</p>
                                                                    <p class="small text-muted">
                                                                        Lorem ipsum dolor sit.</p>
                                                                </div>
                                                            </div>
                                                            <div class="pt-1">
                                                                <p class="small text-muted mb-1">5
                                                                    mins ago</p>
                                                                <span class="badge bg-danger rounded-pill float-end">2</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="p-2 border-bottom">
                                                        <a href="#!"
                                                           class="d-flex justify-content-between">
                                                            <div class="d-flex flex-row">
                                                                <div>
                                                                    <img
                                                                            src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3-bg.webp"
                                                                            alt="avatar"
                                                                            class="d-flex align-self-center me-3"
                                                                            width="60">
                                                                    <span class="badge bg-success badge-dot"></span>
                                                                </div>
                                                                <div class="pt-1">
                                                                    <p class="fw-bold mb-0">Danny
                                                                        McChain</p>
                                                                    <p class="small text-muted">
                                                                        Lorem ipsum dolor sit.</p>
                                                                </div>
                                                            </div>
                                                            <div class="pt-1">
                                                                <p class="small text-muted mb-1">
                                                                    Yesterday</p>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="p-2 border-bottom">
                                                        <a href="#!"
                                                           class="d-flex justify-content-between">
                                                            <div class="d-flex flex-row">
                                                                <div>
                                                                    <img
                                                                            src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava4-bg.webp"
                                                                            alt="avatar"
                                                                            class="d-flex align-self-center me-3"
                                                                            width="60">
                                                                    <span class="badge bg-danger badge-dot"></span>
                                                                </div>
                                                                <div class="pt-1">
                                                                    <p class="fw-bold mb-0">Ashley
                                                                        Olsen</p>
                                                                    <p class="small text-muted">
                                                                        Lorem ipsum dolor sit.</p>
                                                                </div>
                                                            </div>
                                                            <div class="pt-1">
                                                                <p class="small text-muted mb-1">
                                                                    Yesterday</p>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="p-2 border-bottom">
                                                        <a href="#!"
                                                           class="d-flex justify-content-between">
                                                            <div class="d-flex flex-row">
                                                                <div>
                                                                    <img
                                                                            src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava5-bg.webp"
                                                                            alt="avatar"
                                                                            class="d-flex align-self-center me-3"
                                                                            width="60">
                                                                    <span class="badge bg-warning badge-dot"></span>
                                                                </div>
                                                                <div class="pt-1">
                                                                    <p class="fw-bold mb-0">Kate
                                                                        Moss</p>
                                                                    <p class="small text-muted">
                                                                        Lorem ipsum dolor sit.</p>
                                                                </div>
                                                            </div>
                                                            <div class="pt-1">
                                                                <p class="small text-muted mb-1">
                                                                    Yesterday</p>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="p-2">
                                                        <a href="#!"
                                                           class="d-flex justify-content-between">
                                                            <div class="d-flex flex-row">
                                                                <div>
                                                                    <img
                                                                            src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava6-bg.webp"
                                                                            alt="avatar"
                                                                            class="d-flex align-self-center me-3"
                                                                            width="60">
                                                                    <span class="badge bg-success badge-dot"></span>
                                                                </div>
                                                                <div class="pt-1">
                                                                    <p class="fw-bold mb-0">Ben
                                                                        Smith</p>
                                                                    <p class="small text-muted">
                                                                        Lorem ipsum dolor sit.</p>
                                                                </div>
                                                            </div>
                                                            <div class="pt-1">
                                                                <p class="small text-muted mb-1">
                                                                    Yesterday</p>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>

                                        </div>

                                    </div>

                                    <div class="col-md-6 col-lg-7 col-xl-8">

                                        <div class="pt-3 pe-3"
                                             style="position: relative; height: 400px; overflow: auto">

                                            <div class="d-flex flex-row justify-content-start">
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava6-bg.webp"
                                                     alt="avatar 1"
                                                     style="width: 45px; height: 100%;">
                                                <div>
                                                    <p class="small p-2 ms-3 mb-1 rounded-3"
                                                       style="background-color: #f5f6f7;">Lorem
                                                        ipsum
                                                        dolor
                                                        sit amet, consectetur adipiscing elit, sed
                                                        do eiusmod tempor incididunt ut labore et
                                                        dolore
                                                        magna aliqua.</p>
                                                    <p class="small ms-3 mb-3 rounded-3 text-muted float-end">
                                                        12:00 PM | Aug 13</p>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row justify-content-end">
                                                <div>
                                                    <p style="background-color: #5bc1ac" class="small p-2 me-3 mb-1 text-white rounded-3">
                                                       어이어이 안녕하신가</p>
                                                    <p class="small me-3 mb-3 rounded-3 text-muted">
                                                        12:00 PM | Aug 13</p>
                                                </div>
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                                     alt="avatar 1"
                                                     style="width: 45px; height: 100%;">
                                            </div>

                                            <div class="d-flex flex-row justify-content-start">
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava6-bg.webp"
                                                     alt="avatar 1"
                                                     style="width: 45px; height: 100%;">
                                                <div>
                                                    <p class="small p-2 ms-3 mb-1 rounded-3"
                                                       style="background-color: #f5f6f7;">Duis aute
                                                        irure
                                                        dolor in reprehenderit in voluptate velit
                                                        esse cillum dolore eu fugiat nulla pariatur.
                                                    </p>
                                                    <p class="small ms-3 mb-3 rounded-3 text-muted float-end">
                                                        12:00 PM | Aug 13</p>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row justify-content-end">
                                                <div>
                                                    <p style="background-color: #5bc1ac"
                                                       class="small p-2 me-3 mb-1 text-white rounded-3 ">
                                                        그렇군요 오늘의 스터디는 이렇게 진행되는군요 겟코드 사이트 넘 멋진 거 아니예요?</p>
                                                    <p class="small me-3 mb-3 rounded-3 text-muted">
                                                        12:00 PM | Aug 13</p>
                                                </div>
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                                     alt="avatar 1"
                                                     style="width: 45px; height: 100%;">
                                            </div>

                                            <div class="d-flex flex-row justify-content-start">
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava6-bg.webp"
                                                     alt="avatar 1"
                                                     style="width: 45px; height: 100%;">
                                                <div>
                                                    <p class="small p-2 ms-3 mb-1 rounded-3"
                                                       style="background-color: #f5f6f7;">Sed ut
                                                        perspiciatis
                                                        unde omnis iste natus error sit voluptatem
                                                        accusantium doloremque laudantium, totam
                                                        rem
                                                        aperiam, eaque ipsa quae ab illo inventore
                                                        veritatis et quasi architecto beatae vitae
                                                        dicta
                                                        sunt explicabo.</p>
                                                    <p class="small ms-3 mb-3 rounded-3 text-muted float-end">
                                                        12:00 PM | Aug 13</p>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row justify-content-end">
                                                <div>
                                                    <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-primary">
                                                        Nemo enim ipsam
                                                        voluptatem quia
                                                        voluptas sit aspernatur aut odit aut fugit,
                                                        sed quia consequuntur magni dolores eos
                                                        qui
                                                        ratione voluptatem sequi nesciunt.</p>
                                                    <p class="small me-3 mb-3 rounded-3 text-muted">
                                                        12:00 PM | Aug 13</p>
                                                </div>
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                                     alt="avatar 1"
                                                     style="width: 45px; height: 100%;">
                                            </div>

                                            <div class="d-flex flex-row justify-content-start">
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava6-bg.webp"
                                                     alt="avatar 1"
                                                     style="width: 45px; height: 100%;">
                                                <div>
                                                    <p class="small p-2 ms-3 mb-1 rounded-3"
                                                       style="background-color: #f5f6f7;">Neque
                                                        porro
                                                        quisquam
                                                        est, qui dolorem ipsum quia dolor sit amet,
                                                        consectetur, adipisci velit, sed quia non
                                                        numquam
                                                        eius modi tempora incidunt ut labore et
                                                        dolore magnam aliquam quaerat
                                                        voluptatem.</p>
                                                    <p class="small ms-3 mb-3 rounded-3 text-muted float-end">
                                                        12:00 PM | Aug 13</p>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row justify-content-end">
                                                <div>
                                                    <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-primary">
                                                        Ut enim ad minima veniam,
                                                        quis
                                                        nostrum exercitationem ullam corporis
                                                        suscipit laboriosam, nisi ut aliquid ex ea
                                                        commodi
                                                        consequatur?</p>
                                                    <p class="small me-3 mb-3 rounded-3 text-muted">
                                                        12:00 PM | Aug 13</p>
                                                </div>
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                                     alt="avatar 1"
                                                     style="width: 45px; height: 100%;">
                                            </div>

                                        </div>

                                        <div style="background-color: #bdecd7; border-radius: 15px;" class="p-2 text-muted d-flex justify-content-start align-items-start align-start pe-3 pt-3 mt-2">
                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava6-bg.webp"
                                                 alt="avatar 3" style="width: 40px; height: 100%; margin-right: 5px">
                                            <textarea type="text" class="form-control form-control-lg"
                                                      id="exampleFormControlInput2"
                                                      placeholder="Type message" rows="4"></textarea>
                                            <div class="d-flex align-middle p-2">
                                                <a class="ms-1 text-muted" href="#!"><i
                                                        class="fas fa-paperclip"></i></a>
                                                <a class="ms-3 text-muted" href="#!"><i
                                                        class="fas fa-smile"></i></a>
                                                <a class="ms-3" href="#!"><i
                                                        class="fas fa-paper-plane"></i></a>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </section>

    </div>
</section>

<%@include file="../include/footer.jsp" %>
<%@include file="../include/js.jsp" %>


</body>
</html>
