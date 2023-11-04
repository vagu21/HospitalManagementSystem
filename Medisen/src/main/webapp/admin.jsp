<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link type="text/css" rel="stylesheet" href="css/styles.css">
  <link type="text/css" rel="stylesheet" href="css/styless.css">
  <link type="text/css" rel="stylesheet" href="css/admincss.css">
  
  
 
  
  
  <title>Admin Login</title>
</head>
<body>
  
  
  <span class="blink">
<h3 align=center style="color:red" >${message}</h3>
</span> 
  <div id="container">
    <div class="form-wrap">
      <h1>Admin Login</h1>
      <p>Enter your admin credentials to log in</p>
      <form action="checkadminlogin" method="post">
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" name="username" id="username" required>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" name="password" id="password" required>
        </div>
        <button type="submit">Login</button>
      </form>
    </div>
  </div>
</body>
</html>