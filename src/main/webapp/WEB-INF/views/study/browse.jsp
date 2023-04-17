<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
    <%@include file="../include/head.jsp"%>

    <style>
        .two-columns {
            display: flex;
            flex-wrap: wrap;
        }

        .column {
            flex-basis: 50%;
            box-sizing: border-box;
            padding: 0 10px;
        }
    </style>

</head>
<body>
<%@ include file="../include/header.jsp"%>

<section class="cta-section section-padding section-bg">
    <div class="container">
        <div class="row">

            <div class="col-lg-5 col-12 ms-auto">
                <h2 class="mb-0">Make your Study</h2>
            </div>

            <div class="col-lg-5 col-12">
<%--                <a href="#section_4" class="custom-btn btn smoothscroll">button2</a>--%>
                <a href="${contextPath}/study/create" class="custom-btn btn smoothscroll">make study</a>
            </div>

        </div>
    </div>
</section>


<section class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-12 text-center mb-4">
                <h2>Search Study</h2>
            </div>
            <div class="col-lg-8 col-12 mb-4">
                <div class="two-columns">
                    <c:forEach items="${studyDto}" var="list">
                        <div class="column">
                            <div class="card mt-3 mb-3" style="border-color: lightgrey"; border:1px;>
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
                                        <h5 class="mb-3" style="font-size: 19px; font-weight: bold" > ${list.studyname}</h5>

                                        <div class="d-flex mt-2">
                                            <div class="news-block-date">
                                                <p style="font-size: 13px;">
                                                    <i class="bi-calendar4 custom-icon me-1"></i>
                                                        ${list.recruitend}
                                                </p>
                                            </div>

                                            <div class="news-block-author mx-5">
                                                <p style="font-size: 13px;">
                                                    <i class="bi-person custom-icon me-1"></i>
                                                        ${list.personnel}
                                                </p>
                                            </div>

                                            <div class="news-block-comment">
                                                <p style="font-size: 13px;">
                                                    <i class="bi-chat-left custom-icon me-1"></i>
                                                        ${list.viewcnt} view
                                                </p>
                                            </div>
                                        </div>
                                            <div class="mt-2 mb-2">
                                                <p style="font-size: 16px;">
                                                     스터디 시작일  ${list.studystart} <br>
                                                     스터디 예상 기간 ${list.period} <br>
                                                     진행방법 ${list.onoff} <br>
                                            </div>
<%--                                        <p class="mb-2">${list.content}</p>--%>

                                        <div class="progress mt-4">
                                            <div class="progress-bar w-100" role="progressbar" aria-valuenow="10"
                                                 aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>

                                        <div class="d-flex align-items-center my-2">
                                            <p class="mb-0">
                                                <strong>now  </strong>
                                                3 people
                                            </p>

                                            <p class="ms-auto mb-0">
                                                <strong></strong>
                                                    / ${list.personnel} people
                                            </p>
                                        </div>
                                    </div>

                                    <a href="/study/studydetail/${list.id}" class="custom-btn btn m-1">Study Detail</a>
<%--                                    onclick="return confirm('스터디에 참여하시겠습니까?');--%>
                                </div>
                            </div>

                    </div>
                    </c:forEach>
                </div>
            </div>
                <div class="col-lg-4 col-12 mb-4">
                    <form class="custom-form subscribe-form" action="#" method="post" role="form">
                        <h5 class="mb-4">search study</h5>

                        <input type="text" name="subscribe-email" id="subscribe-email" pattern="[^ @]*@[^ @]*"
                               class="form-control" placeholder="keywords" required>

                        <div class="col-lg-12 col-12">
                            <button type="submit" class="form-control">search</button>
                        </div>
                    </form>

                    <div class="category-block d-flex flex-column">
                        <h5 class="mb-3">Categories</h5>
<%--                        positionList 그룹별 조회한 값 전체 출력--%>
                <c:forEach items="${positionList}" var="positionList">
                        <a href="#" class="category-block-link">
                            ${positionList.position}
                            <span class="badge">${positionList.count}</span>
                        </a>
                </c:forEach>
                    </div>

                    <div class="tags-block">
                        <h5 class="mb-3">Tags</h5>
                <c:forEach items="${skillstackList}" var="skillstackList">
                        <a href="#" class="tags-block-link">
                            ${skillstackList.skillstack}
                        </a>
                </c:forEach>
                    </div>


                </div>

            </div>
        </div>
</section>


<%@include file="../include/footer.jsp"%>
<%@include file="../include/js.jsp"%>>


</body>
</html>
