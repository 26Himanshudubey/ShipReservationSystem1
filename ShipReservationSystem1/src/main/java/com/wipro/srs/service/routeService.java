package com.wipro.srs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.srs.ShipRepository.RouteRepository;
import com.wipro.srs.entity.Route;

@Service
public class routeService {
	
	@Autowired
	private RouteRepository routeRepository;
	
	public List<Route> findAllRoute(){
		return routeRepository.findAll();
	}
	
	public Route findRouteById(int routeId) {
		Route Route = routeRepository.findById(routeId).orElse(null);
		return Route;
	}
	public Route saveRoute(Route Route) {
		return routeRepository.save(Route);
	}
}
