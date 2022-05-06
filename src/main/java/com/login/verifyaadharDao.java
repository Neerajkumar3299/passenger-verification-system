package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class verifyaadharDao {
	public void verifyAadhar(int aadhar_no) {
	 try{
		 
		 String url="jdbc:mysql://localhost:3306/railwaymanagementsystem";
		 String query="select * from aadhar where aadhar_no=?";
    	 Class.forName("com.mysql.jdbc.Driver");
		
    	 Connection con = DriverManager.getConnection(url,"root","");
    	 
    	 PreparedStatement stmt=con.prepareStatement(query);
    	 
    	 stmt.setInt(1, aadhar_no);
    	 ResultSet rs=stmt.executeQuery();
    	 System.out.println("Passengers Detail with Aadhar No:"+aadhar_no);
    	 if(rs.next()) {
    		 System.out.println(rs.getString("name")+" "+rs.getString("address")+" is original");
    	 }
    	 else {
    		 System.out.println("No Aadhar with this no is not original");
    	 }
    	 con.close();
    	 
	 }
	 catch(Exception e) {
		 e.getMessage();
	 }
	
}
	}


















