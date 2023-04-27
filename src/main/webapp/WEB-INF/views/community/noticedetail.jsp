<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
    <%@include file="../include/head.jsp"%>
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
<%@ include file="../include/header.jsp"%>

<section class="cta-section section-padding section-bg">
    <div class="container">
        <div class="row justify-content-center align-items-center">

            <div class="col-lg-5 col-12 ms-auto">
                <h2 class="mb-0">Notice Detail</h2>
            </div>

            <div class="col-lg-5 col-12">
            </div>

        </div>
    </div>
</section>


<section class="section-padding" >
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-12">
                <div class="news-block">

                    <div class="news-block-info">

                        <div class="news-block-title justify-content-center text-center">
                            <h4>${notice.subject}</h4>
                        </div>
                        <div class="d-flex col-12 mt-2 mb-1 justify-content-center">
                            <div class="news-block-date">
                                <p>
                                    <i class="bi-chat-left custom-icon me-1"></i>
                                    ${notice.regDate}
                                </p>
                            </div>

                            <div class="news-block-author mx-5">
                                <p>
                                    <i class="bi-chat-left custom-icon me-1"></i>
                                    ${notice.createdBy}
                                </p>
                            </div>

                            <div class="news-block-comment">
                                <p>
                                    <i class="bi-chat-left custom-icon me-1"></i>
                                    ${notice.viewcnt} view
                                </p>
                            </div>
                        </div>
                    </div>
                        <div class="social-share border-top py-2 d-flex flex-wrap align-items-center">
                        </div>

                        <div class="news-block-body">

                            <blockquote>${notice.content}</blockquote>
                        </div>

                    <div class="social-share border-top mt-5 py-4 d-flex justify-content-end flex-wrap align-items-center">
                        <hr class="mb-3">
                            <div class="col-3  offset-8 justify-content-right text-right">
                                <button type="button" class="form-control btn-primary bhover"><a href="/community/noticelist">목록가기</a></button>
                            </div>

                    </div>
                        <c:forEach items="${boardReplyDtos}" var="list">
                        <div class="author-comment d-flex mt-3 mb-4">
                            <img src="/resources/yuri/squirrel.png"
                                 class="img-fluid avatar-image" alt="">

                            <div class="author-comment-info ms-3">
                                <h6 class="mb-1">${list.createdBy}</h6>

                                <p class="mb-0">${list.content}</p>

                            </div>
                        </div>
                        </c:forEach>
                        <form class="custom-form comment-form mt-4" action="/community/createreply/${notice.id}" method="post" role="form">
                            <h6 class="mb-3">Write a comment</h6>

                            <textarea name="content" rows="4" class="form-control" id="comment-message"
                                      placeholder="Your comment here"></textarea>
                            <input type="hidden" value="${User.userid}" name="createdBy">
                            <input type="hidden" value="${User.userid}" name="modifiedBy">
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
<%@include file="../include/js.jsp"%>


</body>
</html>
