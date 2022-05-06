package com.login;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.login.dao.PassengerListDao;
import com.login.model.PassengersModel;


/**
 * Servlet implementation class getTotalPassengerList
 */
@WebServlet("gettotalpassengerlist")
public class getTotalPassengerList extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) {
		try {
			HttpSession session=req.getSession();
		    int train_no;
		    String compartment;
		    if(session.getAttribute("email")!=null) {
		    	train_no=(Integer) session.getAttribute("train_no");
		    	compartment=(String) session.getAttribute("compartment");
		    	System.out.println(""+train_no+" this is compartment "+compartment);
		    	PassengerListDao totalPassenger=new PassengerListDao();
		    	List<PassengersModel> data= totalPassenger.getPassengers(train_no, compartment);
		    	req.setAttribute("totalPassengers", data);
		    	RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/totalPassenger.jsp");
		    	dispatcher.forward(req, res);
		    }
		    
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
