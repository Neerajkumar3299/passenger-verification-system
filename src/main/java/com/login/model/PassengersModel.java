package com.login.model;

public class PassengersModel {
	private String name;
	private String gender;
	private float age;
	private int aadhar_no;
	private int verified;
	private String compartment;
	private int train_no;
	
	
	public void setName(String name) {
		this.name=name;
	}
	public String getName() {
		return name;
	}
	public void setGender(String gender) {
		this.gender=gender;
	}
	public String getGender() {
		return gender;
	}
	public void setAge(float age) {
		this.age=age;
	}
	public float getAge() {
		return age;
	}
	public void setAadhar(int aadhar) {
		aadhar_no=aadhar;
	}
	public int getAadhar() {
		return aadhar_no;
	}
	public void setVerification(int verified) {
		this.verified=verified;
	}
	public int getVerification() {
		return verified;
	}
	public void setCompartment(String compartment) {
		this.compartment=compartment;
	}
	public void setTrain(int train) {
		train_no=train;
	}
	public int getTrain() {
		return train_no;
	}
}
