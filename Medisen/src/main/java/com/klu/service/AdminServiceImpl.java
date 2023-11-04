package com.klu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.model.Admin;
import com.klu.model.Doctor;
import com.klu.repository.AdminRepository;
import com.klu.repository.DoctorRepository;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private DoctorRepository doctorRepository;
	@Override
	 public Admin checkadminlogin(String uname, String pwd) 
	 {
	  return adminRepository.checkadminlogin(uname, pwd);
	 }
	@Override
	public String adddoctor(Doctor d) {
	doctorRepository.save(d);
		return "Doctor added Successfully";
	}
}
