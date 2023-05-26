package com.wipro.srs.service;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.srs.ShipRepository.ScheduleRepository;
import com.wipro.srs.entity.Schedule;

@Service
public class ScheduleService {
	
	@Autowired
	private ScheduleRepository scheduleRepository;
	
	public List<Schedule> findAllSchedule(){
		return scheduleRepository.findAll();
	}
	
	public Schedule findScheduleById(int sId) {
		Schedule schedule = scheduleRepository.findById(sId).orElseThrow(()->new IllegalArgumentException("Invalid route Id"));
	    return schedule;
	}

	
	public Schedule saveSchedule(Schedule schedule) {
		return scheduleRepository.save(schedule);
	}
}
