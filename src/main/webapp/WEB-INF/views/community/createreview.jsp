<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>
<head>
    <%@include file="../include/head.jsp" %>

    <style>
        .bhover:hover {
            /*background-color: #5bc1ac;*/
            transition: all 0.2s ease-out;
            box-shadow: 0px 4px 8px rgba(38, 38, 38, 0.2);
            top: -4px;
            border: 1px solid #cccccc;
            background-color: white;
            cursor:pointer;
        }
    </style>

</head>
<body>
<%@ include file="../include/header.jsp" %>

<section class="gradient-custom">
    <div style="height: 80px;"></div>
    <div class="container">
        <div class="row d-flex justify-content-center align-items-center ">
            <div class="col-md-8">
<%--                <div class="card bg-dark text-white " style="border-radius: 1rem;">--%>
<%--                    <div class="card-body ps-5 pe-5 text-center vh-70">--%>

                        <div class="mb-md-5 mt-md-4 pb-5 ">

                          <form class="custom-form contact-form" action="/community/createreview" method="post" role="form">
                              <c:if test="${state == '등록'}">
                                  <h2>Create Review!</h2>
                              </c:if>
                              <c:if test="${state == '수정'}">
                                  <h2>Update Your Review!</h2>
                              </c:if>
                            <p class="mb-4">Leave your valuable review here.</p>
                            <div class="row">
                            <div class="col-12">
                              <input type="text" name="subject" id="subject" class="form-control"
                                     placeholder="제목" value="${boardDto.subject}" required>
                            </div>
                                <div class="col-12">
                                    <select name="studyid" class="form-control"
                                           placeholder="스터디 선택하기" required>
                                        <c:forEach items="${mergedMap}" var="map">
                                            <c:choose>
                                                <c:when test="${map.value.studyid == boardDto.studyid}">
                                                    <option value="${map.value.studyid}" selected>${map.key}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${map.value.studyid}">${map.key}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>

                                </div>
                              <div class="col-12">
                                <textarea type="text" name="content" id="content" rows="10" class="form-control"
                                          placeholder="질문 내용" required>${boardDto.content}</textarea>
                              </div>
                                <input type="hidden" name="createdBy" id="createdBy" value="${User.userid}">
                                <input type="hidden" name="modifiedBy" id="modifiedBy" value="${User.userid}">
                            </input>
<%--                            <button type="submit" class="form-control">reset</button>--%>
<%--                                <input type="hidden" value='QNA' name="type">--%>
<%--                                <input type="hidden" name="studyid">--%>
                                <c:if test="${state == '등록'}">
                                <button type="submit" formaction="/community/createreview/${boardDto.id}" class="form-control">create
                                </button>
                                </c:if>
                                <c:if test="${state == '수정'}">
                                <button type="submit" formaction="/community/updatereview/${boardDto.id}" class="form-control">update
                                </button>
                                </c:if>
                          </form>


                        </div>

                    </div>

                </div>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

</section>


<%@include file="../include/footer.jsp" %>
<%@include file="../include/js.jsp" %>
>


</body>
</html>
