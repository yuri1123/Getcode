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
        <h2 class="mb-0">Review Detail</h2>
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
              <h4>${review.subject}</h4>
            </div>
            <div class="d-flex col-12 mt-2 mb-1 justify-content-center">
              <div class="news-block-date">
                <p>
                  <i class="bi-chat-left custom-icon me-1"></i>
                  ${review.regDate}
                </p>
              </div>

              <div class="news-block-author mx-5">
                <p>
                  <i class="bi-chat-left custom-icon me-1"></i>
                  ${review.createdBy}
                </p>
              </div>

              <div class="news-block-comment">
                <p>
                  <i class="bi-chat-left custom-icon me-1"></i>
                  ${review.viewcnt} view
                </p>
              </div>
            </div>
          </div>
          <div class="social-share border-top py-2 d-flex flex-wrap align-items-center">
          </div>

          <div class="news-block-body">
            <blockquote>${review.content}</blockquote>
          </div>

          <div class="social-share border-top mt-5 py-4 d-flex justify-content-end flex-wrap align-items-center">
            <%--                        <div class="tags-block me-auto">--%>
            <hr class="mb-3">
              <c:if test="${User.userid == review.createdBy}">
                <div class="col-2 me-1 justify-content-right text-right">
                  <button type="button" class="form-control btn-primary bhover"><a href="/community/updatereview/${review.id}">수정하기</a></button>
                </div>
                <div class="col-2 me-1 justify-content-right text-right">
                  <form action="/community/deleteboard/${review.id}" type="form" method="post">
                  <button type="submit" onclick="if(confirm('정말로 삭제하시겠습니까?'));" class="form-control btn-primary bhover mt-3"><a href="">삭제하기</a></button>
                  </form>
                </div>
                <div class="col-2 me-1 justify-content-right text-right">
                  <button type="button" class="form-control btn-primary bhover"><a href="/community/reviewlist">목록가기</a></button>
                </div>
              </c:if>
              <c:if test="${User.userid != review.createdBy}">
                <div class="col-3  offset-8 justify-content-right text-right">
                  <button type="button" class="form-control btn-primary bhover"><a href="/community/reviewlist">목록가기</a></button>
                </div>
              </c:if>

            <%--                        </div>--%>
          </div>

          <div class="author-comment d-flex mt-3 mb-4">
            <img src="/resources/yuri/yuripic.png"
                 class="img-fluid avatar-image" alt="">

            <div class="author-comment-info ms-3">
              <h6 class="mb-1">율류리</h6>

              <p class="mb-0">참여하고 싶은데 좀 늦참해도 되나요?</p>

            </div>
          </div>

          <div class="author-comment d-flex mt-3 mb-4">
            <img src="/resources/assets/images/avatar/portrait-young-redhead-bearded-male.jpg"
                 class="img-fluid avatar-image" alt="">

            <div class="author-comment-info ms-3">
              <h6 class="mb-1">윌슨</h6>

              <p class="mb-0">ㅎㅎ 너무 좋아보이는 스터디네요🎈😍😊</p>

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
<%@include file="../include/js.jsp"%>


</body>
</html>
