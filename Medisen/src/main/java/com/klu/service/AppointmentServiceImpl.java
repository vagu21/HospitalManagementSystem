package com.klu.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.model.Appointment;
import com.klu.model.Doctor;
import com.klu.repository.AppointmentRepository;
@Service
public class AppointmentServiceImpl implements AppointmentService{
	@Autowired
	  private AppointmentRepository ar;
	@Override
	  public String addAppointment(Appointment a) {
	    ar.save(a);
	    return "Patient Registered Successfully";
	  }

@Override
public List<Appointment> viewallappointments() {
	return ar.findAll();
}
	
}
