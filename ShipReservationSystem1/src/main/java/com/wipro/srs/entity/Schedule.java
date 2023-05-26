package com.wipro.srs.entity;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
@Entity
public class Schedule {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sid;
	private LocalDate date;
	private LocalTime time;
	@OneToMany(mappedBy = "schedule")
	private List<Ship> ships;
	
	public Schedule() {
		super();
	}
	
	public Schedule(int sid, LocalDate date, LocalTime time) {
		super();
		this.sid = sid;
		this.date = date;
		this.time = time;
	}
	
	
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	public LocalTime getTime() {
		return time;
	}
	public void setTime(LocalTime time) {
		this.time = time;
	}
	
	
	
}
