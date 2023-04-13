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
                <h2 class="mb-0">Q&A Board</h2>
            </div>
            <div class="col-lg-5 col-12">
                <a href="${contextPath}/community/createquestion" class="custom-btn btn smoothscroll">Do you have any question?</a>
            </div>

        </div>
    </div>
</section>


<section class="section-padding" >
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12 text-center mb-4">
                <h2>Q&A LIST</h2>
            </div>

                <div class="mb-md-5 mt-md-4 pb-5 justify-content-center text-center">
                    <form class="custom-form contact-form justify-content-center text-center" action="#" method="post" role="form">

                        <form action="${contextPath}/user/login" role="form" method="post">

                            <table class="table table">
                                <thead class="text-center">
                                <tr>
                                    <th>no</th>
                                    <th>subject</th>
                                    <th>writer</th>
                                    <th>date</th>
                                    <th>viewcnt</th>
                                </tr>
                                </thead>
                                <tbody class="text-center">
                                <tr>
                                    <td>1</td>
                                    <td>하이하이</td>
                                    <td>하이하이</td>
                                    <td>하이하이</td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>하이하이</td>
                                    <td>하이하이</td>
                                    <td>하이하이</td>
                                    <td>10</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>하이하이</td>
                                    <td>하이하이</td>
                                    <td>하이하이</td>
                                    <td>15</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>하이하이</td>
                                    <td>하이하이</td>
                                    <td>하이하이</td>
                                    <td>20</td>
                                </tr>
                                </tbody>
                            </table>



                        </form>

                    </form>
                </div>

            </div>
        </div>
</section>


<%@include file="../include/footer.jsp"%>
<%@include file="../include/js.jsp"%>>


</body>
</html>
