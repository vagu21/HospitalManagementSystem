package com.klu.service;

import java.util.List;

import com.klu.model.Appointment;


public interface AppointmentService {
	public String addAppointment(Appointment a);
	public List<Appointment> viewallappointments();
}
