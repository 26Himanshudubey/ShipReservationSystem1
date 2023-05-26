package com.wipro.srs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wipro.srs.entity.Route;
import com.wipro.srs.service.routeService;

@Controller
public class RouteController {

	@Autowired
	private routeService routeService;
	
	@GetMapping(value="/add-route")
	public String showAddRoute(Model model) {
		model.addAttribute("route", new Route());
		return "route";
	}
	@RequestMapping(value = "/add-route", method = RequestMethod.POST)
	public String addRoute(@ModelAttribute("route") Route route) {
		routeService.saveRoute(route);
		return "redirect:/add-ship";
	}
}
