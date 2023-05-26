package com.wipro.srs.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.srs.ShipRepository.BookingRepository;
import com.wipro.srs.entity.Booking;

@Service
public class BookingService {
		
	@Autowired
	private BookingRepository bookingRepository;
	
	public List<Booking> findAllBookings(){
		return bookingRepository.findAll();
		
	}
	public List<Booking> findAllByShipIdAndBookingDate(String shipId, LocalDate bookingDate){
		return bookingRepository.findAllByShipIdAndBookingDate(shipId, bookingDate);
	}
	
}
