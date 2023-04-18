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

</head>
<body>
<%@ include file="../include/header.jsp" %>

<section class="gradient-custom">
    <div style="height: 80px;"></div>
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-md-8">
                <div class="mb-md-5 mt-md-4 pb-5 ">

                    <form class="custom-form contact-form" action="/study/create" method="post" role="form">
                        <h2 class="justify-content-center text-center">Update Study</h2>
                        <p class="mb-4 justify-content-center text-center mb-4">생성된 스터디 내용을 수정합니다.</p>
                        <div class="row">

                            <div class="form-outline form-white mb-6 col-md-12">
                                <label class="text-right form-label" for="studyname"> * 스터디 이름</label>
                                <input type="text" id="studyname" value="${studyDto.studyname}" name="studyname" class="form-control form-control-lg" />
                            </div>

                            <div class="form-outline form-white mb-6 col-md-6">
                                <label class="text-right form-label" for="studystart">스터디 시작일</label>
                                <input type="date" id="studystart" value="${studyDto.studystart}" name="studystart" class="form-control form-control-lg" />
                            </div>
                            <div class="form-outline form-white mb-6 col-md-6">
                                <label class="text-right form-label" for="period">스터디 기간</label>
                                <input type="text" id="period" value="${studyDto.period} name="period" class="form-control form-control-lg" />
                            </div>
                            <div class="form-outline form-white mb-6 col-md-6">
                                <label class="text-right form-label" for="recruitend"> * 모집 종료일</label>
                                <input type="date" id="recruitend" name="recruitend" class="form-control form-control-lg" />
                            </div>
                            <div class="form-outline form-white mb-6 col-md-6">
                                <label class="text-right form-label" for="personnel"> * 모집 인원</label>
                                <input type="number" id="personnel" name="personnel" class="form-control form-control-lg" />
                            </div>
                            <div class="form-outline form-white mb-6 col-md-6">
                                <label class="text-right form-label" for="skillstack"> * 기술스택</label>
                                <select type="text" id="skillstack" name="skillstack" class="form-control form-control-lg" >
                                    <option value="Java">Java</option>
                                    <option value="Spring">Spring</option>
                                    <option value="SpringBoot">SpringBoot</option>
                                    <option value="etc">기타</option>
                                </select>
                            </div>
                            <div class="form-outline form-white mb-6 col-md-6">
                                <label class="text-right form-label" for="position"> * 모집포지션</label>
                                <select id="position" name="position" class="form-control form-control-lg" >
                                    <option value="backend">백앤드</option>
                                    <option value="frontend">프론트앤드</option>
                                    <option value="mobile">모바일</option>
                                    <option value="etc">기타</option>
                                </select>
                            </div>

                            <div class="form-outline form-white mb-6 col-md-6">
                                <label class="text-right form-label" for="connection"> * 연락방법</label>
                                <select id="connection" name="connection" class="form-control form-control-lg" >
                                    <option value="kakao">카톡오픈채팅</option>
                                    <option value="phone">연락처</option>
                                    <option value="community">커뮤니티</option>
                                </select>
                            </div>

                            <div class="form-outline form-white mb-6 col-md-6">
                                <label class="text-right form-label" for="onoff"> * 진행방법</label>
                                <select id="onoff" name="onoff" class="form-control form-control-lg" >
                                    <option value="online">온라인</option>
                                    <option value="offline">오프라인</option>
                                </select>

                            </div>

                            <div class="form-outline form-white mb-6 col-md-12">
                                <label class="text-right form-label" for="summernote"> * 스터디/프로젝트 소개</label>
                                <textarea id="summernote" name="content" class="form-control form-control-lg" >
                                    </textarea>
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
                        <input type="hidden" value="${User.userid}" name="createdBy" id="createdBy">

                        <div>
                            <p style="font-size: 15px; margin-top: 25px; margin-bottom: 25px; text-align: center"> * 스터디를 생성하면 관리자의 검토 후에 게재됩니다. 검토는 최대 12시간 이내에 가능합니다.</p>
                        </div>

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
