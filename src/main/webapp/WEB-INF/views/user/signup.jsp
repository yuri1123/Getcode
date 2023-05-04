<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>


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
        <div class="row d-flex justify-content-center text-center">

            <div class="col-md-8 justify-content-center text-center">

                <div class="mb-md-5 mt-md-4 pb-5 justify-content-center text-center">

                    <form class="custom-form contact-form justify-content-center text-center" action="/user/signup"
                          method="post" role="form">
                        <h2>SIGN UP</h2>
                        <p class="mb-4">Register your account in GetCode!</p>

                        <div class="row text-start">
                                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                                    <label class="text-right form-label" for="userid"> * ID</label>
                                    <input type="text" id="userid" name="userid" class="form-control form-control-lg"/>
                                </div>
                                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                                    <label class="text-right form-label" for="password"> * PASSWORD</label>
                                    <input type="password" id="password" name="password"
                                           class="form-control form-control-lg"/>
                                </div>
                                <div class="form-outline form-white mb-4 col-md-5">
                                    <label class="text-right form-label" for="passwordcheck"> * PASSWORD 확인</label>
                                    <input type="password" id="passwordcheck" class="form-control form-control-lg"/>
                                </div>

                                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                                    <label class="text-right form-label" for="username"> * NAME</label>
                                    <input type="text" id="username" name="username"
                                           class="form-control form-control-lg"/>
                                </div>

                                <div class="form-outline form-white mb-4 col-md-5 ">
                                    <label class="text-right form-label" for="nickname"> * NICKNAME</label>
                                    <input type="text" id="nickname" name="nickname"
                                           class="form-control form-control-lg"/>
                                </div>

                                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                                    <label class="text-right form-label" for="email"> * EMAIL</label>
                                    <input type="email" id="email" name="email" class="form-control form-control-lg"/>
                                </div>

                                <div class="form-outline form-white mb-4 col-md-5">
                                    <label class="text-right form-label" for="phonenumber"> * PHONE</label>
                                    <input type="text" id="phonenumber" name="phonenumber"
                                           class="form-control form-control-lg"/>
                                </div>
                                <div class="form-outline form-white mb-4 col-7 offset-md-1">
                                    <label class="text-right form-label" for="postcode"> * postcode</label>
                                    <input readonly="readonly" type="text" id="postcode" name="postcode"
                                           class="form-control form-control-lg"/>
                                </div>
                                <div class="form-outline form-white mb-4 col-4 text-start justify-content-start align-bottom mt-4">
                                    <a href="#none" onclick="sample6_execDaumPostcode()"
                                       class="custom-btn custom-border-btn btn text-center"
                                       style="font-size:16px; border-radius: 10px;margin-top:7px;height: 50px;"
                                       id="postBtn">Search</a><br>
                                </div>
                                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                                    <label class="text-right form-label" for="address1"> * ADDRESS1</label>
                                    <input readonly="readonly" type="text" id="address1" name="address1"
                                           class="form-control form-control-lg"/>
                                </div>

                                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                                    <label class="text-right form-label" for="address2"> * ADDRESS2</label>
                                    <input type="text" id="address2" name="address2"
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
                                    <input type="date" id="birthday" name="birthday"
                                           class="form-control form-control-lg"/>
                                </div>
                                <div class="form-outline form-white mb-4 col-md-5">
                                    <label class="text-right form-label" for="sex"> * GENDER</label>
                                    <select id="sex" name="sex" class="form-control form-control-lg">
                                        <option value="남">남</option>
                                        <option value="여">여</option>
                                    </select>
                                </div>
                                <div class="form-outline form-white mb-4 col-md-12 justify-content-center text-center">
                                    <center>
                                        <button style="width: 200px; height: 50px"
                                                class=" custom-btn custom-border-btn btn text-center" type="submit">Sign
                                            Up
                                        </button>
                                        <button style="width: 200px;"
                                                class=" custom-btn custom-border-btn btn text-center" type="reset">Reset
                                        </button>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            </div>

        </div>
    </div>

</section>


<%@include file="../include/footer.jsp" %>
<%@include file="../include/js.jsp" %>


</body>
</html>