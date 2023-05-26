package com.wipro.srs.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wipro.srs.entity.Booking;



@Controller
public class BookingController {

	@Autowired
	private com.wipro.srs.service.BookingService BookingService;
	
	
	@GetMapping("/showBooking")
	public String showBookings(@RequestParam(value = "bookingDate",required=false ) LocalDate bookingDate,
			@RequestParam(name = "shipId" , required =false) String shipId, Model model) {
	if(bookingDate == null) {
		bookingDate = LocalDate.now();
	}
	List<Booking> bookings;
	if(bookingDate != null && shipId!=null) {
		bookings = BookingService.findAllByShipIdAndBookingDate(shipId,bookingDate);
	}else {
		bookings = BookingService.findAllBookings();
	}
	model.addAttribute("bookings",bookings);
	model.addAttribute("bookingDate",bookingDate);
	
		return "booking";
}
}
