package com.klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.model.Appointment;

public interface AppointmentRepository extends JpaRepository<Appointment, Integer> {

}
