package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.OrdineDao;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;

public class StatisticheRistorante extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Utente u=(Utente) req.getSession().getAttribute("utente");
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		
		RistoranteDao rd=factory.getRistoranteDAO();
		Ristorante r=rd.findByEmail(u.getEmail_Utente());
		
		OrdineDao od=factory.getOrdineDAO();
		
		
		
		RequestDispatcher rde = req.getRequestDispatcher("orderStatistic.jsp");
		rde.forward(req, resp);
	}

}
