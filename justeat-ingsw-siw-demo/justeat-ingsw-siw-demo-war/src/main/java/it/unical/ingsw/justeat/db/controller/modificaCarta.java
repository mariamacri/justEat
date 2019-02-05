package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.UtenteDao;

public class modificaCarta extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String oldCreditCard=req.getParameter("creditcardold");
		String newCreditCard=req.getParameter("creditcardnew");
		String scadenza=req.getParameter("scadenzacarta");
		Date date=Date.valueOf(scadenza);
		String email=req.getParameter("email");
		
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtenteDao ud=factory.getUtenteDAO();
		Utente utente=ud.findByPrimaryKey(email);
		
		CartaDiCredito carta=new CartaDiCredito();
		carta.setNumero_Carta(newCreditCard);
		carta.setScadenza(date);
		carta.setSaldo_Disponibile(0.0);
		carta.setTipo_Circuito_Carta("nullo");
		

		
		if(utente.getCarta_Credito_Usata().getNumero_Carta().equals("none") || oldCreditCard.equals(utente.getCarta_Credito_Usata().getNumero_Carta()))
		{
			utente.setCarta_Credito_Usata(carta);
			ud.setCartaDiCredito(utente, carta);
			req.getSession().setAttribute("utente", utente);
			RequestDispatcher rd = req.getRequestDispatcher("userPanel.jsp");
			rd.forward(req, resp);
		}
		else {
		RequestDispatcher rd = req.getRequestDispatcher("editcreditcard.jsp");
		rd.forward(req, resp);
		}
	}
}
