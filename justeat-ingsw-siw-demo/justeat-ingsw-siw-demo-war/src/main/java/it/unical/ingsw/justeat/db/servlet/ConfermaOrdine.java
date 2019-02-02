package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.OrdineDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.Ordine;

public class ConfermaOrdine extends HttpServlet {
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		double totConsegna=(double) req.getSession().getAttribute("tot");
		
		totConsegna+=2.00;
		
		req.getSession().setAttribute("totConsegna", totConsegna);
		RequestDispatcher reqDisp=req.getRequestDispatcher("checkout.jsp");
		reqDisp.forward(req, resp);
		
		
		
		
		
	}
}
