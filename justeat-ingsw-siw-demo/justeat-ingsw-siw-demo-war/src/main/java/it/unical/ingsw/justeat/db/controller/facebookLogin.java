package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.UtenteDao;

public class facebookLogin extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String loggato = (String) session.getAttribute("loggato");

		if (loggato== null) {
			
			String email=req.getParameter("Email");
			String password=req.getParameter("password");

			DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
			UtenteDao uDao = factory.getUtenteDAO();
			Utente utente=uDao.findByPrimaryKey(email);
		
			if(utente==null)
			{
				Utente altroUtente=new Utente(); 
				altroUtente.setEmail_Utente(email);
				altroUtente.setPassword(password);
				altroUtente.setCognome_Utente(null);
				altroUtente.setIndirizzo_Utente(null);
				altroUtente.setCarta_Credito_Usata(null);
				altroUtente.setNumero_telefono_utente(0);
				altroUtente.setNome_Utente(null);
			}
		}
		
		
	}
}
