<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<html>
<head>
    <%@include file="../include/head.jsp" %>

    <style>

        .go-corner {
            display: flex;
            align-items: center;
            justify-content: center;
            position: absolute;
            width: 32px;
            height: 32px;
            overflow: hidden;
            top: 0;
            right: 0;
            background-color: rgba(77, 211, 168, 0.7);
            border-radius: 0 4px 0 32px;
        }

        .go-arrow {
            margin-top: -4px;
            margin-right: -4px;
            color: white;
            font-family: courier, sans;
        }

        .card2 {
            display: block;
            top: 0px;
            position: relative;
            max-width: 560px;
            background-color: #f2f8f9;
            border-radius: 4px;
            padding: 32px 24px;
            margin: 12px;
            text-decoration: none;
            z-index: 0;
            overflow: hidden;
            border: 1px solid #f2f8f9;

        &:hover {
             transition: all 0.2s ease-out;
             box-shadow: 0px 4px 8px rgba(38, 38, 38, 0.2);
             top: -4px;
             border: 1px solid #cccccc;
             background-color: white;
         }

        &:before {
             content: "";
             position: absolute;
             z-index: -1;
             top: -16px;
             right: -16px;
             background: rgba(255, 255, 255, 0.7);
             height: 32px;
             width: 32px;
             border-radius: 32px;
             transform: scale(2);
             transform-origin: 50% 50%;
             transition: transform 0.15s ease-out;
         }

        &:hover:before {
             transform: scale(2.15);
         }
        }

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
                <div class="col-7 mb-4 justify-content-center offset-1">
                    <div class="two-columns">
                        <c:forEach items="${studyDto}" var="list">
                            <%--                        <a class="cardhov" href="/study/studydetail/${list.id}">--%>
                            <div class="column">
                                <div class="card2 mt-1 mb-4"
                                     onclick="window.location.href='/study/studydetail/${list.id}'"
                                     style="border:1px solid lightgrey;border-radius: 15px;">
                                    <div class="go-corner">
                                        <div class="go-arrow">
                                            →
                                        </div>
                                    </div>
                                    <div class="custom-block">
                                        <div class="custom-block-body">
                                            <div class="mb-1">
                                                <a href="#" class="category-block-link badge">
                                                        ${list.skillstack}
                                                </a>

                                                <a href="#" class="category-block-link badge">
                                                        ${list.position}
                                                </a>
                                            </div>
                                            <h5 class="mb-3"
                                                style="font-size: 19px; font-weight: bold"> ${list.studyname}</h5>

                                            <div class="d-flex mt-1">
                                                <div class="news-block-date">
                                                    <p style="font-size: 13px;">
                                                        <i class="bi-calendar4 custom-icon me-1"></i>
                                                            ${list.recruitend}
                                                    </p>
                                                </div>

                                                <div class="news-block-author mx-3">
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
                                            <hr>
                                            <div class="mt-1 mb-1">
                                                <p style="font-size: 14px;">
                                                    스터디 시작일 ${list.studystart} <br>
                                                    스터디 예상 기간 ${list.period} <br>
                                                    진행방법 ${list.onoff} <br>
                                            </div>
                                                <%--                                        <p class="mb-2">${list.content}</p>--%>
                                            <hr>
                                            <div class="progress mt-1">
                                                <div class="progress-bar w-50" role="progressbar" aria-valuenow="50"
                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>

                                            <div class="d-flex align-items-center my-2">
                                                <p class="mb-0">
                                                    <strong>now </strong>
                                                    3 people
                                                </p>

                                                <p class="ms-auto mb-0">
                                                    <strong></strong>
                                                    / ${list.personnel} people
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--                        </a>--%>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-4 mb-4">
                    <form class="custom-form subscribe-form" action="#" method="post" role="form">
                        <%--                        <h5 class="mb-4">search study</h5>--%>

                        <input type="text" name="subscribe-email" id="subscribe-email" pattern="[^ @]*@[^ @]*"
                               class="form-control" required>

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


    <%@include file="../include/footer.jsp" %>
    <%@include file="../include/js.jsp" %>


</body>
</html>
