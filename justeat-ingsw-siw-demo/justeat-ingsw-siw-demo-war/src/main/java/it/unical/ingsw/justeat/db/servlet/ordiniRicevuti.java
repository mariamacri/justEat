package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.OrdineDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.Ordine;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Utente;

public class ordiniRicevuti extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		
		RistoranteDao rd=factory.getRistoranteDAO();
		Ristorante ristorante=rd.findByEmail(email);

		List<Ordine> ordiniRicevuti=rd.riceve(ristorante);
		
		Collections.reverse(ordiniRicevuti);

		
		
		
		
	
		req.getSession().setAttribute("ordiniRicevuti", ordiniRicevuti);
	
		RequestDispatcher rde = req.getRequestDispatcher("restOrders.jsp");
		rde.forward(req, resp);
	}
}
