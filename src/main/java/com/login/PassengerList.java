package com.login;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.login.dao.PassengerListDao;
import com.login.model.PassengersModel;


/**
 * Servlet implementation class PassengerList
 */

@WebServlet("getPassengers")
public class PassengerList extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
		System.out.println(req.getParameter("train_no"));
		int train_no=Integer.parseInt(req.getParameter("train_no"));
		String compartment=req.getParameter("class");
		
		HttpSession session=req.getSession();
		session.setAttribute("compartment", compartment);
		session.setAttribute("train_no", train_no);
		
		// create object of PassengerListDao
		PassengerListDao dao=new PassengerListDao();
		
		// Create a list of type Passengers
		List<PassengersModel> passengers=new ArrayList<PassengersModel>();
		passengers=dao.getPassengers(train_no, compartment);
		
		req.setAttribute("data", passengers);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/home.jsp");
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
