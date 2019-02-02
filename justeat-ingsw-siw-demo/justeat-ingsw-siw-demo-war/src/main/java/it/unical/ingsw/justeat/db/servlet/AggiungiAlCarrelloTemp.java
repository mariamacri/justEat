package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.Pietanza;

public class AggiungiAlCarrelloTemp extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);

		String nomePietanza = req.getParameter("nomePietanza");
		System.out.println(nomePietanza);
		PietanzaDao pdao = factory.getPietanzaDAO();
		Pietanza pie=pdao.findByPrimaryKey(nomePietanza);

		List <Pietanza> carrello= (List<Pietanza>) req.getSession().getAttribute("carrello");

		if(carrello!=null)
		{
			
			carrello.add(pie);
			
			req.getSession().setAttribute("carrello", carrello);
			RequestDispatcher rde = req.getRequestDispatcher("restaurantProfile.jsp");
			rde.forward(req, resp);
		}
		else {
			
			carrello = new LinkedList<Pietanza>();
			carrello.add(pie);
			req.getSession().setAttribute("carrello", carrello);
			RequestDispatcher rde = req.getRequestDispatcher("restaurantProfile.jsp");
			rde.forward(req, resp);
		}
		
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
