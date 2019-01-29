package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.glass.ui.Menu;

import it.unical.ingsw.justeat.db.dao.MenuDao;
import it.unical.ingsw.justeat.db.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Utente;

public class MettiPietanza extends HttpServlet{
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		//Utente u=(Utente) req.getSession().getAttribute("utente");
		String email=req.getParameter("email");
		RistoranteDao rd=factory.getRistoranteDAO();
		
		Ristorante r=rd.findByEmail(email);
		
		String nomePietanza= req.getParameter("Pietanza");
		String prezzoPietanza= req.getParameter("PietanzaPrice");
		String descrizionePietanza= req.getParameter("FoodDescr");
		Pietanza p=new Pietanza();
		double prezzo=Double.parseDouble(prezzoPietanza);
		p.setDescrizione(descrizionePietanza);
		p.setNome(nomePietanza);
		p.setPrezzo(prezzo);
		
		
		PietanzaDao pd=factory.getPietanzaDAO();
		pd.save(p);
		
		
		pd.pietanza_contenuta_in(p, r);

		RequestDispatcher rde = req.getRequestDispatcher("menuForm.jsp");
		rde.forward(req, resp);
		
		
	}
	
	
}
