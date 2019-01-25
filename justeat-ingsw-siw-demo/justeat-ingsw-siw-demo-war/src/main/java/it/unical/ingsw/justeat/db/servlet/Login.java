package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = (String)req.getSession().getAttribute("email");
		String logout = req.getParameter("logout");
		if (logout == null) {
			if (email != null) {
				RequestDispatcher rd = req.getRequestDispatcher("alreadyLogged.html");
				rd.forward(req, resp);
			}else {
				RequestDispatcher rd = req.getRequestDispatcher("login.html");
				rd.forward(req, resp);
			}
		}else {
			if (logout.equals("true")) {
				req.getSession().setAttribute("email", null);
			}
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		}		
		
		
	}
	

}
