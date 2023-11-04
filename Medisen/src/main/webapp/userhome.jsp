<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Home | Medisen</title>
<link type="text/css" rel="stylesheet" href="css/styles.css">
<link type="text/css" rel="stylesheet" href="css/styless.css">
<link type="text/css" rel="stylesheet" href="css/adminhome.css">
</head>
<body>

<nav>
<div class="nav__logo">Medisen</div>
<ul class="nav__links">


<li class="link"><a href="viewalldoctors">viewalldoctors</a></li>
<li class="link"><a href="viewallappointments">myappointments</a></li>
<li class="link"><a href="index.jsp">Logout</a></li>

</nav>

<header class="section__container header__container">
  <h1 class="section__header">Welcome, ${cname}</h1>
  <!-- Add any additional content or images specific to the admin home page -->
</header>
 
    </section>


    <section class="subscribe">
      <div class="section__container subscribe__container">
        <h2 class="section__header">Subscribe newsletter & get latest news</h2>
        <form class="subscribe__form">
          <input type="text" placeholder="Enter your email here" />
          <button class="btn">Subscribe</button>
        </form>
      </div>
    </section>
<footer class="footer">
      <div class="section__container footer__container">
        <div class="footer__col">
          <h3>Medisen</h3>
          <p>
           Medisen's commitment to advancing regenerative medicine
            not only transforms the lives of those it serves but also sets
             a new standard for healthcare, pushing the boundaries of what is medically 
             possible. The hospital's dedication to pushing the frontiers of medical science 
             continues to inspire hope for those seeking solutions to once-intractable health challenges.
          </p>
        </div>
        <div class="footer__col">
          <h4>INFORMATION</h4>
          <p>Home</p>
          <p>About</p>
          <p>doctors</p>
          <p>appointments</p>
        </div>
        <div class="footer__col">
          <h4>CONTACT</h4>
          <p>Support</p>
          <p>Media</p>
          <p>Socials</p>
        </div>
      </div>
      <div class="section__container footer__bar">
        <p>Done by Team 6154.</p>
        <div class="socials">
          <span><i class="ri-facebook-fill"></i></span>
          <span><i class="ri-twitter-fill"></i></span>
          <span><i class="ri-instagram-line"></i></span>
          <span><i class="ri-youtube-fill"></i></span>
        </div>
      </div>
    </footer>
  </body>
</html>