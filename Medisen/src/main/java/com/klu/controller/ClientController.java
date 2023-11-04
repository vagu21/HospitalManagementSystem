package com.klu.controller;
import com.klu.model.RecaptchaResponse; 

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.model.Admin;
import com.klu.model.Appointment;
import com.klu.model.Doctor;
import com.klu.model.Patient;
import com.klu.service.AdminService;
import com.klu.service.AppointmentService;
import com.klu.service.EmailService;
import com.klu.service.PatientService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
  @Autowired
  private PatientService ps;
  
  @Autowired
  private AppointmentService as;
  
  @Autowired
  private AdminService adminService;
  
  @Autowired
  private EmailService emailService;
  
  @GetMapping("/")
  public String main() {
    return "index";
  }
  
  @GetMapping("login")
  public String login_page() {
    return "login";
  }
  
  @GetMapping("myappointments")
  public String appointments() {
	  return "viewallappointments";
  }
  @PostMapping("checklogin")
  public ModelAndView checkLogin(HttpServletRequest req) {
    ModelAndView mv=new ModelAndView();
    String email=req.getParameter("email");
    String password=req.getParameter("password");
    Patient p=ps.checkPatientLogin(email, password);
    if(p!=null)
    {
     HttpSession session = req.getSession();
     session.setAttribute("cname", p.getName());     
     
     mv.setViewName("userhome");
    }
    else {
     mv.setViewName("login");
     mv.addObject("Message", "Login Failed");
    }
    return mv;
  }
  
  @GetMapping("userhome")
  public ModelAndView customerhome(HttpServletRequest request)
  {
   ModelAndView mv = new ModelAndView();
   mv.setViewName("userhome");
   
   HttpSession session = request.getSession();
   String cname = (String)session.getAttribute("cname");
   
   mv.addObject("cname", cname);
   
   return mv;
  }
  
  @GetMapping("registration")
  public String registration_page() {
    return "registration";
  }
  @GetMapping("contact")
  public String contactus() {
    return "contact";
  }
  @GetMapping("about")
  public String aboutus() {
    return "about";
  }
  
  @GetMapping("services")
  public String services_page() {
	  return "services";
  }
  
  @PostMapping("insertpat")
  public ModelAndView insertpatient(HttpServletRequest req) {
    
    ModelAndView mv=new ModelAndView();
    String msg=null;
    try {
      String pname=req.getParameter("name");
      String pemail=req.getParameter("email");
      String ppassword=req.getParameter("password");
      String pcontactno=req.getParameter("contactno");
      String pgender=req.getParameter("gender");
      int page=Integer.parseInt(req.getParameter("age"));
      
      Patient p=new Patient();
      p.setName(pname);
      p.setEmail(pemail);
      p.setPassword(ppassword);
      p.setContactno(pcontactno);
      p.setGender(pgender);
      p.setAge(page);
      
      msg=ps.addPatient(p);
      emailService.sendEmail(p.getEmail(),"Registered Successfully ","Subject: Welcome to Medisen Hospitals - Your Trusted Healthcare Destination\r\n"
      		+ "\r\n"
      		+ "Dear User,\r\n"
      		+ "\r\n"
      		+ "We are thrilled to welcome you to [Hospital Name]'s online community and extend our warmest greetings to you! Thank you for choosing us as your healthcare destination. Your well-being is our top priority, and we are committed to providing you with the highest quality healthcare services and a seamless online experience.\r\n"
      		+ "\r\n"
      		+ "Here's what you can look forward to as a registered member of our website:\r\n"
      		+ "\r\n"
      		+ "1. Personalized Healthcare Services: With your account, you can access a range of personalized healthcare services. Whether you're scheduling appointments, reviewing your medical records, or communicating with our healthcare professionals, our website offers a convenient and secure platform for all your healthcare needs.\r\n"
      		+ "\r\n"
      		+ "2. Easy Appointment Booking: Booking appointments has never been easier. You can schedule appointments with your preferred doctors at your convenience, reducing wait times and ensuring you receive timely care.\r\n"
      		+ "\r\n"
      		+ "3. Access to Health Resources: Our website provides a wealth of health resources, including articles, videos, and educational materials, to help you stay informed about your health and well-being.\r\n"
      		+ "\r\n"
      		+ "4. Notifications and Reminders: You will receive timely reminders for upcoming appointments and important healthcare updates to keep you on track with your healthcare journey.\r\n"
      		+ "\r\n"
      		+ "5. Secure and Confidential: Rest assured that your personal and medical information is secure and confidential. We prioritize your privacy and data protection.\r\n"
      		+ "\r\n"
      		+ "6. Feedback and Support: We value your feedback. If you have any questions, concerns, or suggestions, our dedicated support team is here to assist you.\r\n"
      		+ "\r\n"
      		+ "To get started, simply log in to your account  and explore the wide range of features available at your fingertips.\r\n"
      		+ "\r\n"
      		+ "At Medisen Hospitals, we are continuously striving to improve our services and provide you with the best possible healthcare experience. Your trust in us is greatly appreciated, and we are honored to be your healthcare provider.\r\n"
      		+ "\r\n"
      		+ "Thank you for choosing Medisen Hospitals. We are here to support you on your journey towards better health, and we look forward to serving you.\r\n"
      		+ "\r\n"
      		+ "If you have any questions or need assistance, please feel free to reach out to our customer support team at medisenhospitals@gmail.com.\r\n"
      		+ "\r\n"
      		+ "Once again, welcome to our online community, and here's to a healthy and prosperous future!\r\n"
      		+ "\r\n"
      		+ "Warm regards,\r\n"
      		+ "Medisen Hospitals");
      mv.setViewName("login");
      mv.addObject("message",msg);
    }catch(Exception e) {
    	
      msg="Patient Registration Not Successfull";
      mv.setViewName("registration");
      mv.addObject("message",msg);
    }
    return mv;
    
  }
  
  @GetMapping("appointment")
  public String viewAllAppointments() {
    return "viewallappointments";
  }
  
  @PostMapping("appointment")
  public ModelAndView Appointment(HttpServletRequest req) {
    
    ModelAndView mv=new ModelAndView();
    String msg=null;
    try {
      String pname=req.getParameter("name");
      String pemail=req.getParameter("email");

      String pcontactno=req.getParameter("contactno");
      String psymptom=req.getParameter("symptom");
      String ptime=req.getParameter("time");
      
     
      Appointment a=new Appointment();
      a.setName(pname);
      a.setEmail(pemail);
      
      a.setContactno(pcontactno);
      a.setSymptom(psymptom);
      a.setTime(ptime);
      
      emailService.sendEmail(a.getEmail(),"Appointment Successful","Subject: Confirmation of Appointment \r\n"
      		+ "\r\n"
      		+ "Dear patient,\r\n"
      		+ "\r\n"
      		+ "I hope this email finds you well. I am writing to confirm my upcoming appointment with you at [Medical Clinic/Hospital Name] on [Date] at [Time]. My appointment was scheduled on [Date when the appointment was scheduled] for [Reason for the appointment].\r\n"
      		+ "\r\n"
      		+ "I want to ensure that everything is in order, and I look forward to meeting with you. Please let me know if there have been any changes to the appointment time or if any additional preparations are needed on my part.\r\n"
      		+ "\r\n"
      		+ "If you require any specific information from me or if there are any pre-appointment instructions, please do not hesitate to inform me. I want to make sure I am fully prepared for our appointment.\r\n"
      		+ "\r\n"
      		+ "Thank you for your time and attention. I appreciate your dedication to providing me with the best healthcare possible. I am confident that our meeting will be a valuable and constructive experience.\r\n"
      		+ "\r\n"
      		+ "If, for any reason, I need to reschedule or cancel the appointment, I will notify your office as soon as possible.\r\n"
      		+ "\r\n"
      		+ "Looking forward to our meeting on 4/11/2023.\r\n"
      		+ "\r\n"
      		+ "Sincerely,\r\n"
      		+ "Medisen");
      
      msg=as.addAppointment(a);
      System.out.println("appointment");
      mv.setViewName("viewallappointments");
      mv.addObject("message",msg);
    }catch(Exception e) {
      msg="Patient Registration Not Successfull";
      mv.setViewName("notsuccess");
      mv.addObject("message",msg);
    }
    return mv;
    
  }
  
  @GetMapping("admin")
  public ModelAndView admin()
  {
   ModelAndView mv = new ModelAndView();
   mv.setViewName("admin");
   return mv;
  }
  
  @PostMapping("checkadminlogin")
  public ModelAndView checkadminlogin(HttpServletRequest request)
  {
   String username = request.getParameter("username");
   String password = request.getParameter("password");
   
   Admin a = adminService.checkadminlogin(username, password);
   ModelAndView mv = new ModelAndView();
   if(a!=null) 
   {
    mv.setViewName("adminhome");
   }
   else {
    mv.setViewName("admin");
    mv.addObject("message", "LoginFailed");
   }
   return mv;
   
  }
  
