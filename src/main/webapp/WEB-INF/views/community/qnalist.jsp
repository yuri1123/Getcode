<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
   <%@include file="../include/head.jsp"%>
    <style>
        .hoverhand {
            cursor:pointer;
        }
    </style>
</head>
<body>
<%@ include file="../include/header.jsp"%>

<section class="cta-section section-padding section-bg">
    <div class="container">
        <div class="row justify-content-center align-items-center">

            <div class="col-lg-5 col-12 ms-auto">
                <h2 class="mb-0">Q&A Board</h2>
            </div>
            <div class="col-lg-5 col-12">
                <a href="${contextPath}/community/createquestion" class="custom-btn btn smoothscroll">Do you have any question?</a>
            </div>

        </div>
    </div>
</section>


<section class="section-padding" >
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12 text-center mb-4">
                <h2>Q&A LIST</h2>
            </div>

                <div class="mb-md-5 mt-md-4 pb-5 justify-content-center text-center">
                    <form class="custom-form contact-form justify-content-center text-center" action="#" method="post" role="form">

                        <form action="${contextPath}/user/login" role="form" method="post">

                            <table class="table table-hover">
                                <thead class="text-center">
                                <tr>
                                    <th>no</th>
                                    <th>subject</th>
                                    <th>writer</th>
                                    <th>date</th>
                                    <th>view</th>
                                </tr>
                                </thead>
                                <tbody class="text-center">
                                <c:forEach items="${questionDtoList}" var="list">
                                    <tr class="hoverhand" onclick="window.location='${contextPath}/community/qnadetail/${list.id}';">
                                    <td>${list.id}</td>
                                    <td>${list.subject}</td>
                                    <td>${list.createdBy}</td>
                                    <td>${list.regDate}</td>
                                    <td>${list.viewcnt}</td>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>



                        </form>

                    </form>
                </div>

            </div>
        </div>
</section>


<%@include file="../include/footer.jsp"%>
<%@include file="../include/js.jsp"%>


</body>
</html>
