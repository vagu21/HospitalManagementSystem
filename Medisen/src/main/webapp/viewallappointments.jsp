<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %> -->
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/stylesss.css">
        <link rel="stylesheet" href="css/viewalldoctors.css">
    <title>Appointments</title>
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

    
    <section class="section__container flight-schedule__container">
        <h1 class="section__header">My Appointments</h1>
        <table class="flight-table" align="center" border="8">
            <thead>
                <tr>
                    <td>Name</td>
                    <td>Symptoms</td>
                    <td>Time</td>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${appointment}"  var="appointment"> 
             <tr> 
              <td><c:out value="${appointment.name}" /></td> 
              <td><c:out value="${appointment.symptom}" /></td> 
              <td><c:out value="${appointment.time}" /></td> 
              <td><a href="https://pages.razorpay.com/pl_MwO0HRGnWjAcEF/view">Pay Now</a></td>
             
 
             </tr> 
                </c:forEach> 
            </tbody>
        </table>
    </section>