package com.wipro.srs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.srs.ShipRepository.CustomerRepository;
import com.wipro.srs.entity.Customer;

@Service
public class CustomerService {
	
	@Autowired
	private CustomerRepository customerRepository;
	
	public List<Customer>getAllcustomer(){
		return customerRepository.findAll();
		
	}
	

}
