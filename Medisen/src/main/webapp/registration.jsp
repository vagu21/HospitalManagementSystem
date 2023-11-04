<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link type="text/css" rel="stylesheet" href="css/signupstyle.css">
  <link type="text/css" rel="stylesheet" href="css/styless.css">
   <link type="text/css" rel="stylesheet" href="css/styles.css">
  <title>Registration Form Using HTML/CSS</title>
</head>
<body>
  
  <div id="container">
    <div class="form-wrap">
      <h1>Registration</h1>
      <p>Fill out the form to register</p>
      <form action="insertpat" method="post">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" name="name" id="name" required>
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" name="email" id="email" required>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" name="password" id="password" required>
        </div>
        <div class="form-group">
          <label for="contact">Contact</label>
          <input type="text" name="contactno" id="contactno" required>
        </div>
        <div class="form-group">
          <label for="contact">Age</label>
          <input type="text" name="age" id="age" required>
        </div>
        <div class="form-group">
          <label for="contact">Gender</label>
          <input type="text" name="gender" id="gender" required>
        </div>
        <button type="submit">Register</button>
        <p class="bottom-text">
          By clicking the Register button, you agree to our
          <a href="#">Terms & Conditions</a> and <a href="#">Privacy Policy</a>
        </p>
      </form>
    </div>
    <footer>
      <p>Already have an account? <a href="login.jsp">Login Here</a></p>
    </footer>
  </div>
</body>
</html>
