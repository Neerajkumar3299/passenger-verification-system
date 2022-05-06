package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.login.model.PassengersModel;

public class PassengerListDao {
	public List<PassengersModel> getPassengers(int train_no,String compartment) {
		List<PassengersModel> passenger=new ArrayList<PassengersModel>();
		try {
			String url="jdbc:mysql://localhost:3306/railwaymanagementsystem";			
			String query="select * from passenger where train_no=? and compartment=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,"root","");
			PreparedStatement stmt=con.prepareStatement(query);
			stmt.setInt(1, train_no);
			stmt.setString(2, compartment);
			ResultSet rs=stmt.executeQuery();
			
			
			if(rs.next()) {
				do {
				    System.out.println(rs.getString("name"));
					PassengersModel ps=new PassengersModel();
					ps.setName(rs.getString("name"));
					ps.setGender(rs.getString("gender"));
					ps.setAge(rs.getFloat("age"));
					ps.setAadhar(rs.getInt("aadhar_card"));
					ps.setCompartment(rs.getString("compartment"));
					ps.setVerification(rs.getInt("verified"));
					ps.setTrain(rs.getInt("train_no"));
					
					passenger.add(ps);
					
				}while(rs.next());
			}
			else {
				System.out.println("No Passenger present");
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return passenger;
	}
	
	public List<PassengersModel> getPassengerVerifiedByTc(String username,int id) {
		List<PassengersModel> passenger=new ArrayList<PassengersModel>();
		try {
			LocalDate current_date=java.time.LocalDate.now();
		
			String url="jdbc:mysql://localhost:3306/railwaymanagementsystem";			
			String query="select * from passenger where verified_by=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,"root","");
			PreparedStatement stmt=con.prepareStatement(query);
			stmt.setInt(1,id);
			ResultSet rs=stmt.executeQuery();
			
			
			if(rs.next()) {
				do {
					//System.out.println("name"+rs.getString("name")+" "+"gender:"+rs.getString("gender"));
					PassengersModel ps=new PassengersModel();
					ps.setName(rs.getString("name"));
					ps.setGender(rs.getString("gender"));
					ps.setAge(rs.getFloat("age"));
					ps.setAadhar(rs.getInt("aadhar_card"));
					ps.setCompartment(rs.getString("compartment"));
					ps.setVerification(rs.getInt("verified"));
					ps.setTrain(rs.getInt("train_no"));
					
					passenger.add(ps);
					
				}while(rs.next());
			}
			else {
				System.out.println("No Passenger present");
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return passenger;
	}
	
	// Get Verified Passengers
	public List<PassengersModel> getVerifiedPassengers(int train_no,String compartment) {
		List<PassengersModel> passenger=new ArrayList<PassengersModel>();
		try {
			String url="jdbc:mysql://localhost:3306/railwaymanagementsystem";			
			String query="select * from passenger where verified=? and train_no=? and compartment=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,"root","");
			PreparedStatement stmt=con.prepareStatement(query);
			stmt.setInt(1, 1);
			stmt.setInt(2,train_no);
			stmt.setString(3, compartment);
			ResultSet rs=stmt.executeQuery();
			
			
			if(rs.next()) {
				do {
					//System.out.println("name"+rs.getString("name")+" "+"gender:"+rs.getString("gender"));
					PassengersModel ps=new PassengersModel();
					ps.setName(rs.getString("name"));
					ps.setGender(rs.getString("gender"));
					ps.setAge(rs.getFloat("age"));
					ps.setAadhar(rs.getInt("aadhar_card"));
					ps.setCompartment(rs.getString("compartment"));
					ps.setVerification(rs.getInt("verified"));
					ps.setTrain(rs.getInt("train_no"));
					
					passenger.add(ps);
					
				}while(rs.next());
			}
			else {
				System.out.println("No Passenger present");
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return passenger;
	}
	// Get UnVerified Passengers
		public List<PassengersModel> getUnverifiedPassengers(int train_no,String compartment) {
			List<PassengersModel> passenger=new ArrayList<PassengersModel>();
			try {
				String url="jdbc:mysql://localhost:3306/railwaymanagementsystem";			
				String query="select * from passenger where verified=? and train_no=? and compartment=?";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url,"root","");
				PreparedStatement stmt=con.prepareStatement(query);
				stmt.setInt(1, 0);
				stmt.setInt(2, train_no);
				stmt.setString(3, compartment);
				ResultSet rs=stmt.executeQuery();
				
				
				if(rs.next()) {
					do {
						//System.out.println("name"+rs.getString("name")+" "+"gender:"+rs.getString("gender"));
						PassengersModel ps=new PassengersModel();
						ps.setName(rs.getString("name"));
						ps.setGender(rs.getString("gender"));
						ps.setAge(rs.getFloat("age"));
						ps.setAadhar(rs.getInt("aadhar_card"));
						ps.setCompartment(rs.getString("compartment"));
						ps.setVerification(rs.getInt("verified"));
						ps.setTrain(rs.getInt("train_no"));
						
						passenger.add(ps);
						
					}while(rs.next());
				}
				else {
					System.out.println("No Passenger present");
				}
				
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return passenger;
		}
		
	
}
