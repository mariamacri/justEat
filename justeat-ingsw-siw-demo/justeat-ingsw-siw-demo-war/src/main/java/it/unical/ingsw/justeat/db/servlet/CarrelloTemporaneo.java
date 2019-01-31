package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.OrdineDao;
import it.unical.ingsw.justeat.db.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.Ordine;
import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Utente;

public class CarrelloTemporaneo extends HttpServlet{
	
	
	//registrare temporaneamente una lista di pietanze in una session
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		String nome=req.getParameter("nome");
		String prezzo=req.getParameter("prezzo");
		
		//String userEmail=req.getParameter("userEmail");
		
		//String partita_iva=req.getParameter("partita_iva");
	
		
	//	DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		
	
		
	
		
		Pietanza pietanza=new Pietanza(); 
		pietanza.setNome(nome);
		pietanza.setPrezzo(Double.parseDouble(prezzo));
		//OrdineDao ordineDao=factory.getOrdineDAO(); 
		Ordine ordine=new Ordine(); 
		
		ordine.add(pietanza);
	
		
	
		
		
		
		
	
	
		req.getSession().setAttribute("ordine", ordine);
		
		RequestDispatcher rd = req.getRequestDispatcher("checkout.jsp");
		rd.forward(req, resp);
		
		
		
	
		
		
	}
}
