<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="/resources/assets/summernote/summernote-lite.js"></script>
<script src="/resources/assets/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/assets/summernote/summernote-lite.css">


<html>
<head>
    <%@include file="../include/head.jsp" %>

    <style>
        .colortitle {
            color: lightpink;
        }

        .colorsub {
            color: white;
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

                          <form class="custom-form contact-form" action="#" method="post" role="form">
                            <h2>Create Study!</h2>

                            <p class="mb-4">이제 당신도 함께 스터디를 시작해보세요! </p>
                            <div class="row">
                            <div class="col-12">
                              <input type="text" name="studyname" id="studyname" class="form-control"
                                     placeholder="스터디명" required>
                            </div>

                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="date" name="studystart" id="studystart" class="form-control"
                                       placeholder="스터디 시작일" required>
                              </div>

                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="date" name="last-name" id="studyend" class="form-control"
                                       placeholder="스터디 종료일" required>
                              </div>
                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="text" name="subject-name" id="subject" class="form-control"
                                       placeholder="스터디 주제" required>
                              </div>
                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="number" name="recruit" id="recruit" class="form-control"
                                       placeholder="모집인원" required>
                              </div>
                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="text" name="onoff" id="onoff" class="form-control"
                                       placeholder="온라인/오프라인" required>
                              </div>
                              <div class="col-lg-6 col-md-6 col-12">
                                <input type="text" name="etc" id="etc" class="form-control"
                                       placeholder="비고사항" required>
                              </div>
                                <div class="col-lg-12 col-md-12 col-12" style="background-color: white;">
                                    <textarea name="etc" id="summernote" class="form-control"
                                               placeholder="스터디 내용" required></textarea>
                                </div>

                                    <script>
                                        $('#summernote').summernote({
                                            // 에디터 높이
                                            height: 450,
                                            // 에디터 한글 설정
                                            lang: "ko-KR",
                                            // 에디터에 커서 이동 (input창의 autofocus라고 생각)
                                            focus : true,
                                            toolbar: [
                                                // 글꼴 설정
                                                ['fontname', ['fontname']],
                                                // 글자 크기 설정
                                                ['fontsize', ['fontsize']],
                                                // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
                                                ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                                                // 글자색
                                                ['color', ['forecolor','color']],
                                                // 표만들기
                                                ['table', ['table']],
                                                // 글머리 기호, 번호매기기, 문단정렬
                                                ['para', ['ul', 'ol', 'paragraph']],
                                                // 줄간격
                                                ['height', ['height']],
                                                // 이미지
                                                ['insert', ['picture', 'link', 'video']],
                                                // 코드보기, 확대해서보기, 도움말
                                                ['view', ['codeview','fullscreen', 'help']]
                                            ],
                                            // 추가한 글꼴
                                            fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
                                            // 추가한 폰트사이즈
                                            fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']

                                        });
                                    </script>




                            </div>

<%--                            <button type="submit" class="form-control">reset</button>--%>
                            <button type="submit" class="form-control">create</button>
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
