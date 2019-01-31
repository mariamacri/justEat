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
		String email=req.getParameter("email");
		String nomeAttivita = req.getParameter("nomeAttivita");
	
		String telefonoAttivita = req.getParameter("telefonoAttivita");
		String indirizzoAttivita = req.getParameter("indirizzoAttivita");

		String citta=req.getParameter("citta");
		String coordinateBancarie = req.getParameter("coordinateBancarie");

		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RistoranteDao rd = factory.getRistoranteDAO();
		Ristorante ristorante = rd.findByEmail(email);
		ristorante.setNome_Ristorante(nomeAttivita);
		ristorante.setNumero_Telefono_Ristorante(Integer.parseInt(telefonoAttivita));
		ristorante.setIndirizzo_Ristorante(indirizzoAttivita);
		ristorante.setCitta_Ristorante(citta);
		ristorante.setCoordinate_Bancarie_Ristorante(coordinateBancarie);
		
		rd.update(ristorante);
		
		
		req.getSession().setAttribute("ristor",ristorante);
		
		RequestDispatcher reqDisp=req.getRequestDispatcher("restaurantInfo.jsp");
		reqDisp.forward(req, resp);
		
		
		
	}
}
