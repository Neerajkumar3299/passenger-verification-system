package com.login;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.Session;

import com.login.dao.PassengerListDao;
import com.login.dao.loginDao;
import com.login.model.PassengersModel;
import com.login.model.TCModel;

/**
 * Servlet implementation class Login
 */

@WebServlet("/login")
public class Login extends HttpServlet {
	public void doGet(jakarta.servlet.http.HttpServletRequest req,jakarta.servlet.http.HttpServletResponse res) throws IOException {
		PrintWriter out=res.getWriter();
		List<PassengersModel> passenger=new ArrayList<PassengersModel>();
		try {
			
			String email=req.getParameter("email");
			String pass=req.getParameter("pass");
		
			 HttpSession session=req.getSession();
//			Cookie ck=new Cookie("email",email);//creating cookie object  
		     loginDao dao=new loginDao();
		     TCModel data=dao.verify(email, pass);
			 if(data!=null) {
				 
				 session.setAttribute("email", email);
				 session.setAttribute("id", data.getId());
				 session.setAttribute("username", data.getUserName());
				 session.setAttribute("name", data.getName());
//				 res.addCookie(ck);//adding cookie in the response 
				 
				 PassengerListDao obj=new PassengerListDao();
				 passenger=obj.getPassengerVerifiedByTc(email,(Integer)session.getAttribute("id"));
				 
				 RequestDispatcher rd=req.getRequestDispatcher("/profile.jsp");  
				//servlet2 is the url-pattern of the second servlet  
				 req.setAttribute("data", passenger);
				 rd.forward(req, res);//method may be include or forward 
				
				 //res.sendRedirect("profile.jsp");
			 }
			 else {
				//servlet code
//				 res.setContentType("text/html");  
				 out.println("<script type=\"text/javascript\">");  
				 out.println("alert('Invalid account');");  
				 out.println("location='login.jsp';");
				 out.println("</script>");
//				 res.sendRedirect("login.jsp");
			 }
			 
		}
		catch(Exception e) {
			out.println(e);
		}
		
		
		
	}
}
