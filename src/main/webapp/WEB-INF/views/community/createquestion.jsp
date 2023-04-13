<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


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

                          <form class="custom-form contact-form" action="/community/createquestion" method="post" role="form">
                            <h2>Create Question!</h2>
                            <p class="mb-4">Do you have any question?</p>
                            <div class="row">
                            <div class="col-12">
                              <input type="text" name="subject" id="subject" class="form-control"
                                     placeholder="제목" required>
                            </div>

                              <div class="col-12">
                                <textarea type="text" name="content" id="content" rows="10" class="form-control"
                                          placeholder="질문 내용" required></textarea>
                              </div>
                                <div class="hidden" name="createdBy" id="createdBy" value="${User.userid}">

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
