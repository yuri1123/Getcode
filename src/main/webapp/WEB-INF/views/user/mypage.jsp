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
             height: 15px;
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
                    <a class="mysidebar active" href="${contextPath}/user/mypage/${userDto.id}">My Study<br></a>
                    <a class="mysidebar" href="${contextPath}/user/mymadestudy/${userDto.userid}">My Made Study<br></a>
                    <a class="mysidebar" href="${contextPath}/user/myboard/${userDto.id}">My Board<br></a>
                    <a class="mysidebar " href="${contextPath}/user/myinfo/${userDto.id}">My Info<br></a>
                </div>
            </div>
            <div class="col-10">
                <%--                <div class="tab-content" id="v-pills-tabContent">--%>
                <%--                    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel"--%>
                <%--                         aria-labelledby="v-pills-home-tab">--%>

                <div class="col-lg-12 col-12 text-center mb-4">
                    <h2>Your Study Here</h2>
                </div>
                <div class="col-lg-12 col-12 text-center mb-4">
                    <div class="two-columns">
                        <div class="row justify-content-center">

                            <c:forEach items="${studyDtos}" var="study">
                                <div class="card mt-3 mb-3 col-lg-5 m-3 study" style="border-color: lightgrey;">
                                    <div class="custom-block">
                                        <div class="custom-block-body">
                                            <div class="mb-2">
                                                <a href="#" class="category-block-link badge">
                                                        ${study.skillstack}
                                                </a>

                                                <a href="#" class="category-block-link badge">
                                                        ${study.position}
                                                </a>
                                            </div>
                                                <%--                                                    <h5 class="mb-3" style="font-size: 19px; font-weight: bold" > ${list.studyname}</h5>--%>
                                            <h5 class="mb-3" style="font-size: 19px; font-weight: bold">
                                                    ${study.studyname}</h5>

                                            <div class="d-flex mt-2">
                                                <div class="news-block-author mx-5">
                                                    <p style="font-size: 13px;">
                                                        <i class="bi-person custom-icon me-1"></i>
                                                        참가자1, 참가자2, 참가자3
                                                    </p>
                                                </div>

                                            </div>

                                                <div class="progress mt-4">
                                                    <div id="progress-bar-${study.id}" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
<%--                                            </div>--%>
                                            <script>
                                                // 스터디 시작일과 종료일 가져오기
                                                var startDateStr = "${study.studystart}";
                                                var endDateStr = "${study.studyend}";
                                                console.log(startDateStr)
                                                console.log(endDateStr)
                                                // 시작일과 종료일을 Date 객체로 변환
                                                var startDate = new Date(startDateStr);
                                                var endDate = new Date(endDateStr);

                                                // 현재 날짜와 시작일 사이의 기간 계산
                                                var today = new Date();
                                                var daysSinceStart = Math.round((today - startDate) / (1000 * 60 * 60 * 24));

                                                // 시작일과 종료일 사이의 총 기간 계산
                                                var totalDays = Math.round((endDate - startDate) / (1000 * 60 * 60 * 24));

                                                // 진행 상황 계산
                                                var progress = Math.round((100 * daysSinceStart) / totalDays);
                                                console.log(progress)
                                                // 프로그레스바 업데이트
                                                $("#progress-bar-${study.id}").css("width", progress + "%").attr("aria-valuenow", progress).text(progress + "%");
                                            </script>
                                            <div class="d-flex align-items-center my-2">
                                                <p class="mb-0">
<%--                                                    <strong>now</strong>--%>
                                                        ${study.studystart}
                                                </p>

                                                <p class="ms-auto mb-0">
<%--                                                    <strong></strong>--%>
                                                        <%--                                                                / ${list.personnel} people--%>
                                                    /   ${study.studyend}
                                                </p>

                                            </div>
                                        </div>


                                            <%--                                                <a href="/study/studydetail/${list.id}" class="custom-btn btn m-1">Study Detail</a>--%>
                                        <a href="#" class="custom-btn btn m-2" style="border-radius: 15px;">Enter
                                            Room</a>
                                            <%--                                    onclick="return confirm('스터디에 참여하시겠습니까?');--%>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--        </div>--%>
    <%--    </div>--%>
</section>


<%@include file="../include/footer.jsp" %>
<%@include file="../include/js.jsp" %>


</body>
</html>
