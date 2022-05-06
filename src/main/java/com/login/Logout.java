package com.login;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


/**
 * Servlet implementation class logout
 */
@WebServlet("/logout")
public class Logout extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
		
		// Destroy data stored in session for logout purpose
		HttpSession session=req.getSession();
		session.removeAttribute("email");
		session.removeAttribute("train_no");
		session.removeAttribute("compartment");
		res.sendRedirect("login.jsp");	
		System.out.println("Logout called");
		System.out.println(session.getAttribute("email"));
	}

}
