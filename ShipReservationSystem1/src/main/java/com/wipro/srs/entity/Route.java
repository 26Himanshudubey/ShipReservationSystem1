package com.wipro.srs.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
@Entity
public class Route {
	
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int rid;
private String source;
private String destination;
private int distance;
@OneToMany(mappedBy = "route")
private List<Ship> ships;


public Route(int rid, String source, String destination, int distance) {
	super();
	this.rid = rid;
	this.source = source;
	this.destination = destination;
	this.distance = distance;
}
public Route() {
	// TODO Auto-generated constructor stub
	super();
}
public int getRid() {
	return rid;
}
public void setRid(int rid) {
	this.rid = rid;
}
public String getSource() {
	return source;
}
public void setSource(String source) {
	this.source = source;
}
public String getDestination() {
	return destination;
}
public void setDestination(String destination) {
	this.destination = destination;
}
public int getDistance() {
	return distance;
}
public void setDistance(int distance) {
	this.distance = distance;
}






}


