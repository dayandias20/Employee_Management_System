package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Employee")
public class Employee {

	@Id
	@GeneratedValue
	private int eid;
	private String name;
	private String lName;
	private String gender;
	private String address;
	private String mobile;
	@Column(name="Email")
	private String email;
	
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Employee(int eid, String name, String gender, String address, String email, String mobile) {
		super();
		this.eid = eid;
		this.name = name;
		this.gender = gender;
		this.address = address;
		this.email = email;
		this.mobile = mobile;
	}

	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", name=" + name + ", gender=" + gender + ", address=" + address + ", email="
				+ email + "]";
	}
	
	
}
