package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.glass.ui.Menu;

import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.MenuDao;
import it.unical.ingsw.justeat.db.persistence.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.persistence.dao.UtenteDao;

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
		
		


		
		
		
		
		
		
		
		
		
		
		
		
	
		
		List<Pietanza> pietanze= rd.pietanze_del_ristorante(r);
		
		req.getSession().setAttribute("pietanze", pietanze);

		RequestDispatcher rde = req.getRequestDispatcher("menuForm.jsp");
		rde.forward(req, resp);
		
		
	}
	
	
}
