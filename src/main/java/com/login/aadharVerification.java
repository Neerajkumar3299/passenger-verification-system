package com.login;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import com.login.dao.AadharVerificationDao;
import com.login.model.AadharModel;


/**
 * Servlet implementation class aadharVerification
 */
@WebServlet("aadharVerification")
public class aadharVerification extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) {
		int aadhar_no=Integer.parseInt(req.getParameter("aadhar_no"));
		System.out.println(aadhar_no);
		AadharVerificationDao dao=new AadharVerificationDao();
		AadharModel obj=dao.verifyAadharCard(aadhar_no);
		
		req.setAttribute("aadharCardDetail", obj);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/aadharCardDetail.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
