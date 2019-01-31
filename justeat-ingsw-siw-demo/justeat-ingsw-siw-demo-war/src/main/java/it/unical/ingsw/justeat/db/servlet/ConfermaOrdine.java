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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//quando clicco il bottone conferma deve salvare l'ordine e invia la notifica al ristorante 
		String id_ordine=req.getParameter("id_ordine");
		
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		OrdineDao od = factory.getOrdineDAO();
		Ordine ordine=new Ordine(); 
		ordine.setId_ordine(Integer.parseInt(id_ordine));
		
		od.save(ordine);
		req.getSession().setAttribute("ordine",ordine);
		
		RequestDispatcher reqDisp=req.getRequestDispatcher("checkout.jsp");
		reqDisp.forward(req, resp);
		
		
		
		
		
	}
}
