<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
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
        .mysidebar.active{
            background-color: #20c997;
            color: white;
            border-radius: 20px;
            font-size: 18px;
            margin-bottom: 10px;
            padding: 10px;
        }

        .mysidebar{
            color: #676666;
            border-radius: 20px;
            font-size: 18px;
            margin-bottom: 10px;
            padding: 10px;
        }

        .mysidebar:hover{
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
        <div class="col-lg-12 col-12 text-center mb-4" >

            <form action="${contextPath}/user/myinfo/modify/${userDto.id}" role="form" method="post">
            <div class="row ">
                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                    <label class="text-right form-label" for="userid">ID</label>
                    <input type="text" value="${userDto.userid}" id="userid" readonly name="userid" class="form-control form-control-lg"/>
                </div>

                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                    <label class="text-right form-label" for="username">NAME</label>
                    <input type="text" value="${userDto.username}" id="username" name="username" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-5 ">
                    <label class="text-right form-label" for="nickname">NICKNAME</label>
                    <input type="text" id="nickname" value="${userDto.nickname}" name="nickname" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                    <label class="text-right form-label" for="email">EMAIL</label>
                    <input type="email" id="email" value="${userDto.email}" name="email" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-5">
                    <label class="text-right form-label" for="phonenumber">PHONE</label>
                    <input type="text" id="phonenumber" value="${userDto.phonenumber}" name="phonenumber" class="form-control form-control-lg" />
                </div>
                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                    <label class="text-right form-label" for="postcode">POSTCODE</label>
                    <input type="text" id="postcode" value="${userDto.postcode}" name="postcode" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                    <label class="text-right form-label" for="address1">ADDRESS1</label>
                    <input type="text" id="address1" value="${userDto.address1}" name="address1" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4 col-md-10 offset-md-1">
                    <label class="text-right form-label" for="address2">ADDRESS2</label>
                    <input type="text" id="address2" value="${userDto.address2}" name="address2" class="form-control form-control-lg" />
                </div>
                <div class="form-outline form-white mb-4 col-md-5 offset-md-1">
                    <label class="text-right form-label" for="birthday">BIRTH</label>
                    <input type="date" id="birthday" value="${userDto.birthday}" name="birthday" class="form-control form-control-lg" />
                </div>
                <div class="form-outline form-white mb-4 col-md-5">
                    <label class="text-right form-label" for="sex">GENDER</label>
                    <input type="text" id="sex" name="sex" value="${userDto.sex}" class="form-control form-control-lg" />
                </div>
                <input type="hidden" value="${User.userid}" name="modifiedBy" id="modifiedBy">
                <div class="form-outline form-white mb-4 col-md-12 justify-content-center text-center">
                   <center>
                    <button style="width: 200px; margin-right: 10px;" class=" custom-btn custom-border-btn btn text-center" type="submit">Modify</button>
                    <button style="width: 200px;" class=" custom-btn custom-border-btn btn text-center" type="reset">Reset</button>
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
