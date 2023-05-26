package com.wipro.srs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.srs.ShipRepository.ShipRepository;
import com.wipro.srs.entity.Ship;

@Service
public class ShipService {
	
	@Autowired
	private ShipRepository shipRepository;

	public List<Ship> findAll() {
		// TODO Auto-generated method stub
		return shipRepository.findAll();
	}
	
	public Ship getShipById(Long id) {
		return shipRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid ship id" + id));
	}
	
	public Ship updateShip(Long id,Ship ship) {
		Ship updateShip = getShipById(id);
		updateShip.setName(ship.getName());
		updateShip.setCapacity(ship.getCapacity());
		updateShip.setFare(ship.getFare());
		return shipRepository.save(updateShip);
	}
	
	public void deleteById(Long id) {
		shipRepository.deleteById(id);
	}

	public Ship saveShip(Ship ship) {
		// TODO Auto-generated method stub
		return shipRepository.save(ship);
	}
	
	

}
