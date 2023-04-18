<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
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

    </style>

</head>
<body>
<%@ include file="../include/header.jsp" %>

<section class="cta-section section-padding section-bg">
    <div class="container">
        <div class="row justify-content-center align-items-center">

            <div class="col-lg-5 col-12 ms-auto">
                <h2 class="mb-0">This is your Place</h2>
            </div>

            <div class="col-lg-5 col-12">
                <%--                <a href="${contextPath}/study/create" class="custom-btn btn smoothscroll">make study</a>--%>
            </div>

        </div>
    </div>
</section>


<section class="section-padding">
    <div class="container">
        <div class="row col-12 ">
            <!-- javascript behavior vertical pills -->
            <div class="col-2">
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="navbar-nav nav-link active nav-linkactive mb-2" id="v-pills-home-tab"
                       data-bs-toggle="pill" href="${contextPath}/user/mypage/" role="tab" aria-controls="v-pills-home"
                       aria-selected="true">My Study</a>
                    <a class="navbar-nav nav-link" id="v-pills-profile-tab" data-bs-toggle="pill"
                       href="${contextPath}/user/madestudy" role="tab" aria-controls="v-pills-profile"
                       aria-selected="false">My Made Study</a>
                    <a class="navbar-nav nav-link" id="v-pills-messages-tab" data-bs-toggle="pill"
                       href=${contextPath}/user/myboard" role="tab" aria-controls="v-pills-messages" aria-selected="false">My Board</a>
                    <a class="navbar-nav nav-link" id="v-pills-settings-tab" data-bs-toggle="pill"
                       href=${contextPath}/user/myinfo" role="tab" aria-controls="v-pills-settings" aria-selected="false">My Info</a>
                </div>
            </div>
            <div class="col-10">
                <div class="tab-content" id="v-pills-tabContent">


                    <div class="card mt-3 mb-3 col-lg-5 m-3" style="border-color: lightgrey;">
                        <div class="custom-block">
                            <div class="custom-block-body">
                                <div class="mb-2">
                                    <a href="#" class="category-block-link badge">
                                        JAVA
                                        <%--                                                            ${list.skillstack}--%>
                                    </a>

                                    <a href="#" class="category-block-link badge">
                                        Back-end
                                        <%--                                                            ${list.position}--%>
                                    </a>
                                </div>
                                <%--                                                    <h5 class="mb-3" style="font-size: 19px; font-weight: bold" > ${list.studyname}</h5>--%>
                                <h5 class="mb-3" style="font-size: 19px; font-weight: bold" >
                                    율스코딩과 함께하는 자바 스터디</h5>

                                <div class="d-flex mt-2">
                                    <div class="news-block-author mx-5">
                                        <p style="font-size: 13px;">
                                            <i class="bi-person custom-icon me-1"></i>
                                            참가자1, 참가자2, 참가자3
                                        </p>
                                    </div>

                                </div>
                                <div class="progress mt-4">
                                    <div class="progress-bar w-50" role="progressbar" aria-valuenow="50"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="d-flex align-items-center my-2">
                                    <p class="mb-0">
                                        <strong>now  </strong>
                                        2020.01.15
                                    </p>

                                    <p class="ms-auto mb-0">
                                        <strong></strong>
                                        <%--                                                            / ${list.personnel} people--%>
                                        / 2023.04.18
                                    </p>

                                </div>
                            </div>

                            <%--                                                <a href="/study/studydetail/${list.id}" class="custom-btn btn m-1">Study Detail</a>--%>
                            <a href="#" class="custom-btn btn m-2" style="border-radius: 15px;">Enter Room</a>
                            <%--                                    onclick="return confirm('스터디에 참여하시겠습니까?');--%>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>
    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
         aria-labelledby="v-pills-profile-tab">...
    </div>
    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
         aria-labelledby="v-pills-messages-tab">...
    </div>
    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel"
         aria-labelledby="v-pills-settings-tab">

        <div class="col-lg-12 col-12 text-center mb-4">
            <h2>My Information</h2>
        </div>
        <div class="col-lg-12 col-12 text-center mb-4" >

            <div class="row ">

                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                    <label class="text-right form-label" for="userid">${userDto.id}</label>
                    <input type="text" id="userid" readonly="readonly" name="userid" class="form-control form-control-lg"/>
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
                <input type="hidden" value="${User.userid}" name="modifiedBy" id="modifiedBy">
                <div class="form-outline form-white mb-4 col-md-5 justify-content-center text-center">
                    <button class="nav-link custom-btn custom-border-btn btn justify-content-center text-center" type="submit">Modify</button>
                </div>
            </div>
        </div>
    </div>





                 </div>
            </div>
        </div>
    </div>
</section>


<%@include file="../include/footer.jsp" %>
<%@include file="../include/js.jsp" %>


</body>
</html>
