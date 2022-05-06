package com.login;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.login.dao.PassengerListDao;
import com.login.model.PassengersModel;


/**
 * Servlet implementation class VerifiedPassengers
 */

@WebServlet("getVerifiedPassengers")
public class VerifiedPassengers extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
		HttpSession session=req.getSession();
		int train_no=(Integer) session.getAttribute("train_no");
		String compartment=(String) session.getAttribute("compartment");
	
		
		// create object of PassengerListDao
		PassengerListDao dao=new PassengerListDao();
		
		// Create a list of type Passengers
		List<PassengersModel> passengers=new ArrayList<PassengersModel>();
		passengers=dao.getVerifiedPassengers(train_no, compartment);
		
		req.setAttribute("data", passengers);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/verified.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		for(Passengers passenger:passengers) {
//			out.println(passenger.getName());
//		}
//		
	}

}
