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

import com.login.dao.AadharVerificationDao;


/**
 * Servlet implementation class updateVerificationStatus
 */
@WebServlet("tc/verifyPassenger")
public class verifyPassenger extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException {
		HttpSession session=req.getSession();
		int aadhar=Integer.parseInt(req.getParameter("aadhar_no"));
		int id=(Integer) session.getAttribute("id");
//		System.out.println("This is Update verification status"+aadhar+" "+id);
//		
		AadharVerificationDao obj=new AadharVerificationDao();
		boolean result=obj.verifyPassenger(aadhar, id);
		if(result) {
			try {
				res.sendRedirect("/login/getUnverifiedPassengers");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			PrintWriter out=res.getWriter();
			//servlet code
//			 res.setContentType("text/html");  
			 out.println("<script type=\"text/javascript\">");  
			 out.println("alert('Error Occured during Verifying Passenger..');");  
			 
			 out.println("</script>");
//			 res.sendRedirect("login.jsp");
		}
	}


}
