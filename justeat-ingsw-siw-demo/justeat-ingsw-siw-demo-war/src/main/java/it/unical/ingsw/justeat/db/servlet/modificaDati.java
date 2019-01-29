package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.Utente;

public class modificaDati extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nome=req.getParameter("nome");
		String cognome=req.getParameter("cognome");
		String email=req.getParameter("email");
		String numero=req.getParameter("numero_telefono_utente");
		int numero_telefono=Integer.parseInt(numero);
		String indirizzo=req.getParameter("indirizzo");
		
		
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtenteDao ud=factory.getUtenteDAO();
		
		Utente utente=new Utente();
		utente.setEmail_Utente(email);
		utente.setIndirizzo_Utente(indirizzo);
		utente.setNome_Utente(nome);
		utente.setNumero_telefono_utente(numero_telefono);
		utente.setCognome_Utente(cognome);
		
		ud.update(utente);
		req.getSession().setAttribute("utente", utente);
		
		//System.out.println(utente.getCognome_Utente() +" "+ utente.getNome_Utente()+" "+utente.getNumero_telefono_utente()+" "+utente.getIndirizzo_Utente());
		
		
		RequestDispatcher rd = req.getRequestDispatcher("userPanel.jsp");
		rd.forward(req, resp);
	}
}
