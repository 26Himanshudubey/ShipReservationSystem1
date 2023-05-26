package com.wipro.srs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.srs.ShipRepository.AdminRepository;
import com.wipro.srs.entity.Admin;

import jakarta.servlet.http.HttpSession;
@Service
public class AdminService {

	@Autowired
	private AdminRepository adminRepository;
	public Admin getAdmin(String email,String password) {
		Admin admin = adminRepository.findByEmail(email);
		if(admin!=null && admin.getPassword().equals(password))
			return admin;
		else
			return null;
	}
	public Admin getAdmin(String email) {
		Admin admin = adminRepository.findByEmail(email);
		return admin;
	}
	public String  CreateNewAdmin (Admin admin) {
		adminRepository.save(admin);
		return "";
	}
	public Admin updateAdmin(String email, Admin admin) {
		Admin updateAdmin = adminRepository.findByEmail(email);
		updateAdmin.setName(admin.getName());
		updateAdmin.setEmail(admin.getEmail());
		updateAdmin.setPassword(admin.getPassword());
		return adminRepository.save(updateAdmin);
	}
	public boolean changePassword(String oldPassword,String newPassword, HttpSession session) {
		Admin admin = (Admin)session.getAttribute("admin");
		System.out.println(admin);
		if(admin!=null) {
			if(admin.getPassword().equals(oldPassword)) {
				admin.setPassword(newPassword);
				adminRepository.save(admin);
				return true;
			}
		}
		return false;
	}
	public Admin getAdminByEmail(String email) {
		// TODO Auto-generated method stub
		Admin admin = adminRepository.findByEmail(email);
		return admin;
	}
}
