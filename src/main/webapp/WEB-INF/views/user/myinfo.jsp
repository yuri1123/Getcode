<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<html>
<head>
    <%@include file="../include/head.jsp" %>

    <style>
        .two-columns {
            display: flex;
            flex-wrap: wrap;
        }

        @media (min-width: 990px) {
            .column {
                flex-basis: 50%;
                box-sizing: border-box;
                padding: 0 10px;
            }
        }

        .mysidebar.active {
            background-color: #20c997;
            color: white;
            border-radius: 20px;
            font-size: 18px;
            margin-bottom: 10px;
            padding: 10px;
        }

        .mysidebar {
            color: #676666;
            border-radius: 20px;
            font-size: 18px;
            margin-bottom: 10px;
            padding: 10px;
        }

        .mysidebar:hover {
            background-color: #ecfae4;
            color: #676666;
            border-radius: 20px;
            font-size: 18px;
            margin-bottom: 10px;
            padding: 10px;
        }

    </style>

</head>
<body>

<%--<script>--%>
<%--    //파일의 확장자가 존재하는지 검사(i는 대,소문자 구분 안함)--%>
<%--    function checkImageType(fileName){--%>
<%--        var pattern = /jpg$|gif$|png$|jpeg$|/i;--%>
<%--        return fileName.match(pattern);--%>
<%--    }--%>

