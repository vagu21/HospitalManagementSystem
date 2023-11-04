<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link type="text/css" rel="stylesheet" href="css/signupstyle.css">
  <link type="text/css" rel="stylesheet" href="css/styless.css">
   <link type="text/css" rel="stylesheet" href="css/styles.css">
  <title>ADD Doctor</title>
</head>
<body>
  
  <div id="container">
    <div class="form-wrap">
      <h1>ADD DOCTOR</h1>
      <p>Fill out the form to add doctor</p>
      <form action="adddoctor" method="post">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" name="name" id="name" required>
        </div>
        <div class="form-group">
          <label for="department">Department</label>
          <input type="text" name="department" id="department" required>
        </div>
        <div class="form-group">
          <label for="contact">Contact</label>
          <input type="text" name="contact" id="contact" required>
        </div>
        <button type="submit">ADD</button>
        <p class="bottom-text">
          By clicking the ADD button, you agree to our
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
