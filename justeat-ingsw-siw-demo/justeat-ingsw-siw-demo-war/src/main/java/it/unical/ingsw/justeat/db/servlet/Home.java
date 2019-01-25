package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DatabaseManager;
import it.unical.ingsw.justeat.db.model.Utente;

public class Home extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = (String) req.getSession().getAttribute("email");
		
		if (email != null) {
			UtenteDao utenteD = DatabaseManager.getInstance().getDaoFactory().getUtenteDAO();
			Utente s = utenteD.findByPrimaryKey(email);
//			req.setAttribute("nome", s.getNome());
//			req.setAttribute("cognome", s.getCognome());
			req.setAttribute("utente", s);
		}
		
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		rd.forward(req, resp);
	}
}
