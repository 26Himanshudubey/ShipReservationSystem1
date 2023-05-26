package com.wipro.srs.entity;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Admin {


@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)

private Integer AdminId;
private String name;
private String email;
private String password;

public Admin() {
	super();
}



public Admin(Integer adminId, String name, String email, String password) {
	super();
	AdminId = adminId;
	this.name = name;
	this.email = email;
	this.password = password;
}
public Integer getAdminId() {
	return AdminId;
}
public void setAdminId(Integer adminId) {
	AdminId = adminId;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}



}


