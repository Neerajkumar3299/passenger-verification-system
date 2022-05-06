package com.login.dao;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.login.model.TCModel;
import com.mysql.cj.xdevapi.Statement;

public class loginDao {
     public TCModel verify(String uname, String pass) throws ClassNotFoundException {
    	 
    	 // Steps for database connectivity
    	 // Step 1: import the package 
    	 // Step 2: a. Load the register
    	 //           b. Register the Driver
    	 // Step 3: Establish the connection
    	 // Step 4: Create the statement
    	 // Step 5: Execute the Query
    	 // Step 6: Process the result
    	 // Step 7: close
    	 TCModel tcmodel=new TCModel();
    	
    	 try{
    		 
    		 String url="jdbc:mysql://localhost:3306/railwaymanagementsystem";
    		 String query="select * from tc where username=? and password=?";
        	 Class.forName("com.mysql.jdbc.Driver");
    		
        	 Connection con = DriverManager.getConnection(url,"root","");
        	 
        	 PreparedStatement stmt=con.prepareStatement(query);
        	 
        	 stmt.setString(1, uname);
        	 stmt.setString(2, pass);
        	 ResultSet rs=stmt.executeQuery();
        	
        	 
        	 
        	 if(rs.next()) {
        		 tcmodel.setId(rs.getInt("id"));
        		 tcmodel.setName(rs.getString("name"));
        		 tcmodel.setUserName(rs.getString("username"));
        		 
        	 }
        	 else {
        		 tcmodel=null;
        	 }
        	 
        	 con.close();
        	 
    	 }
    	 catch(Exception e) {
    		 e.getMessage();
    	 }
    	 
    	 return tcmodel;
     }
}
