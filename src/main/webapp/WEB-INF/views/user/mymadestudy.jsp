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
                    <a class="navbar-nav nav-link " href="${contextPath}/user/mypage/${userDto.id}">My Study</a>
                    <a class="navbar-nav nav-link active" href="${contextPath}/user/mymadestudy/${userDto.userid}">My Made
                        Study</a>
                    <a class="navbar-nav nav-link" href="${contextPath}/user/myboard/${userDto.id}">My Board`</a>
                    <a class="navbar-nav nav-link" href="${contextPath}/user/myinfo/${userDto.id}">My Info</a>
                </div>
            </div>
            <div class="col-10">
                <%--                <div class="tab-content" id="v-pills-tabContent">--%>
                <%--                    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel"--%>
                <%--                         aria-labelledby="v-pills-home-tab">--%>

                <div class="col-lg-12 col-12 text-center mb-4">
                    <h2>You made these</h2>
                </div>
                <div class="col-lg-12 col-12 text-center mb-4">

                    <div class="card text-center">
                        <table class="table table-hover justify-content-center text-center">
                            <thead>
                            <tr>
                                <th>스터디명</th>
                                <th>포지션</th>
                                <th>기술스택</th>
                                <th>등록일</th>
                                <th>시작일</th>
                                <th>신청상태</th>
                                <th>설정<th>
                            </tr>
                            </thead>
                            <tbody class="table-border-bottom-0">
                            <c:forEach items="${studyDtos}" var="studyDto">
                                <tr>
                                    <td>${studyDto.studyname}</td>
                                    <td>${studyDto.position}</td>
                                    <td>${studyDto.skillstack}</td>
                                    <td><span class="badge bg-label-primary me-1">${studyDto.regDate}</span></td>
                                    <td><span class="badge bg-label-info me-1">${studyDto.studystart}</span></td>
                                    <td>
                                        <c:if test="${studyDto.state == 'apply'}"><span class="badge bg-label-secondary me-1">${studyDto.state}</span></c:if>
                                        <c:if test="${studyDto.state == 'permit'}"><span class="badge bg-label-warning me-1">${studyDto.state}</span></c:if>
                                        <c:if test="${studyDto.state == 'decline'}"><span class="badge bg-label-danger me-1">${studyDto.state}</span></c:if>
                                    </td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown" aria-expanded="false"><i class="bx bx-dots-vertical-rounded"></i></button>
                                            <div class="dropdown-menu" style="">
                                                <a class="dropdown-item" href="/study/studyupdate/${studyDto.id}"><i class="bx bx-edit-alt me-1"></i> Edit</a>
                                                <a class="dropdown-item" href="/study/delete/${studyDto.id}"><i class="bx bx-trash me-1"></i>Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
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
