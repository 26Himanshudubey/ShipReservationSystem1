package com.wipro.srs.controller;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wipro.srs.entity.Customer;
import com.wipro.srs.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/customer")
	public String getAllCustomer(Model model) {
		List<Customer> customers = customerService.getAllcustomer();
		model.addAttribute("customers" , customers);
		return "customer";
	}
	
	
}
