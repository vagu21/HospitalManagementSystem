<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link type="text/css" rel="stylesheet" href="css/signupstyle.css">
  <link type="text/css" rel="stylesheet" href="css/styless.css">
   <link type="text/css" rel="stylesheet" href="css/styles.css">
  <title>Appointment Form Using HTML/CSS</title>
</head>
<body>
  
  <div id="container">
    <div class="form-wrap">
      <h1>Appointment</h1>
      <p>Fill out the form to book Appointment</p>
      <form action="appointment" method="post">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" name="name" id="name" required>
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" name="email" id="email" required>
        </div>
        
        <div class="form-group">
          <label for="contact">Contact</label>
          <input type="text" name="contactno" id="contactno" required>
        </div>
        <div class="form-group">
          <label for="symptom">Symptoms</label>
          <input type="text" name="symptom" id="symptom" required>
        </div>
        
        <div class="form-group">
          <label for="time">Time of the appointment</label>
          <input type="time" name="time" id="time" required>
        </div>
       <button type="submit">Book Appointment</button>
        
      </form>
    </div>
    
  </div>
</body>
</html>
