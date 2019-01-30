package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.dao.TitolareDao;
import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Titolare;
import it.unical.ingsw.justeat.db.model.Utente;

public class modificaDatiRistorante extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nomeAttivita = req.getParameter("nomeAttivita");
		String emailAttivita = req.getParameter("emailAttivita");
		String telefonoAttivita = req.getParameter("telefonoAttivita");
		String indirizzoAttivita = req.getParameter("indirizzoAttivita");
		String partitaIva = req.getParameter("partitaIva");
		String nomeTitolare = req.getParameter("nomeTitolare");
		String cognomeTitolare = req.getParameter("cognomeTitolare");
		String cfTitolare = req.getParameter("cfTitolare");
		String coordinateBancarie = req.getParameter("coordinateBancarie");

		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RistoranteDao rd = factory.getRistoranteDAO();
		//Ristorante ristorante = rd.findByEmail(emailAttivita);
		Ristorante ristorante =new Ristorante();
		ristorante.setNome_Ristorante(nomeAttivita);
		
		UtenteDao ud = factory.getUtenteDAO();
		Utente utente = ud.findByPrimaryKey(emailAttivita);
		
		ristorante.setUtente_Proprietario(utente);
		// set telefono
		
		ristorante.setIndirizzo_Ristorante(indirizzoAttivita);
		ristorante.setPartita_Iva(partitaIva);
		ristorante.setCoordinate_Bancarie_Ristorante(coordinateBancarie);
		
		TitolareDao titolareDao = factory.getTitolareDAO();
		Titolare titolare=titolareDao.findByPrimaryKey(cfTitolare);
		
		ristorante.setTitolare(titolare);
		rd.update(ristorante);
		
		req.getSession().setAttribute("ristorante",ristorante);
		System.out.println(ristorante.toString());
		RequestDispatcher reqDisp=req.getRequestDispatcher("restaurantInfo.jsp");
		reqDisp.forward(req, resp);
		
		
		
	}
}
