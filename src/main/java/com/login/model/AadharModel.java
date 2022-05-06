package com.login.model;

public class AadharModel {
	protected int aadhar;
	protected String name;
	protected float age;
	protected String gender;
	protected String address;
	protected String state;
	protected String dob;
	
	public void setAadhar(int aadhar) {
		this.aadhar=aadhar;
	}
	public int getAadhar() {
		return aadhar;
	}
	public void setName(String name) {
		this.name=name;
	}
	public String getName() {
		return name;
	}
	public void setAge(float age) {
		this.age=age;
	}
	public float getAge() {
		return age;
	}
	public void setGender(String gender) {
		this.gender=gender;
	}
	public String getGender() {
		return gender;
	}
	public void setAddress(String aadress) {
		this.address=address;
	}
	public String getAddress() {
		return address;
	}
	public void setState(String state) {
		this.state=state;
	}
	public String getState() {
		return state;
	}
	public void setDOB(String dob) {
		this.dob=dob;
	}
	public String getDOB() {
		return dob;
	}
	
}
