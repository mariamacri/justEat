package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.DatabaseManager;
import it.unical.ingsw.justeat.db.persistence.dao.UtenteDao;

public class Home extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	/*	String email = (String) req.getSession().getAttribute("email");
		
		if (email != null) {
			UtenteDao utenteD = DatabaseManager.getInstance().getDaoFactory().getUtenteDAO();
			Utente s = utenteD.findByPrimaryKey(email);
//			req.setAttribute("nome", s.getNome());
//			req.setAttribute("cognome", s.getCognome());
			req.setAttribute("utente", s);
		}
		
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		rd.forward(req, resp);*/
		//String email=req.getParameter("email");
		System.out.println("ciaoooooooooooooo");
		RequestDispatcher rde = req.getRequestDispatcher("feedback.jsp");
		rde.forward(req, resp);
	
	}
	
//	doPost(req, resp);
//	string password=req.getParameter("password");
//			lista=untente.findall(;)
//			for(utente u: lista)
//			{
//				utentedao.setPassword(u, password);
//			}
//	}

		
}
