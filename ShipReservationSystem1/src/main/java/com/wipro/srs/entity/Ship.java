package com.wipro.srs.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Ships")
public class Ship {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private int capacity;
    private Long fare;
    @ManyToOne
    @JoinColumn(name="sId")
    private Schedule schedule;
    @ManyToOne
    @JoinColumn(name="rId")
    private Route route;
	public Ship() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ship(Long id, String name, int capacity, Long fare) {
		super();
		this.id = id;
		this.name = name;
		this.capacity = capacity;
		this.fare = fare;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public Long getFare() {
		return fare;
	}
	public void setFare(Long fare) {
		this.fare = fare;
	}
	public Schedule getSchedule() {
		return schedule;
	}
	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}
	public Route getRoute() {
		return route;
	}
	public void setRoute(Route route) {
		this.route = route;
	}
    
    
}
