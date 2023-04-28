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
                    <a class="mysidebar " href="${contextPath}/user/mypage/${userDto.id}">My Study<br></a>
                    <a class="mysidebar " href="${contextPath}/user/mymadestudy/${userDto.userid}">My Made Study<br></a>
                    <a class="mysidebar active" href="${contextPath}/user/myboard/${userDto.userid}">My Board<br></a>
                    <a class="mysidebar " href="${contextPath}/user/myinfo/${userDto.id}">My Info<br></a>
                </div>
            </div>
            <div class="col-10">

                <div class="col-lg-12 col-12 text-center mb-4">
                    <h2>My Board List</h2>
                </div>
                <div class="col-lg-12 col-12 text-center mb-4">

                    <div class="card text-center">
                        <table class="table table-hover justify-content-center text-center">
                            <thead>
                            <tr>
                                <th>글번호</th>
                                <th>게시판유형</th>
                                <th>제목</th>
                                <th>등록일</th>
                                <th>설정
                                <th>
                            </tr>
                            </thead>
                            <tbody class="table-border-bottom-0">
                            <c:forEach items="${boardDtos}" var="boardDto">
                                <tr>
                                    <td>${boardDto.id}</td>
                                    <c:if test="${boardDto.type == 'NOTICE'}">
                                        <td>공지사항</td>
                                    </c:if>
                                    <c:if test="${boardDto.type == 'REVIEW'}">
                                        <td>리뷰게시판</td>
                                    </c:if>
                                    <c:if test="${boardDto.type == 'QNA'}">
                                        <td>Q&A게시판</td>
                                    </c:if>

                                    <c:if test="${boardDto.type == 'NOTICE'}">
                                        <td><a href="/community/noticedetail/${boardDto.id}">${boardDto.subject}</a>
                                        </td>
                                    </c:if>
                                    <c:if test="${boardDto.type == 'REVIEW'}">
                                        <td><a href="/community/reviewdetail/${boardDto.id}">${boardDto.subject}</a>
                                        </td>
                                    </c:if>
                                    <c:if test="${boardDto.type == 'QNA'}">
                                        <td><a href="/community/qnadetail/${boardDto.id}">${boardDto.subject}</a></td>
                                    </c:if>
                                    <td><span class="badge bg-label-primary me-1">${boardDto.regDate}</span></td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow"
                                                    data-bs-toggle="dropdown" aria-expanded="false"><i
                                                    class="bx bx-dots-vertical-rounded"></i></button>
                                            <div class="dropdown-menu" style="">

                                                <c:if test="${boardDto.type == 'NOTICE'}">
                                                </c:if>
                                                <c:if test="${boardDto.type == 'REVIEW'}">
                                                    <a class="dropdown-item" href="/community/updatereview/${boardDto.id}"><i
                                                            class="bx bx-edit-alt me-1"></i> Edit</a>
                                                </c:if>
                                                <c:if test="${boardDto.type == 'QNA'}">
                                                    <a class="dropdown-item"
                                                       href="/community/updatequestion/${boardDto.id}"><i
                                                            class="bx bx-edit-alt me-1"></i> Edit</a>
                                                </c:if>
                                                <a class="dropdown-item" href="/study/deletestudy/${boardDto.id}">
                                                    <i class="bx bx-trash me-1"></i>Delete</a>
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
