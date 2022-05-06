package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.login.model.AadharModel;
import com.login.model.TCModel;
import com.mysql.cj.xdevapi.Statement;

public class AadharVerificationDao {
	public AadharModel verifyAadharCard(int aadhar_no) {
		AadharModel obj=new AadharModel();
		
		System.out.println("This is aadhar no"+aadhar_no);
     try{
    		 
	     String url="jdbc:mysql://localhost:3306/railwaymanagementsystem";			
		String query="select * from aadhar where aadhar_no=?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","");
		PreparedStatement stmt=con.prepareStatement(query);
		stmt.setInt(1, aadhar_no);
		ResultSet rs=stmt.executeQuery();
        	 if(rs.next()) {        		
				obj.setName(rs.getString("name"));
				obj.setAge(rs.getFloat("age"));
				obj.setGender(rs.getString("gender"));
				obj.setAddress(rs.getString("address"));
				obj.setAadhar(rs.getInt("aadhar_no"));
				obj.setState(rs.getString("state"));
				obj.setDOB(rs.getDate("dob").toString());
			}
        	 else {
        		 obj=null;
        	 }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return obj;
	}
	
	
	// Verify Aadhar Card
	// Update Verification Status
	public boolean verifyPassenger(int aadhar_no,int verfied_by) {
     try{
 	 
	 String url="jdbc:mysql://localhost:3306/railwaymanagementsystem";			
		String query="update passenger set verified="+1+", verified_by="+verfied_by+" where aadhar_card=?";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","");
		PreparedStatement stmt=con.prepareStatement(query);
		stmt.setInt(1, aadhar_no);
	
		int result=stmt.executeUpdate();
//        	 System.out.println(result);
		if(result==1) {
			return true;
		}
		else {
			return false;
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	// Method to unverify passeneger
	public boolean unverifyPassenger(int aadhar_no,int verfied_by) {
	     try{
	 	 
		 String url="jdbc:mysql://localhost:3306/railwaymanagementsystem";			
			String query="update passenger set verified="+0+", verified_by=NULL where aadhar_card=?";
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,"root","");
			PreparedStatement stmt=con.prepareStatement(query);
			stmt.setInt(1, aadhar_no);
			System.out.println(query);
			int result=stmt.executeUpdate();
			if(result==1) {
				return true;
			}
			else {
				return false;
			}
	        	
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return false;
		}
	
}

