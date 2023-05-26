package com.wipro.srs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wipro.srs.entity.Schedule;
import com.wipro.srs.entity.Ship;
import com.wipro.srs.entity.Route;
import com.wipro.srs.service.ScheduleService;
import com.wipro.srs.service.ShipService;
import com.wipro.srs.service.routeService;

@Controller
public class ShipController {
	
	@Autowired
	private ShipService shipService;
	@Autowired
	private routeService routeService;
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping("/view-ship")
	public ModelAndView getAllShips() {
		List<Ship> ship = shipService.findAll();
		
		ModelAndView mAV = new ModelAndView ("viewship");
		mAV.addObject("ship",ship);
		return mAV;
	}
	@RequestMapping(value = "/add-ship")
	public String showAddShipDetail(Model model) {
		List<Route> route = routeService.findAllRoute();
		List<Schedule> schedule = scheduleService.findAllSchedule();
		model.addAttribute("routes",route);
		model.addAttribute("schedules",schedule);
		model.addAttribute("ship",new Ship());
		return "addship";

	}
	@RequestMapping(value = "/add-ship",method = RequestMethod.POST)
	public String addShip(@ModelAttribute("ship") Ship ship,@RequestParam("rId")int rId,@RequestParam("sId")int sId) {
		Route route = routeService.findRouteById(rId);
		Schedule schedule = scheduleService.findScheduleById(sId);
		ship.setRoute(route);
		ship.setSchedule(schedule);
		shipService.saveShip(ship);
		return "redirect:/view-ship";
	}
	@RequestMapping(value = "/update-ship/{id}")
	public String showUpdateShipDetail(@PathVariable Long id,Model model) {
		Ship ship = shipService.getShipById(id);
		List<Route> route = routeService.findAllRoute();
		List <Schedule> schedule = scheduleService.findAllSchedule();
		model.addAttribute("ship",ship);
		model.addAttribute("route",route);
		model.addAttribute("schedule",schedule);
		return "updateship";
		}
	@RequestMapping(value = "/update-ship/{id}",method = RequestMethod.POST)
	public String updateShip (@PathVariable Long id, @ModelAttribute("ship") Ship ship) {
		
		shipService.updateShip(id, ship);
		return "redirect:/view-ship";
	}
	
	@RequestMapping(value = "/delete-ship/{id}")
	public String deleteShip(@PathVariable Long id) {
		shipService.deleteById(id);
		return "redirect:/view-ship";
	}
	
	
}
	
	

 