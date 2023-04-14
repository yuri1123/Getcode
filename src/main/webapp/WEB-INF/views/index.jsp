<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<head>
  <%@ include file="include/head.jsp"%>
</head>

<body>
<%@ include file="include/header.jsp"%>

<main>

  <section class="hero-section hero-section-full-height">
    <div class="container-fluid">
      <div class="row">

        <div class="col-lg-12 col-12 p-0">
          <div id="hero-slide" class="carousel carousel-fade slide" data-bs-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="/resources/assets/images/slide/volunteer-helping-with-donation-box.jpg"
                     class="carousel-image img-fluid" alt="...">

                <div class="carousel-caption d-flex flex-column justify-content-end">
                  <h1>be a Kind Heart</h1>

                  <p>Professional charity theme based on Bootstrap 5.2.2</p>
                </div>
              </div>

              <div class="carousel-item">
                <img src="/resources/assets/images/slide/volunteer-selecting-organizing-clothes-donations-charity.jpg"
                     class="carousel-image img-fluid" alt="...">

                <div class="carousel-caption d-flex flex-column justify-content-end">
                  <h1>Non-profit</h1>

                  <p>You can support us to grow more</p>
                </div>
              </div>

              <div class="carousel-item">
                <img src="/resources/assets/images/slide/medium-shot-people-collecting-donations.jpg"
                     class="carousel-image img-fluid" alt="...">

                <div class="carousel-caption d-flex flex-column justify-content-end">
                  <h1>Humanity</h1>

                  <p>Please tell your friends about our website</p>
                </div>
              </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#hero-slide"
                    data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>

            <button class="carousel-control-next" type="button" data-bs-target="#hero-slide"
                    data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </div>

      </div>
    </div>
  </section>


  <section class="section-padding">
    <div class="container">
      <div class="row">

        <div class="col-lg-10 col-12 text-center mx-auto">
          <h2 class="mb-5">Welcome to Kind Heart Charity</h2>
        </div>

        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
          <div class="featured-block d-flex justify-content-center align-items-center">
            <a href="kind/donate.html" class="d-block">
              <img src="/resources/assets/images/icons/hands.png" class="featured-block-image img-fluid" alt="">

              <p class="featured-block-text">Become a <strong>volunteer</strong></p>
            </a>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
          <div class="featured-block d-flex justify-content-center align-items-center">
            <a href="kind/donate.html" class="d-block">
              <img src="/resources/assets/images/icons/heart.png" class="featured-block-image img-fluid" alt="">

              <p class="featured-block-text"><strong>Caring</strong> Earth</p>
            </a>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
          <div class="featured-block d-flex justify-content-center align-items-center">
            <a href="kind/donate.html" class="d-block">
              <img src="/resources/assets/images/icons/receive.png" class="featured-block-image img-fluid" alt="">

              <p class="featured-block-text">Make a <strong>Donation</strong></p>
            </a>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
          <div class="featured-block d-flex justify-content-center align-items-center">
            <a href="kind/donate.html" class="d-block">
              <img src="/resources/assets/images/icons/scholarship.png" class="featured-block-image img-fluid" alt="">

              <p class="featured-block-text"><strong>Scholarship</strong> Program</p>
            </a>
          </div>
        </div>

      </div>
    </div>
  </section>

  <section class="section-padding section-bg" >
    <div class="container">
      <div class="row">

        <div class="col-lg-6 col-12 mb-5 mb-lg-0">
          <img src="/resources/assets/images/group-people-volunteering-foodbank-poor-people.jpg"
               class="custom-text-box-image img-fluid" alt="">
        </div>

        <div class="col-lg-6 col-12">
          <div class="custom-text-box">
            <h2 class="mb-2">Our Story</h2>

            <h5 class="mb-3">Kind Heart Charity, Non-Profit Organization</h5>

            <p class="mb-0">This is a Bootstrap 5.2.2 CSS template for charity organization websites.
              You can feel free to use it. Please tell your friends about TemplateMo website. Thank
              you.</p>
          </div>

          <div class="row">
            <div class="col-lg-6 col-md-6 col-12">
              <div class="custom-text-box mb-lg-0">
                <h5 class="mb-3">Our Mission</h5>

                <p>Sed leo nisl, posuere at molestie ac, suscipit auctor quis metus</p>

                <ul class="custom-list mt-2">
                  <li class="custom-list-item d-flex">
                    <i class="bi-check custom-text-box-icon me-2"></i>
                    Charity Theme
                  </li>

                  <li class="custom-list-item d-flex">
                    <i class="bi-check custom-text-box-icon me-2"></i>
                    Semantic HTML
                  </li>
                </ul>
              </div>
            </div>

            <div class="col-lg-6 col-md-6 col-12">
              <div class="custom-text-box d-flex flex-wrap d-lg-block mb-lg-0">
                <div class="counter-thumb">
                  <div class="d-flex">
                                            <span class="counter-number" data-from="1" data-to="2009"
                                                  data-speed="1000"></span>
                    <span class="counter-number-text"></span>
                  </div>

                  <span class="counter-text">Founded</span>
                </div>

                <div class="counter-thumb mt-4">
                  <div class="d-flex">
                                            <span class="counter-number" data-from="1" data-to="120"
                                                  data-speed="1000"></span>
                    <span class="counter-number-text">B</span>
                  </div>

                  <span class="counter-text">Donations</span>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>


  <section class="about-section section-padding">
    <div class="container">
      <div class="row">

        <div class="col-lg-6 col-md-5 col-12">
          <img src="/resources/assets/images/portrait-volunteer-who-organized-donations-charity.jpg"
               class="about-image ms-lg-auto bg-light shadow-lg img-fluid" alt="">
        </div>

        <div class="col-lg-5 col-md-7 col-12">
          <div class="custom-text-block">
            <h2 class="mb-0">Sandy Chan</h2>

            <p class="text-muted mb-lg-4 mb-md-4">Founding Partner</p>

            <p>Lorem Ipsum dolor sit amet, consectetur adipsicing kengan omeg kohm tokito Professional
              charity theme based</p>

            <p>Sed leo nisl, posuere at molestie ac, suscipit auctor mauris. Etiam quis metus</p>

            <ul class="social-icon mt-4">
              <li class="social-icon-item">
                <a href="#" class="social-icon-link bi-twitter"></a>
              </li>

              <li class="social-icon-item">
                <a href="#" class="social-icon-link bi-facebook"></a>
              </li>

              <li class="social-icon-item">
                <a href="#" class="social-icon-link bi-instagram"></a>
              </li>
            </ul>
          </div>
        </div>

      </div>
    </div>
  </section>



  <section class="volunteer-section section-padding" >
    <div class="container">
      <div class="row">

        <div class="col-lg-6 col-12">
          <h2 class="text-white mb-4">Volunteer</h2>

          <form class="custom-form volunteer-form mb-5 mb-lg-0" action="#" method="post" role="form">
            <h3 class="mb-4">Become a volunteer today</h3>

            <div class="row">
              <div class="col-lg-6 col-12">
                <input type="text" name="volunteer-name" id="volunteer-name" class="form-control"
                       placeholder="Jack Doe" required>
              </div>

              <div class="col-lg-6 col-12">
                <input type="email" name="volunteer-email" id="volunteer-email"
                       pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Jackdoe@gmail.com"
                       required>
              </div>

              <div class="col-lg-6 col-12">
                <input type="text" name="volunteer-subject" id="volunteer-subject"
                       class="form-control" placeholder="Subject" required>
              </div>

              <div class="col-lg-6 col-12">
                <div class="input-group input-group-file">
                  <input type="file" class="form-control" id="inputGroupFile02">

                  <label class="input-group-text" for="inputGroupFile02">Upload your CV</label>

                  <i class="bi-cloud-arrow-up ms-auto"></i>
                </div>
              </div>
            </div>

            <textarea name="volunteer-message" rows="3" class="form-control" id="volunteer-message"
                      placeholder="Comment (Optional)"></textarea>

            <button type="submit" class="form-control">Submit</button>
          </form>
        </div>

        <div class="col-lg-6 col-12">
          <img src="/resources/assets/images/smiling-casual-woman-dressed-volunteer-t-shirt-with-badge.jpg"
               class="volunteer-image img-fluid" alt="">

          <div class="custom-block-body text-center">
            <h4 class="text-white mt-lg-3 mb-lg-3">About Volunteering</h4>

            <p class="text-white">Lorem Ipsum dolor sit amet, consectetur adipsicing kengan omeg kohm
              tokito Professional charity theme based</p>
          </div>
        </div>

      </div>
    </div>
  </section>

  <section class="news-section section-padding" >
    <div class="container">
      <div class="row">

        <div class="col-lg-12 col-12 mb-5">
          <h2>Latest News</h2>
        </div>


      </div>
    </div>
  </section>


  <section class="testimonial-section section-padding section-bg">
    <div class="container">
      <div class="row">

        <div class="col-lg-8 col-12 mx-auto">
          <h2 class="mb-lg-3">Happy customers</h2>

          <div id="testimonial-carousel" class="carousel carousel-fade slide" data-bs-ride="carousel">

            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="carousel-caption">
                  <h4 class="carousel-title">Lorem Ipsum dolor sit amet, consectetur adipsicing
                    kengan omeg kohm tokito charity theme</h4>

                  <small class="carousel-name"><span class="carousel-name-title">Maria</span>,
                    Boss</small>
                </div>
              </div>

              <div class="carousel-item">
                <div class="carousel-caption">
                  <h4 class="carousel-title">Sed leo nisl, posuere at molestie ac, suscipit auctor
                    mauris quis metus tempor orci</h4>

                  <small class="carousel-name"><span class="carousel-name-title">Thomas</span>,
                    Partner</small>
                </div>
              </div>

              <div class="carousel-item">
                <div class="carousel-caption">
                  <h4 class="carousel-title">Lorem Ipsum dolor sit amet, consectetur adipsicing
                    kengan omeg kohm tokito charity theme</h4>

                  <small class="carousel-name"><span class="carousel-name-title">Jane</span>,
                    Advisor</small>
                </div>
              </div>

              <div class="carousel-item">
                <div class="carousel-caption">
                  <h4 class="carousel-title">Sed leo nisl, posuere at molestie ac, suscipit auctor
                    mauris quis metus tempor orci</h4>

                  <small class="carousel-name"><span class="carousel-name-title">Bob</span>,
                    Entreprenuer</small>
                </div>
              </div>

              <ol class="carousel-indicators">
                <li data-bs-target="#testimonial-carousel" data-bs-slide-to="0" class="active">
                  <img src="/resources/assets/images/avatar/portrait-beautiful-young-woman-standing-grey-wall.jpg"
                       class="img-fluid rounded-circle avatar-image" alt="avatar">
                </li>

                <li data-bs-target="#testimonial-carousel" data-bs-slide-to="1" class="">
                  <img src="/resources/assets/images/avatar/portrait-young-redhead-bearded-male.jpg"
                       class="img-fluid rounded-circle avatar-image" alt="avatar">
                </li>

                <li data-bs-target="#testimonial-carousel" data-bs-slide-to="2" class="">
                  <img src="/resources/assets/images/avatar/pretty-blonde-woman-wearing-white-t-shirt.jpg"
                       class="img-fluid rounded-circle avatar-image" alt="avatar">
                </li>

                <li data-bs-target="#testimonial-carousel" data-bs-slide-to="3" class="">
                  <img src="/resources/assets/images/avatar/studio-portrait-emotional-happy-funny.jpg"
                       class="img-fluid rounded-circle avatar-image" alt="avatar">
                </li>
              </ol>

            </div>
          </div>
        </div>

      </div>
    </div>
  </section>


  <section class="contact-section section-padding" >
    <div class="container">
      <div class="row">

        <div class="col-lg-4 col-12 ms-auto mb-5 mb-lg-0">
          <div class="contact-info-wrap">
            <h2>Get in touch</h2>

            <div class="contact-image-wrap d-flex flex-wrap">
              <img src="/resources/assets/images/avatar/pretty-blonde-woman-wearing-white-t-shirt.jpg"
                   class="img-fluid avatar-image" alt="">

              <div class="d-flex flex-column justify-content-center ms-3">
                <p class="mb-0">Clara Barton</p>
                <p class="mb-0"><strong>HR & Office Manager</strong></p>
              </div>
            </div>

            <div class="contact-info">
              <h5 class="mb-3">Contact Infomation</h5>

              <p class="d-flex mb-2">
                <i class="bi-geo-alt me-2"></i>
                Akershusstranda 20, 0150 Oslo, Norway
              </p>

              <p class="d-flex mb-2">
                <i class="bi-telephone me-2"></i>

                <a href="tel: 305-240-9671">
                  305-240-9671
                </a>
              </p>

              <p class="d-flex">
                <i class="bi-envelope me-2"></i>

                <a href="mailto:info@yourgmail.com">
                  donate@charity.org
                </a>
              </p>

              <a href="#" class="custom-btn btn mt-3">Get Direction</a>
            </div>
          </div>
        </div>

        <div class="col-lg-5 col-12 mx-auto">
          <form class="custom-form contact-form" action="#" method="post" role="form">
            <h2>Contact form</h2>

            <p class="mb-4">Or, you can just send an email:
              <a href="#">info@charity.org</a>
            </p>
            <div class="row">
              <div class="col-lg-6 col-md-6 col-12">
                <input type="text" name="first-name" id="first-name" class="form-control"
                       placeholder="Jack" required>
              </div>

              <div class="col-lg-6 col-md-6 col-12">
                <input type="text" name="last-name" id="last-name" class="form-control"
                       placeholder="Doe" required>
              </div>
            </div>

            <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*" class="form-control"
                   placeholder="Jackdoe@gmail.com" required>

            <textarea name="message" rows="5" class="form-control" id="message"
                      placeholder="What can we help you?"></textarea>

            <button type="submit" class="form-control">Send Message</button>
          </form>
        </div>

      </div>
    </div>
  </section>
</main>


<%--<%@include file="include/footer.jsp"%>--%>
<%--<%@include file="include/js.jsp"%>--%>


</body>

</html>