<%--    $(".fileDrop").on("drop", function(event){--%>
<%--        event.preventDefault();--%>
<%--        $.ajax({--%>
<%--            url: '/uploadAjax',--%>
<%--            data : formData,--%>
<%--            dataType:'text',--%>
<%--            processData: false,--%>
<%--            contentType:false,--%>
<%--            type:'POST',--%>
<%--            success:function (data){--%>
<%--                var str = "";--%>
<%--                if(checkImageType(data)){--%>
<%--                    str = "<div>" + "<img src ='displayFile?fileName="+data+"'/>"+data+"</div>";--%>
<%--                } else {--%>
<%--                    str="<div>"+data+"</div>";--%>
<%--                }--%>
<%--                $(".uploadedList").append(str);--%>
<%--            }--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>


<%@ include file="../include/header.jsp" %>

<section class="cta-section section-padding section-bg">
    <div class="container">
        <div class="row justify-content-center align-items-center">

            <div class="col-lg-5 col-12 ms-auto">
                <h2 class="mb-0">This is your Place</h2>
            </div>

            <div class="col-lg-5 col-12">
                <%--                <a href="${contextPath}/study/create" class="custom-btn btn smoothscroll">make study</a>--%>
            </div>

        </div>
    </div>
</section>


<section class="section-padding">
    <div class="container">
        <div class="row col-12 ">
            <!-- javascript behavior vertical pills -->
            <div class="col-2">
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="mysidebar" href="${contextPath}/user/mypage/${userDto.id}">My Study<br></a>
                    <a class="mysidebar" href="${contextPath}/user/mymadestudy/${userDto.userid}">My Made Study<br></a>
                    <a class="mysidebar " href="${contextPath}/user/myboard/${userDto.userid}">My Board<br></a>
                    <a class="mysidebar active" href="${contextPath}/user/myinfo/${userDto.id}">My Info<br></a>
                </div>
            </div>
            <div class="col-10">
                <div class="tab-content" id="v-pills-tabContent">


                    <div class="col-lg-12 col-12 text-center mb-4">
                        <h2>My Information</h2>
                    </div>
                    <div class="col-lg-12 col-12 text-start mb-4">

                        <form enctype="multipart/form-data" action="/user/myinfo/modify/${userDto.id}" role="form"
                              method="post">
                            <div class="row">
                                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                                    <label class="text-right form-label" for="avatar">* Avatar</label>
                                    <center>
                                        <img src="/resources/yuri/squirrel.png" style="width: 300px;height: 300px;"
                                             id="avatar" class="form-control form-control-lg"/>
                                    </center>
                                </div>
                                <div class="form-outline form-white mb-4 col-5 mt-4">
                                    <label class="text-right form-label" for="avatarImage">* Upload picture</label>
                                    <input id="avatarImage" value="${userDto.avatarimage}" name="avatarimage"
                                           type="file" accept=".jpg, .jpeg, .png"
                                           class="mt-5 form-control form-control-lg"
                                           style="font-size:16px; border-radius: 10px;margin-top:7px;"
                                           onchange="previewFile()"><br>
                                    <center>
                                        <img src="/resources/yuri/nopic.jpg" style="width: 160px;height: 150px;"
                                             class="form-control form-control-lg" alt="미리보기 이미지" id="preview"/>
                                    </center>
                                </div>
                                <input type="hidden" name="avatarImageType">
                                <script>
                                    function previewFile() {
                                        var preview = document.querySelector('#preview');
                                        var file = document.querySelector('input[type=file]').files[0];
                                        var reader = new FileReader();

                                        reader.onloadend = function () {
                                            preview.src = reader.result;
                                        }

                                        if (file) {
                                            reader.readAsDataURL(file);
                                        } else {
                                            preview.src = "";
                                        }
                                    }
                                </script>

                                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                                    <label class="text-right form-label" for="userid"> * ID</label>
                                    <input type="text" value="${userDto.userid}" id="userid" readonly name="userid"
                                           class="form-control form-control-lg"/>
                                </div>

                                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                                    <label class="text-right form-label" for="username"> * NAME</label>
                                    <input type="text" value="${userDto.username}" id="username" name="username"
                                           class="form-control form-control-lg"/>
                                </div>

                                <div class="form-outline form-white mb-4 col-md-5 ">
                                    <label class="text-right form-label" for="nickname"> * NICKNAME</label>
                                    <input type="text" id="nickname" value="${userDto.nickname}" name="nickname"
                                           class="form-control form-control-lg"/>
                                </div>

                                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                                    <label class="text-right form-label" for="email"> * EMAIL</label>
                                    <input type="email" id="email" value="${userDto.email}" name="email"
                                           class="form-control form-control-lg"/>
                                </div>

                                <div class="form-outline form-white mb-4 col-md-5">
                                    <label class="text-right form-label" for="phonenumber"> * PHONE</label>
                                    <input type="text" id="phonenumber" value="${userDto.phonenumber}"
                                           name="phonenumber" class="form-control form-control-lg"/>
                                </div>

                                <div class="form-outline form-white mb-4 col-7 offset-md-1">
                                    <label class="text-right form-label" for="postcode"> * POSTCODE</label>
                                    <input readonly="readonly" type="text" id="postcode" value="${userDto.postcode}"
                                           name="postcode" class="form-control form-control-lg"/>
                                </div>
                                <div class="form-outline form-white mb-4 col-4 text-start justify-content-start align-bottom mt-4">
                                    <a href="#none" onclick="sample6_execDaumPostcode()"
                                       class="custom-btn custom-border-btn btn text-center"
                                       style="font-size:16px; border-radius: 10px;margin-top:7px;height: 50px;"
                                       id="postBtn">Search</a><br>
                                </div>
                                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                                    <label class="text-right form-label" for="address1"> * ADDRESS1</label>
                                    <input readonly="readonly" type="text" id="address1" value="${userDto.address1}"
                                           name="address1" class="form-control form-control-lg"/>
                                </div>

                                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                                    <label class="text-right form-label" for="address2"> * ADDRESS2</label>
                                    <input type="text" id="address2" value="${userDto.address2}" name="address2"
                                           class="form-control form-control-lg"/>
                                </div>

                                <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                                <script>
                                    function sample6_execDaumPostcode() {
                                        new daum.Postcode({
                                            oncomplete: function (data) {
                                                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                                                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                                var addr = ''; // 주소 변수
                                                var extraAddr = ''; // 참고항목 변수

                                                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                                                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                                    addr = data.roadAddress;
                                                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                                    addr = data.jibunAddress;
                                                }

                                                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                                                if (data.userSelectedType === 'R') {
                                                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                                                        extraAddr += data.bname;
                                                    }
                                                    // 건물명이 있고, 공동주택일 경우 추가한다.
                                                    if (data.buildingName !== '' && data.apartment === 'Y') {
                                                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                                    }
                                                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                                    if (extraAddr !== '') {
                                                        extraAddr = ' (' + extraAddr + ')';
                                                    }
                                                    // 조합된 참고항목을 해당 필드에 넣는다.
                                                    document.getElementById("address2").value = extraAddr;

                                                } else {
                                                    document.getElementById("address2").value = '';
                                                }

                                                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                                document.getElementById('postcode').value = data.zonecode;
                                                document.getElementById("address1").value = addr;
                                                // 커서를 상세주소 필드로 이동한다.
                                                document.getElementById("address2").focus();
                                            }
                                        }).open();
                                    }
                                </script>


                                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                                    <label class="text-right form-label" for="birthday"> * BIRTH</label>
                                    <input type="date" id="birthday" value="${userDto.birthday}" name="birthday"
                                           class="form-control form-control-lg"/>
                                </div>
                                <div class="form-outline form-white mb-4 col-md-5">
                                    <label class="text-right form-label" for="sex"> * GENDER</label>
                                    <select id="sex" name="sex" value="${userDto.sex}"
                                            class="form-control form-control-lg">
                                        <c:if test="${userDto.sex == '남'}">
                                            <option value="남" selected>남</option>
                                            <option value="여">여</option>
                                        </c:if>
                                        <c:if test="${userDto.sex == '여'}">
                                            <option value="남">남</option>
                                            <option value="여" selected>여</option>
                                        </c:if>
                                    </select>
                                </div>
                                <input type="hidden" value="${User.userid}" name="modifiedBy" id="modifiedBy">
                                <div class="form-outline form-white mb-4 col-md-12 justify-content-center text-center">
                                    <center>
                                        <button style="width: 200px; margin-right: 10px;"
                                                class=" custom-btn custom-border-btn btn text-center" type="submit">
                                            Modify
                                        </button>
                                        <form role="form" method="post" action="/user/deleteaccount/${User.id}">
                                            <button style="width: 200px;"
                                                    class=" custom-btn custom-border-btn btn text-center"
                                                    onclick="if(confirm('모든 게시글과 스터디 정보가 삭제될 수 있습니다. 정말로 겟코드에서 탈퇴하시겠습니까? '));"
                                                    type="submit">Delete Account
                                            </button>
                                        </form>
                                    </center>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>
</section>


<%@include file="../include/footer.jsp" %>
<%@include file="../include/js.jsp" %>


</body>
</html>
