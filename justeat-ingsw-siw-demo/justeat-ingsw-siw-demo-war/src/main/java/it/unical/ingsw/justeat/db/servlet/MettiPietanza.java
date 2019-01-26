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
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.Pietanza;

public class MettiPietanza extends HttpServlet{
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String nomePietanza= req.getParameter("Pietanza");
		String prezzoPietanza= req.getParameter("PietanzaPrice");
		String descrizionePietanza= req.getParameter("FoodDescr");
		Pietanza p=new Pietanza();
		double prezzo=Double.parseDouble(prezzoPietanza);
		p.setDescrizione(descrizionePietanza);
		p.setNome(nomePietanza);
		p.setPrezzo(prezzo);
		
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		PietanzaDao pd=factory.getPietanzaDAO();
		pd.save(p);
		
		RequestDispatcher rd = req.getRequestDispatcher("menuForm.html");
		rd.forward(req, resp);
		
		
	}
	
	
}
