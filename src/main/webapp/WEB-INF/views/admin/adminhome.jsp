<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<!-- beautify ignore:start -->
<html
        lang="ko"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="/resources/adminassets/assets/"
        data-template="vertical-menu-template-free">
<head>
    <%@include file="../include/admin_head.jsp" %>
</head>

<body>
<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">

        <%@include file="../include/admin_navbar.jsp" %>
        <!-- Content wrapper -->
        <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
                <div class="row">

                    <%--        서비스평점--%>
                    <div class="col-lg-12 mb-4 order-0">
                        <div class="card">
                            <div class="d-flex align-items-end row">
                                <div class="col-sm-7">
                                    <div class="card-body">
                                        <h5 class="card-title text-primary"> GET CODE 서비스의 평점은? 🎉</h5>
                                        <p class="mb-4">
                                            겟코드 유저들은 <span class="fw-bold">75%</span>의 만족도를 가지고 있습니다.
                                        </p>
                                        <%--                      <a href="javascript:;" class="btn btn-sm btn-outline-primary">View Badges</a>--%>
                                    </div>
                                </div>
                                <div class="col-sm-5 text-center text-sm-left">
                                    <div class="card-body pb-0 px-0 px-md-4">
                                        <img
                                                src="/resources/yuri/developer.png"
                                                height="140"
                                                alt="View Badge User"
                                                data-app-dark-img="illustrations/man-with-laptop-dark.png"
                                                data-app-light-img="illustrations/man-with-laptop-light.png"
                                        />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--        /서비스평점--%>

                    <div class="row">
                        <!-- 포지션별 스터디 -->
                        <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
                            <div class="card h-100">
                                <div class="card-header d-flex align-items-center justify-content-between pb-0">
                                    <div class="card-title mb-0">
                                        <h5 class="m-0 me-2">포지션별 스터디</h5>
                                        <small class="text-muted">Study By Positoning </small>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="d-flex justify-content-center align-items-center mb-3"
                                         style="width: auto; height: 200px;">
                                        <%--                                        <div class="d-flex flex-column align-items-center gap-1">--%>
                                        <%--                                            <h2 class="mb-2">${totalcount}건</h2>--%>
                                        <%--                                            <span>Total Studies</span>--%>
                                        <%--                                        </div>--%>
                                        <div style="max-height: 130px;max-width: 130px">
                                            <canvas id="positioncahrt"></canvas>
                                        </div>
                                        <script>

                                            var positions = JSON.parse('${positions}');
                                            var studyCounts = JSON.parse('${studyCounts}');

                                            var data = {
                                                // labels: positions,
                                                datasets: [
                                                    {
                                                        data: studyCounts,
                                                        backgroundColor: ["#FF6384", "#36A2EB", "#FFCE56"],
                                                        hoverBackgroundColor: ["#FF6384", "#36A2EB", "#FFCE56"],
                                                        text: positions + studyCounts.reduce((a, b) => a + b, 0)
                                                    }
                                                ]
                                            };

                                            var options = {
                                                tooltips: {
                                                    enabled: true,
                                                    callbacks: {
                                                        title: function (tooltipItem, data) {
                                                            return positions[tooltipItem[0].index] + " : ";
                                                        },
                                                        label: function (tooltipItem, data) {
                                                            var value = data.datasets[0].data[tooltipItem.index];
                                                            return value + "건";
                                                        }
                                                    }
                                                }
                                            };

                                            // 차트를 그리는 함수
                                            function drawChart() {
                                                var ctx = document.getElementById("positioncahrt").getContext("2d");
                                                var myChart = new Chart(ctx, {
                                                    height: 80,
                                                    width: 80,
                                                    type: 'doughnut',
                                                    data: data,
                                                    options: options
                                                });
                                            }

                                            // 페이지 로드시 차트를 그립니다.
                                            drawChart();

                                        </script>

                                    </div>
                                    <ul class="p-0 m-0">
                                        <c:forEach items="${positionchart}" var="position">
                                            <li class="d-flex mb-4 pb-1">
                                                <div class="avatar flex-shrink-0 me-3">
                                        <span class="avatar-initial rounded bg-label-primary">
                                            <c:choose>
                                                <c:when test="${position.position == 'backend'}">
                                                    <i class="bi bi-gear"></i>
                                                </c:when>
                                                <c:when test="${position.position == 'frontend'}">
                                                    <i class="bi bi-binoculars"></i>
                                                </c:when>
                                                <c:when test="${position.position == 'mobile'}">
                                                    <i class="bi bi-tablet"></i>
                                                </c:when>
                                                <c:when test="${position.position == 'etc'}">
                                                    <i class="bi bi-three-dots"></i>
                                                </c:when>
                                            </c:choose>

                                            </span>
                                                </div>
                                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                                    <div class="me-2">
                                                        <h6 class="mb-0">${position.position}</h6>
                                                            <%--                                                    <small class="text-muted">Mobile, Earbuds, TV</small>--%>
                                                    </div>
                                                    <div class="user-progress">
                                                        <small class="fw-semibold">${position.studycount}건</small>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--/ 포지션별 스터디 -->

                        <%-- 스터디수, 회원수그래프--%>
                        <div class="col-md-6 col-lg-4 order-1 mb-4">
                            <div class="card h-100">
                                <div class="card-header">
                                    <ul class="nav nav-pills" role="tablist">
                                        <li class="nav-item">
                                            <button type="button"
                                                    class="nav-link active"
                                                    role="tab"
                                                    data-bs-toggle="tab"
                                                    data-bs-target="#navs-tabs-line-card-income"
                                                    aria-controls="navs-tabs-line-card-income"
                                                    aria-selected="true">
                                                스터디 수
                                            </button>
                                        </li>
                                        <li class="nav-item">
                                            <button type="button"
                                                    class="nav-link"
                                                    role="tab"
                                                    data-bs-toggle="tab"
                                                    data-bs-target="#navs-tabs-line-card-member"
                                                    aria-controls="navs-tabs-line-card-member"
                                                    aria-selected="false">
                                                회원수
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body px-0">
                                    <div class="tab-content p-0">
                                        <div class="tab-pane fade show active" id="navs-tabs-line-card-income"
                                             role="tabpanel">
                                            <div class="d-flex p-4 pt-3 mb-5 mt-3">
                                                <div class="avatar flex-shrink-0 me-3">
                                                     <span class="avatar-initial rounded bg-label-primary">
                                                    <i class="bi bi-journals"></i>
                                                     </span>
                                                </div>
                                                <div>
                                                    <small class="text-muted d-block">Now, Total Study</small>
                                                    <div class="d-flex align-items-center">
                                                        <h6 class="mb-0 me-1">${totalcount} 건</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="studycountchart"></div>
                                            <script>
                                                var regDates = JSON.parse('${regDate}');
                                                var counts = JSON.parse('${count}');
                                                console.log(regDates);
                                                console.log(counts);
                                            </script>
                                        </div>
                                        <div class="tab-pane fade" id="navs-tabs-line-card-member" role="tabpanel">
                                            <div class="d-flex p-4 pt-3 mb-5 mt-3">
                                                <div class="avatar flex-shrink-0 me-3">
                                                     <span class="avatar-initial rounded bg-label-primary">
                                                     <i class="bi bi-people"></i>
                                                     </span>
                                                </div>

                                                <div>
                                                    <small class="text-muted d-block">Now, Total Member</small>
                                                    <div class="d-flex align-items-center">
                                                        <h6 class="mb-0 me-1">${totalusercount} 명</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="usercountchart"></div>
                                            <script>
                                                var userregDates = JSON.parse('${userregDate}');
                                                var usercounts = JSON.parse('${usercount}');
                                                console.log(userregDates);
                                                console.log(usercounts);
                                            </script>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/ 회원수 스터디수 그래프 -->
                        <!-- 조회수 높은 스터디 -->
                        <div class="col-md-6 col-lg-4 order-2 mb-4">
                            <div class="card h-100">
                                <div class="card-header d-flex align-items-center justify-content-between">
                                    <h5 class="card-title m-0 me-2">조회수 높은 스터디</h5>
                                    <div class="dropdown">
                                        <button
                                                class="btn p-0"
                                                type="button"
                                                id="transactionID"
                                                data-bs-toggle="dropdown"
                                                aria-haspopup="true"
                                                aria-expanded="false"
                                        >
                                            <i class="bx bx-dots-vertical-rounded"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="transactionID">
                                            <a class="dropdown-item" href="javascript:void(0);">Last 28 Days</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Last Month</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Last Year</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <ul class="p-0 m-0">
                                        <c:forEach items="${studyDto}" var="studyDto">
                                            <li class="d-flex mt-3 mb-3">
                                                <div class="avatar flex-shrink-0 me-3">
                                            <span class="avatar-initial rounded bg-label-primary">
                                       <c:if test="${studyDto.position == 'backend'}">
                                           <i class="bi bi-gear"></i>
                                       </c:if>
                                            <c:if test="${studyDto.position == 'frontend'}">
                                                <i class="bi bi-binoculars"></i>
                                            </c:if>
                                            <c:if test="${studyDto.position == 'mobile'}">
                                                <i class="bi bi-tablet"></i>
                                            </c:if>
                                            <c:if test="${studyDto.position == 'etc'}">
                                                <i class="bi bi-three-dots"></i>
                                            </c:if>

                                            </span>
                                                </div>

                                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                                    <div class="me-2">
                                                        <small class="text-muted d-block mb-1">${studyDto.skillstack}</small>
                                                        <h6 class="mb-0">${studyDto.studyname}</h6>
                                                    </div>
                                                    <div class="user-progress d-flex align-items-center gap-1">
                                                        <h6 class="mb-0">${studyDto.viewcnt}</h6>
                                                        <span class="text-muted">건</span>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--/ 조회수 높은 스터디 -->
                    </div>
                </div>
                <%--          카드 4개 보여주기--%>
                <div class="col-lg-12 order-1">
                    <div class="row justify-content-center text-center">

                        <c:forEach items="${studyapplyDto}" var="studyapplyDto">
                            <div class="col-lg-3 col-md-6 mb-4">
                                <div class="card">
                                    <div class="card-body">
                                        <span class="fw-semibold d-block mb-1">${studyapplyDto.skillstack} / ${studyapplyDto.position}</span>
                                        <h3 class="card-title mb-2"
                                            style="font-size: 17px">${studyapplyDto.studyname}</h3>
                                        <small class="text-center text-dark fw-semibold">${studyapplyDto.regDate}
                                            신청</small><br>
                                        <small class="text-center  text-dark fw-semibold">${studyapplyDto.studystart}
                                            시작</small> <br>

                                        <input type="hidden" value="${studyapplyDto.id}" id="id">
                                        <c:if test="${studyapplyDto.state == 'apply'}">
                                            <button type="button" class="btn btn-primary btn-permit mt-3"
                                                    data-study-id="${studyapplyDto.id}">승인
                                            </button>
                                            <button type="button" data-study-id="${studyapplyDto.id}"
                                                    class="btn btn-dark btn-decline  mt-3">거절
                                            </button>
                                        </c:if>
                                        <c:if test="${studyapplyDto.state == 'permit'}">
                                            <button type="button" class="btn btn-danger btn-restore  mt-3"
                                                    data-study-id="${studyapplyDto.id}">승인취소
                                            </button>
                                        </c:if>
                                        <c:if test="${studyapplyDto.state == 'decline'}">
                                            <button type="button" class="btn btn-info btn-restore  mt-3"
                                                    data-study-id="${studyapplyDto.id}">거절취소
                                            </button>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                        <script>
                            $(document).ready(function () {
                                $(".btn-permit, .btn-decline, .btn-restore").click(function () {
                                    if (confirm("상태를 변경하시겠습니까?")) {
                                        var studyId = $(this).data("study-id");
                                        var studyState = "";
                                        if ($(this).hasClass("btn-permit")) {
                                            studyState = "permit";
                                        } else if ($(this).hasClass("btn-decline")) {
                                            studyState = "decline";
                                        } else if ($(this).hasClass("btn-restore")) {
                                            studyState = "apply";
                                        }
                                        $.ajax({
                                            url: "/admin/applystudy/updatestate",
                                            type: "POST",
                                            data: {id: studyId, state: studyState},
                                            success: function (response) {
                                                if (response == "success") {
                                                    location.reload(); // 페이지 리로드
                                                }
                                            },
                                            error: function (xhr) {
                                                console.log(xhr.responseText);
                                            }
                                        });
                                    }
                                });
                            });
                        </script>

                    </div>
                </div>
                <%--          /카드 4개 보여주기--%>
            </div>
            <!-- / Content -->

            <%@include file="../include/admin_footer.jsp" %>

            <div class="content-backdrop fade"></div>
        </div>
        <!-- Content wrapper -->
    </div>
    <!-- / Layout page -->
</div>

<!-- Overlay -->
<div class="layout-overlay layout-menu-toggle"></div>
</div>
<!-- / Layout wrapper -->

<div class="buy-now">
    <a
            href="#"
            target="_blank"
            class="btn btn-danger btn-buy-now"
    >Go UP!</a>
</div>
<%@include file="../include/admin_js.jsp" %>

</body>
</html>