//  @Value("6Lds8fAoAAAAAJaF5DFSRXW0dBIGXo9uLMqsdbxN")
//  private String recaptchaSecret;
//
//  @PostMapping("checkadminlogin")
//  public ModelAndView checkAdminLogin(HttpServletRequest request, @RequestParam("g-recaptcha-response") String captchaResponse) {
//      String username = request.getParameter("username");
//      String password = request.getParameter("password");
//
//      // Your existing login logic - checking the credentials
//      Admin a = adminService.checkadminlogin(username, password);
//
//      ModelAndView mv = new ModelAndView();
//
//      // Perform reCAPTCHA verification
//      String url = "https://www.google.com/recaptcha/api/siteverify";
//      String params = "?secret=" + recaptchaSecret + "&response=" + captchaResponse;
//      String fullUrl = url + params;
//
//      RestTemplate restTemplate = new RestTemplate();
//      RecaptchaResponse response = restTemplate.postForObject(fullUrl, null, RecaptchaResponse.class);
//
//      if (response != null && response.isSuccess() && a != null) {
//          // Both reCAPTCHA and login credentials are valid
//          mv.setViewName("adminhome");
//      } else {
//          // reCAPTCHA or login failed
//          mv.setViewName("admin");
//          mv.addObject("message", "LoginFailed");
//      }
//      return mv;
//  }

  
  
  
  
  
  
  
  
  
  
  
  @PostMapping("adddoctor")
  public ModelAndView addights(HttpServletRequest request) {
   ModelAndView mv = new ModelAndView();
   String msg = null;
   try
   {
    String name = request.getParameter("name");
    String department = request.getParameter("department");
    String contact = request.getParameter("contact");      
    
    Doctor d = new Doctor();
    
    d.setName(name);
    d.setDepartment(department);
    d.setContact(contact);    
    
    msg = adminService.adddoctor(d);
    mv.setViewName("adddoctor");
    mv.addObject("message",msg);
    
    
   }
   catch(Exception e)
   {
    mv.setViewName("adminhome");
    msg = e.getMessage();
    mv.addObject("message",msg);
    
   }
   return mv;
   
  }
  @GetMapping("viewalldoctors")
  public ModelAndView viewalldoctors()
  {
   ModelAndView mv = new ModelAndView();
   mv.setViewName("viewalldoctors");
   
   List<Doctor> doctor = ps.viewalldoctors();
   mv.addObject("doctor", doctor);
   return mv;
  }
  @GetMapping("viewallappointments")
  public ModelAndView viewallappointments()
  {
   ModelAndView mv = new ModelAndView();
   mv.setViewName("viewallappointments");
   
   List<Appointment> appointment = as.viewallappointments();
   mv.addObject("appointment", appointment);
   return mv;
  }
}
