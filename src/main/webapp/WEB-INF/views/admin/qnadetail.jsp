<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="/resources/assets/summernote/summernote-lite.js"></script>
<script src="/resources/assets/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/assets/summernote/summernote-lite.css">

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

        <!--content-->
        <div class="col-lg-12 col-12 text-center mb-5 mt-4 ms-3">
            <h2 style="font-size: 43px;">Q&A Detail</h2>

        </div>
        <div class="col-lg-10 offset-1 col-12 justify-content-center text-center mb-5 mt-4">
            <div class="card ps-5 text-center justify-content-center align-content-center">

                <%--                <form class="custom-form contact-form justify-content-center" action="" method="post" role="form">--%>

                <div class="row">
                    <div class="col-11 m-3 mt-3">
                        <div class="news-block">

                            <div class="news-block-info">

                                <div class="news-block-title justify-content-center text-center">
                                    <h4>${qna.subject}</h4>
                                </div>
                                <div class="d-flex col-12 mt-2 mb-1 justify-content-center">
                                    <div class="news-block-date">
                                        <p>
                                            <i class='bx bx-edit-alt'></i>
                                            ${qna.regDate}
                                        </p>
                                    </div>

                                    <div class="news-block-author mx-5">
                                        <p>

                                            <i class='bx bxs-face'></i>
                                            ${qna.createdBy}
                                        </p>
                                    </div>

                                    <div class="news-block-comment">
                                        <p>
                                            <i class='bx bx-show'></i>
                                            ${qna.viewcnt} view
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="social-share border-top py-2 d-flex flex-wrap align-items-center justify-content-center">

                            </div>

                            <div class="news-block-body">

                                <blockquote>${qna.content}</blockquote>
                            </div>

                            <div class="social-share border-top mt-5 py-4 d-flex justify-content-end flex-wrap align-items-center">
                                <%--                        <div class="tags-block me-auto">--%>
                                <hr class="mb-3">
                                <div class="col-3  offset-8 justify-content-right text-right">
                                    <button type="button" class="form-control btn-primary bhover"><a
                                            href="${contextPath}/admin/qnalist"><p
                                            style="color:white;margin-bottom:0px;">목록가기</p></a></button>
                                </div>

                            </div>

                            <c:forEach items="${boardReplyDtos}" var="list">
                                <div class="text-start d-flex mt-3 mb-4 align-middle">
                                    <h6 class="mb-1 badge alert-primary ">${list.createdBy}</h6>
                                    <p class="mb-0 ms-3">${list.content}</p>
                                    <small class="mb-0 ms-3">${list.regDate}</small>
                                </div>
                            </c:forEach>
                            <form class="custom-form comment-form mt-4" action="/admin/createreply/${qna.id}"
                                  method="POST" role="form">
                                <h6 class="mb-3 text-start">Write a comment</h6>

                                <textarea name="content" rows="4" class="form-control" id="comment-message"
                                          placeholder="Your comment here"></textarea>
                                <input type="hidden" value="${User.userid}" name="createdBy">
                                <input type="hidden" value="${User.userid}" name="modifiedBy">
                                <div class="col-lg-3 col-md-4 col-6 ms-auto mt-3">
                                    <button type="submit" class="form-control btn-primary">
                                        <p style="color:white;margin-bottom:0px;">Comment</p></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <%--                </form>--%>
            </div>
        </div>
        <%--    content end--%>

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


</body>
</html>
