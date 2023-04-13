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
                <h2 class="mb-0">Q&A Detail</h2>
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
        <div class="row">
            <div class="col-lg-12 col-12">
                <div class="news-block">
                    <div class="news-block-top">
                        <img src="/resources/assets/images/news/medium-shot-volunteers-with-clothing-donations.jpg"
                             class="news-image img-fluid" alt="">

                        <div class="news-category-block">
                            <a href="#" class="category-block-link">
                                Lifestyle,
                            </a>

                            <a href="#" class="category-block-link">
                                Clothing Donation
                            </a>
                        </div>
                    </div>

                    <div class="news-block-info">
                        <div class="d-flex mt-2">
                            <div class="news-block-date">
                                <p>
                                    <i class="bi-calendar4 custom-icon me-1"></i>
                                    October 12, 2036
                                </p>
                            </div>

                            <div class="news-block-author mx-5">
                                <p>
                                    <i class="bi-person custom-icon me-1"></i>
                                    By Admin
                                </p>
                            </div>

                            <div class="news-block-comment">
                                <p>
                                    <i class="bi-chat-left custom-icon me-1"></i>
                                    48 Comments
                                </p>
                            </div>
                        </div>

                        <div class="news-block-title mb-2">
                            <h4>Clothing donation to urban area</h4>
                        </div>

                        <div class="news-block-body">
                            <p><strong>Lorem Ipsum</strong> dolor sit amet, consectetur adipsicing kengan omeg
                                kohm tokito Professional charity theme based on Bootstrap</p>

                            <p><strong>Sed leo</strong> nisl, This is a Bootstrap 5.2.2 CSS template for charity
                                organization websites. You can feel free to use it. Please tell your friends
                                about TemplateMo website. Thank you.</p>

                            <blockquote>Sed leo nisl, posuere at molestie ac, suscipit auctor mauris. Etiam quis
                                metus elementum, tempor risus vel, condimentum orci.</blockquote>
                        </div>

                        <div class="row mt-5 mb-4">
                            <div class="col-lg-6 col-12 mb-4 mb-lg-0">
                                <img src="/resources/assets/images/news/africa-humanitarian-aid-doctor.jpg"
                                     class="news-detail-image img-fluid" alt="">
                            </div>

                            <div class="col-lg-6 col-12">
                                <img src="/resources/assets/images/news/close-up-happy-people-working-together.jpg"
                                     class="news-detail-image img-fluid" alt="">
                            </div>
                        </div>

                        <p>You are not allowed to redistribute this template ZIP file on any other template
                            collection website. Please <a href="https://templatemo.com/contact"
                                                          target="_blank">contact TemplateMo</a> for more information.</p>

                        <div class="social-share border-top mt-5 py-4 d-flex flex-wrap align-items-center">
                            <div class="tags-block me-auto">
                                <a href="#" class="tags-block-link">
                                    Donation
                                </a>

                                <a href="#" class="tags-block-link">
                                    Clothing
                                </a>

                                <a href="#" class="tags-block-link">
                                    Food
                                </a>
                            </div>

                            <div class="d-flex">
                                <a href="#" class="social-icon-link bi-facebook"></a>

                                <a href="#" class="social-icon-link bi-twitter"></a>

                                <a href="#" class="social-icon-link bi-printer"></a>

                                <a href="#" class="social-icon-link bi-envelope"></a>
                            </div>
                        </div>

                        <div class="author-comment d-flex mt-3 mb-4">
                            <img src="/resources/assets/images/avatar/studio-portrait-emotional-happy-funny.jpg"
                                 class="img-fluid avatar-image" alt="">

                            <div class="author-comment-info ms-3">
                                <h6 class="mb-1">Jack</h6>

                                <p class="mb-0">Kind Heart Charity is the most supportive organization. This is
                                    Bootstrap 5 HTML CSS template for everyone. Thank you.</p>

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
                                <h6 class="mb-1">Daisy</h6>

                                <p class="mb-0">Sed leo nisl, posuere at molestie ac, suscipit auctor mauris.
                                    Etiam quis metus elementum, tempor risus vel, condimentum orci</p>

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
                                <h6 class="mb-1">Wilson</h6>

                                <p class="mb-0">Lorem Ipsum dolor sit amet, consectetur adipsicing kengan omeg
                                    kohm tokito Professional charity theme based on Bootstrap</p>

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
