package com.klu.model;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "appointment_table")
public class Appointment {

	  @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  int pid;
	  
	 

	String name;
	  @Column(nullable = false,unique = true)
	  String email;
	 
	  String contactno;
	  String symptom;
	  String time;
	
	  
	  
	  public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}

		  public String getName() {
		    return name;
		  }
		  public void setName(String name) {
		    this.name = name;
		  }
		  public String getEmail() {
		    return email;
		  }
		  public void setEmail(String email) {
		    this.email = email;
		  }
		  
		  public String getContactno() {
		    return contactno;
		  }
		  public void setContactno(String contactno) {
		    this.contactno = contactno;
		  }
		  public String getSymptom() {
			    return symptom;
			  }
			  public void setSymptom(String symptom) {
			    this.symptom = symptom;
			  }
		 public String getTime() {
			 return "time";
		 }
		 public void setTime(String time) {
			 this.time=time;
		 }
		  
		 
		  @Override
		  public String toString() {
		    return "Patient [ name=" + name + ", email=" + email + ", contactno="
		        + contactno + ",symtom="+symptom+",time="+time+  "]";
		  }
		  
}
