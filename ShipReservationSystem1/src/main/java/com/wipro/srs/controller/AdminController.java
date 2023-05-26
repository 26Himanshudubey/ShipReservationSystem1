package com.wipro.srs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wipro.srs.entity.Admin;
import com.wipro.srs.service.AdminService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@GetMapping("/profile")
	public String showProfile(Model model,HttpSession session) {
		Admin admin = (Admin)session.getAttribute("admin");
		model.addAttribute("admin",admin);
		return "profile";
	}

	@GetMapping("/edit-profile")
	public String editProfile(Model model,HttpSession session) {
		Admin admin = (Admin)session.getAttribute("admin");
		model.addAttribute("admin",admin);
		return "editprofile";
	}
	
	@PostMapping("/edit-profile")
	public String editprofile(@RequestParam("email") String email, Admin admin,HttpSession session){
		adminService.updateAdmin(email, admin);
		session.setAttribute("admin", admin);
		return "redirect:/welcome";
	}
	
	@GetMapping("/login")
	public String loginPage(HttpSession session) {
		if(session.getAttribute("isLoggedIn")  != null && (Boolean) session.getAttribute("isLoggedIn")) {
			return "redirect:/welcome";
		}else {
			return "login";
		}
	}
	
	@PostMapping ("/login")
	public String login(ModelMap model , @RequestParam String email, @RequestParam String password , HttpSession session) {
		Admin admin = adminService.getAdmin(email,password);
		if(admin!=null) {
			session.setAttribute("admin", admin);
			session.setAttribute("isLoggedIn", true);
			return "redirect:/welcome";
		}else {
			model.put("errorMsg", "Invalid email or password");
			return "login";
		}
	}
	
	@GetMapping("/register")
	public String registerPage(Model model) {
		Admin admin = new Admin();
		model.addAttribute("admin",admin);
		return "register";
	}
	
	@PostMapping("/register")
	public String registerAdmin(@ModelAttribute("admin") Admin admin, ModelMap model) {
		Admin existing = adminService.getAdminByEmail(admin.getEmail());
		if(existing!=null) {
			model.addAttribute("errorMsg", "email is already existed");
			return "register";
		}
		adminService.CreateNewAdmin(admin);
		System.out.print(admin);
		model.put("successMsg", "Admin created Successfully");
		return "login";
	}
	
	@GetMapping("/welcome")
	public String welcomeAdmin(HttpSession session) {
		if(session.getAttribute("admin")==null) {
			return "redirect:/login";
		}
		return "welcome";
	}
	
	@PostMapping("/logout")
	public String logoutAdmin(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	@GetMapping("/editpassword")
	public String showeditpassword() {
		return "changePassword";
	}
	@PostMapping("editpassword")
	public String editpassword(@RequestParam String oldPassword, @RequestParam String newPassword,HttpSession session,ModelMap model) {
		boolean b = adminService.changePassword(oldPassword, newPassword, session);
		if(b) {
			model.addAttribute("success","password changed succesfully");
			return "changePassword";
		}else {
			model.addAttribute("errorMsg","some error occur");
			return "changePassword";
		}
	}
}
