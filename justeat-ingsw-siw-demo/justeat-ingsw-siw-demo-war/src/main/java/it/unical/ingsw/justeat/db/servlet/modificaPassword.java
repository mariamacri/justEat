package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.Utente;

public class modificaPassword extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String oldPassword=req.getParameter("OldPassword");
		String newPassword=req.getParameter("NewPassword");
		String confirmPassword=req.getParameter("ConfirmPassword");
		String email=req.getParameter("email");
		
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtenteDao ud=factory.getUtenteDAO();
		Utente utente=ud.findByPrimaryKey(email);
		
		if(oldPassword.equals(utente.getPassword()) && newPassword.equals(confirmPassword))
		{
			ud.setPassword(utente, newPassword);
			req.getSession().setAttribute("utente", utente);
			RequestDispatcher rd = req.getRequestDispatcher("userPanel.jsp");
			rd.forward(req, resp);
		}
		
		//System.out.println(oldPassword+" "+newPassword+" "+confirmPassword+" "+email);
		else {
		RequestDispatcher rd = req.getRequestDispatcher("editpassword.jsp");
		rd.forward(req, resp);
		}
	}
}
