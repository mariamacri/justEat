package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.factory.UtenteCredenziali;
import it.unical.ingsw.justeat.db.model.Utente;

public class CredenzialiLogin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("Email");
		String password = req.getParameter("Password");
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtenteDao uDao = factory.getUtenteDAO();
		//UtenteCredenziali s =uDao.findByPrimaryKeyCredential(email);
		Utente s=uDao.findByPrimaryKey(email);
		
		if (s == null) {
			
			RequestDispatcher rd = req.getRequestDispatcher("loginFailed.html");
			rd.forward(req, resp);
		}
		else {
			String p= s.getPassword().replace(" ", "");
			if (p.equals(password)) {
			
			//	req.getSession().setAttribute("email_utente", email);
				
				req.getSession().setAttribute("utente", s);
				RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
				rd.forward(req, resp);
			}else {
				RequestDispatcher rd = req.getRequestDispatcher("loginFailed.html");
				rd.forward(req, resp);
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
