<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
    <%@include file="../include/head.jsp"%>>
</head>
<body>
<%@ include file="../include/header.jsp"%>

<section class="cta-section section-padding section-bg">
    <div class="container">
        <div class="row justify-content-center align-items-center">

            <div class="col-lg-5 col-12 ms-auto">
                <h2 class="mb-0">Study Detail</h2>
            </div>

            <div class="col-lg-5 col-12">
                <%--                <a href="#section_4" class="custom-btn btn smoothscroll">button2</a>--%>
<%--                <a href="${contextPath}/study/create" class="custom-btn btn smoothscroll">make study</a>--%>
            </div>

        </div>
    </div>
</section>


<section class="section-padding" >
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-12">
                <div class="news-block">

                    <div class="news-block-info">

                        <div class="news-block-title">
                            <h4>${studyDto.studyname}</h4>
                        </div>
                        <div class="d-flex col-8 mt-2 mb-1">
                            <div class="news-block-date">
                                <p>
                                    <i class="bi-calendar4 custom-icon me-1"></i>
                                    ${studyDto.recruitend}
                                </p>
                            </div>

                            <div class="news-block-author mx-5">
                                <p>
                                    <i class="bi-person custom-icon me-1"></i>
                                    ${studyDto.personnel}
                                </p>
                            </div>

                            <div class="news-block-comment">
                                <p>
                                    <i class="bi-chat-left custom-icon me-1"></i>
                                    ${studyDto.viewcnt} view
                                </p>
                            </div>
                        </div>
<%--                        <div class="mb-3">--%>
                        <div class="social-share border-top py-2 d-flex flex-wrap align-items-center">
                            <hr class="mb-3">
                            <form role="form" method="post" action="/study/studyitems/${User.id}">
                                <div>
                                    <input type="hidden" value="${User.id}" name="userid">
                                    <input type="hidden" value="${User.userid}" name="createdBy">
                                    <input type="hidden" value="${User.userid}" name="modifiedBy">
                                    <input type="hidden" value="${studyDto.id}" name="studyid">
                                </div>
                            <div class="col-2 offset-7 me-1 justify-content-right text-right">
                                <button type="submit" class="form-control btn-primary" onclick="if(confirm('이 스터디에 참여하시겠습니까?'));"><a href="/study/browse">참여하기</a></button>
                            </div>
                            </form>
                            <div class="col-2 justify-content-right text-right">
                                <button type="button" class="form-control btn-primary"><a href="/study/browse">목록가기</a></button>
                            </div>
                        </div>

                        <div class="news-block-body">
                            <p><strong>스터디 시작일</strong>
                                ${studyDto.studystart}</p>
                            <p><strong>스터디 기간</strong>
                                ${studyDto.period}</p>
                            <p><strong>기술스택</strong>
                                ${studyDto.skillstack}</p>
                            <p><strong>모집 포지션</strong>
                                ${studyDto.position}</p>
                            <p><strong>연락방법</strong>
                                ${studyDto.connection}</p>
                            <p><strong>진행방법</strong>
                                ${studyDto.onoff}</p>
                            <blockquote>${studyDto.content}</blockquote>
                        </div>

                        <div class="social-share border-top mt-5 py-4 d-flex flex-wrap align-items-center">
                            <div class="tags-block me-auto">
                                <a href="#" class="tags-block-link">
                                    ${studyDto.skillstack}
                                </a>

                                <a href="#" class="tags-block-link">
                                    ${studyDto.position}
                                </a>

                            </div>

<%--                            <div class="d-flex">--%>
<%--                                <a href="#" class="social-icon-link bi-facebook"></a>--%>

<%--                                <a href="#" class="social-icon-link bi-twitter"></a>--%>

<%--                                <a href="#" class="social-icon-link bi-printer"></a>--%>

<%--                                <a href="#" class="social-icon-link bi-envelope"></a>--%>
<%--                            </div>--%>
                        </div>

                        <div class="author-comment d-flex mt-3 mb-4">
                            <img src="/resources/yuri/yuripic.png"
                                 class="img-fluid avatar-image" alt="">

                            <div class="author-comment-info ms-3">
                                <h6 class="mb-1">율류리</h6>

                                <p class="mb-0">참여하고 싶은데 좀 늦참해도 되나요?</p>

                                <div class="d-flex mt-2">
                                    <a href="#" class="author-comment-link me-3">Like</a>
                                    <a href="#" class="author-comment-link">Reply</a>
                                </div>
                            </div>
                        </div>

                        <div class="author-comment d-flex ms-5 ps-3">
                            <img src="/resources/assets/images/avatar/pretty-blonde-woman-wearing-white-t-shirt.jpg"
                                 class="img-fluid avatar-image" alt="">

                            <div class="author-comment-info ms-3">
                                <h6 class="mb-1">admin</h6>

                                <p class="mb-0">넹 가능합니다. 언제부터 참여가 가능하세요?</p>

                                <div class="d-flex mt-2">
                                    <a href="#" class="author-comment-link me-3">Like</a>

                                    <a href="#" class="author-comment-link">Reply</a>
                                </div>
                            </div>
                        </div>

                        <div class="author-comment d-flex mt-3 mb-4">
                            <img src="/resources/assets/images/avatar/portrait-young-redhead-bearded-male.jpg"
                                 class="img-fluid avatar-image" alt="">

                            <div class="author-comment-info ms-3">
                                <h6 class="mb-1">윌슨</h6>

                                <p class="mb-0">ㅎㅎ 너무 좋아보이는 스터디네요🎈😍😊</p>

                                <div class="d-flex mt-2">
                                    <a href="#" class="author-comment-link me-3">Like</a>

                                    <a href="#" class="author-comment-link">Reply</a>
                                </div>
                            </div>
                        </div>

                        <form class="custom-form comment-form mt-4" action="#" method="post" role="form">
                            <h6 class="mb-3">Write a comment</h6>

                            <textarea name="comment-message" rows="4" class="form-control" id="comment-message"
                                      placeholder="Your comment here"></textarea>

                            <div class="col-lg-3 col-md-4 col-6 ms-auto">
                                <button type="submit" class="form-control">Comment</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>



        </div>
    </div>
</section>


<%@include file="../include/footer.jsp"%>
<%@include file="../include/js.jsp"%>>


</body>
</html>
