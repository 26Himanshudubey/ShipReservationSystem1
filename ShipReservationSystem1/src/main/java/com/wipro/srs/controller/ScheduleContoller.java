package com.wipro.srs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wipro.srs.entity.Schedule;
import com.wipro.srs.service.ScheduleService;

@Controller
public class ScheduleContoller {

	
	@Autowired
	private ScheduleService scheduleService;
	
	@GetMapping(value = "/add-schedule")
	public String showAddSchedule(Model  model) {
		model.addAttribute("schedules",new Schedule());
		return "schedule";
			
	}
	@RequestMapping(value = "/add-schedule",method =RequestMethod.POST)
	public String addRoute (@ModelAttribute("schedule") Schedule schedule) {
		scheduleService.saveSchedule(schedule);
		return "redirect:/add-ship";
	}
}
	
