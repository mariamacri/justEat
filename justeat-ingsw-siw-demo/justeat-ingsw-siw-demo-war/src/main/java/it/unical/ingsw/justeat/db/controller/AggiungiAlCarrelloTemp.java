package it.unical.ingsw.justeat.db.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;

public class AggiungiAlCarrelloTemp extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		List <Pietanza> carrello= (List<Pietanza>) req.getSession().getAttribute("carrello");
		req.getSession().removeAttribute("tot");
		double tot=0.0;
		
		
		
		String jsonReceived = "";
		BufferedReader reader = new BufferedReader(new InputStreamReader(req.getInputStream()));
		String line = reader.readLine();
		while (line != null) {
			jsonReceived = jsonReceived + line + "\n";
			line = reader.readLine();
		}
	//	System.out.println(jsonReceived);
		try {
			JSONObject json = new JSONObject(jsonReceived);
			Pietanza p=new Pietanza();
			p.setNome(json.getString("nome"));
			p.setPrezzo(json.getDouble("prezzo"));
			p.setDescrizione(json.getString("descrizione"));
			
			//System.out.println(p.toString());
			if(carrello!=null)
			{
				
				carrello.add(p);
				for(Pietanza pie: carrello)
				{
					tot+=pie.getPrezzo();
				}
					req.getSession().setAttribute("tot", tot);
					req.getSession().setAttribute("carrello", carrello);
					RequestDispatcher rde = req.getRequestDispatcher("restaurantProfile.jsp");
					rde.forward(req, resp);
				}
			else {
				
				carrello = new LinkedList<Pietanza>();
				carrello.add(p);
				for(Pietanza pie: carrello)
				{
					tot+=pie.getPrezzo();
				}
					req.getSession().setAttribute("tot", tot);
					req.getSession().setAttribute("carrello", carrello);
					RequestDispatcher rde = req.getRequestDispatcher("restaurantProfile.jsp");
					rde.forward(req, resp);
				}
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		

		
		
		
		
		/*DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);

		String nomePietanza = req.getParameter("nomePietanza");

		PietanzaDao pdao = factory.getPietanzaDAO();
		Pietanza pie=pdao.findByPrimaryKey(nomePietanza);

		List <Pietanza> carrello= (List<Pietanza>) req.getSession().getAttribute("carrello");
		req.getSession().removeAttribute("tot");
		double tot=0.0;
		
		
		if(carrello!=null)
		{
			
			carrello.add(pie);
			for(Pietanza p: carrello)
			{
				tot+=p.getPrezzo();
			}
			req.getSession().setAttribute("tot", tot);
			req.getSession().setAttribute("carrello", carrello);
			RequestDispatcher rde = req.getRequestDispatcher("restaurantProfile.jsp");
			rde.forward(req, resp);
		}
		else {
			
			carrello = new LinkedList<Pietanza>();
			carrello.add(pie);
			for(Pietanza p: carrello)
			{
				tot+=p.getPrezzo();
			}
			req.getSession().setAttribute("tot", tot);
			req.getSession().setAttribute("carrello", carrello);
			RequestDispatcher rde = req.getRequestDispatcher("restaurantProfile.jsp");
		rde.forward(req, resp);
			}*/
		
		
		
				
		
		
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
