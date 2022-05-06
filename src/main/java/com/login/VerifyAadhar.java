package com.login;


import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

import com.passenger.dao.passengerDao;


/**
 * Servlet implementation class VerifyAadhar
 */
@WebServlet("/verifyaadhar")
public class VerifyAadhar extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		try {
		    int aadhar_no=Integer.parseInt(req.getParameter("aadhar_no"));
		    verifyaadharDao d=new verifyaadharDao();
		    d.verifyAadhar(aadhar_no);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
   
}
