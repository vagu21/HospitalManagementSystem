<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link type="text/css" rel="stylesheet" href="css/styless.css">
  <title>Registration Form Using HTML/CSS</title>
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
  
</head>
<body>
  
<body>
  <div id="container">
    <div class="form-wrap">
      <h1>Login</h1>
      <p>Enter your credentials to log in</p>
      <form action="checklogin" method="post">
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" name="email" id="email">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" name="password" id="password">
        </div>
        <div class="g-recaptcha" data-sitekey="  6Lds8fAoAAAAANbebOP3XcFfQ-MDEiFHZ0oykh6Y"></div>
        <button type="submit">Login</button>
        <p class="bottom-text">
          By Clicking the Sign Up Button, you agree to our
          <a href="#">Term & Conditions</a> and <a href="#">Primary Policy</a>
        </p>
      </form>
      </div>
    <footer>
      <p>If you don't have an Account? <a href="registration.jsp">SignUp Here</a></p>
    </footer>
  </div>
  </body>
</html>