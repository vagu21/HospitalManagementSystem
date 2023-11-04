<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %> -->
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/stylesss.css">
        <link rel="stylesheet" href="css/viewalldoctors.css">
    <title>Doctors</title>
    <link type="text/css" rel="stylesheet" href="css/styles.css">
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
   <div class="search-bar">
    <input type="text" id="search-input" placeholder="Search Doctor">
    <button id="search-button">Search</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/doctor_1.png" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Dr. John Doe</h2>
      <p class="doctor-degree">MD, Cardiology</p>
      <p class="doctor-specialization" >Cardiology Department</p>
    </div>
     <button class="book-btn" data-doctor="1">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/rakesh.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Rakesh</h2>
      <p class="doctor-degree">MD, Neurology</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
     <button class="book-btn" data-doctor="2">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/vamshi.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Vamshi</h2>
      <p class="doctor-degree">MD, Pulmonology</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
     <button class="book-btn" data-doctor="3">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/nihar.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Nihar</h2>
      <p class="doctor-degree">MD, Cardiology</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
     <button class="book-btn" data-doctor="4">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/prasad.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Prasad</h2>
      <p class="doctor-degree">MD, Ortho</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
     <button class="book-btn" data-doctor="5">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/rakesh.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Lohith</h2>
      <p class="doctor-degree">MD, Neurology</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
     <button class="book-btn" data-doctor="6">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/rekha.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Rekha</h2>
      <p class="doctor-degree">MD, Neurology</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
    <button class="book-btn" data-doctor="7">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/rupa.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Rupa</h2>
      <p class="doctor-degree">MD, Neurology</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
     <button class="book-btn" data-doctor="8">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/srinivas.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Srinivas</h2>
      <p class="doctor-degree">MD, Neurology</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
     <button class="book-btn" data-doctor="9">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/sukesh.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Sukesh</h2>
      <p class="doctor-degree">MD, Neurology</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
     <button class="book-btn" data-doctor="10">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/sundeep.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Sundeep</h2>
      <p class="doctor-degree">MD, Neurology</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
   <button class="book-btn" data-doctor="11">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/srinivas.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Poojith</h2>
      <p class="doctor-degree">MD, Neurology</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
    <button class="book-btn" data-doctor="12">Book an Appointment</button>
  </div>
  <div class="doctor-card">
    <img src="img/doctor/anuj.jpg" alt="Doctor Photo" class="doctor-photo">
    <div class="doctor-info">
      <h2 class="doctor-name">Anuj</h2>
      <p class="doctor-degree">MD, Neurology</p>
      <p class="doctor-specialization">Cardiology Department</p>
    </div>
     <button class="book-btn" data-doctor="13">Book an Appointment</button>
  </div>
  
<script>

const bookButtons = document.querySelectorAll('.book-btn');
const searchInput = document.getElementById('search-input');
const searchButton = document.getElementById('search-button');
const doctorCards = document.querySelectorAll('.doctor-card');

searchButton.addEventListener('click', () => {
    const searchQuery = searchInput.value.toLowerCase();
    doctorCards.forEach(card => {
      const doctorName = card.querySelector('.doctor-name').textContent.toLowerCase();
      const doctorSpecialization = card.querySelector('.doctor-specialization').textContent.toLowerCase();
      
      if (doctorName.includes(searchQuery) || doctorSpecialization.includes(searchQuery)) {
        card.style.display = 'flex';
      } else {
        card.style.display = 'none';
      }
    });
  });
  

bookButtons.forEach(button => {
    button.addEventListener('click', function() {
        const doctorIndex = this.getAttribute('data-doctor');
        window.location.href = "appointment.jsp?doctor=" + doctorIndex;
    });
});


</script>

</body>
</html>

   