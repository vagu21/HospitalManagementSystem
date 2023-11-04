package com.klu.service;

import com.klu.model.Admin;
import com.klu.model.Doctor;

public interface AdminService {
	public Admin checkadminlogin(String uname,String pwd);
	public String adddoctor(Doctor d);
}
