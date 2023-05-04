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
            <c:if test="${state == '등록'}">
                <h2 style="font-size: 43px;">Create Notice</h2>
            </c:if>
            <c:if test="${state == '수정'}">
                <h2 style="font-size: 43px;">Update Notice</h2>
            </c:if>

        </div>
        <div class="col-lg-10 offset-1 col-12 justify-content-center text-center mb-5 mt-4">
            <div class="card ps-5 text-center justify-content-center align-content-center">

                <form class="custom-form contact-form justify-content-center" action="" method="post" role="form">

                    <div class="row">
                        <div class="col-11 m-3 mt-3">
                            <input type="text" name="subject" id="subject" class="form-control" style="height:50px;"
                                   placeholder="제목" value="${boardDto.subject}" required>
                        </div>

                        <%--                            <div class="col-12">--%>
                        <%--                                <textarea type="text" name="content" id="content" rows="10" class="form-control"--%>
                        <%--                                          placeholder="" required>${boardDto.content}</textarea>--%>
                        <%--                            </div>--%>

                        <div class="col-11 m-3">
                            <%--                                <label class="text-right form-label" for="summernote"> * 질문 내용</label>--%>
                            <textarea id="summernote" name="content" class="form-control">${boardDto.content}
                            </textarea>
                        </div>
                        <script>
                            $('#summernote').summernote({
                                // 에디터 높이
                                height: 450,
                                // 에디터 한글 설정
                                lang: "ko-KR",
                                // 에디터에 커서 이동 (input창의 autofocus라고 생각)
                                focus: true,
                                toolbar: [
                                    // 글꼴 설정
                                    ['fontname', ['fontname']],
                                    // 글자 크기 설정
                                    ['fontsize', ['fontsize']],
                                    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
                                    ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
                                    // 글자색
                                    ['color', ['forecolor', 'color']],
                                    // 표만들기
                                    ['table', ['table']],
                                    // 글머리 기호, 번호매기기, 문단정렬
                                    ['para', ['ul', 'ol', 'paragraph']],
                                    // 줄간격
                                    ['height', ['height']],
                                    // 이미지
                                    ['insert', ['picture', 'link', 'video']],
                                    // 코드보기, 확대해서보기, 도움말
                                    ['view', ['codeview', 'fullscreen', 'help']]
                                ],
                                // 추가한 글꼴
                                fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋음체', '바탕체'],
                                // 추가한 폰트사이즈
                                fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72']

                            });
                        </script>

                        <input type="hidden" name="createdBy" id="createdBy" value="${User.userid}">
                        <input type="hidden" name="modifiedBy" id="modifiedBy" value="${User.userid}">
                        <div class="col-11 m-3 mb-3">
                        <c:if test="${state == '등록'}">
                        <button type="submit" formaction="/admin/notice/register" class="form-control">create
                        </button>
                        </c:if>
                        <c:if test="${state == '수정'}">
                        <button type="submit" formaction="/admin/notice/modify/${boardDto.id}"
                                class="form-control">update
                        </button>
                        </c:if>
                        </div>
                </form>


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
