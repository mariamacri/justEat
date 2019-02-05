package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.model.Ordine;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.OrdineDao;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;

public class ConfermaOrdine extends HttpServlet {
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		double totConsegna=(double) req.getSession().getAttribute("tot");
		String partia_iva= req.getParameter("partia_iva");
		totConsegna+=2.00;
		
		req.getSession().setAttribute("totConsegna", totConsegna);
		req.getSession().setAttribute("partita_iva_ristorante_ordine", partia_iva);
		RequestDispatcher reqDisp=req.getRequestDispatcher("checkout.jsp");
		reqDisp.forward(req, resp);
		
		
		
		
		
	}
}
