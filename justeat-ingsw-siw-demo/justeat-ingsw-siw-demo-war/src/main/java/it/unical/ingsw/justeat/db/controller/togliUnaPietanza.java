package it.unical.ingsw.justeat.db.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
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
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;

public class togliUnaPietanza extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*String nome=req.getParameter("nome");
		List<Pietanza> pietanze=(List<Pietanza>) req.getSession().getAttribute("carrello");
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		PietanzaDao pd=factory.getPietanzaDAO();
		Pietanza p=pd.findByPrimaryKey(nome);
		pietanze.remove(p);
		Double tot=0.0;
		if(pietanze!=null && pietanze.size()!=0)
			for(Pietanza pi: pietanze) {
				tot+=pi.getPrezzo();
			}
		req.getSession().setAttribute("tot", tot);
		req.getSession().setAttribute("carrello", pietanze);
		RequestDispatcher rde = req.getRequestDispatcher("restaurantProfile.jsp");
		rde.forward(req, resp);*/
		String jsonReceived = "";
		BufferedReader reader = new BufferedReader(new InputStreamReader(req.getInputStream()));
		String line = reader.readLine();
		while (line != null) {
			jsonReceived = jsonReceived + line + "\n";
			line = reader.readLine();
		}
		//System.out.println(jsonReceived);
		try {
			JSONObject json = new JSONObject(jsonReceived);
			Pietanza p=new Pietanza();
			p.setNome(json.getString("nome"));
			p.setPrezzo(json.getDouble("prezzo"));
			p.setDescrizione(json.getString("descrizione"));
			
			//System.out.println(p.toString());
			List<Pietanza> pietanze=(List<Pietanza>) req.getSession().getAttribute("carrello");
			pietanze.remove(p);
			Double tot=0.0;
			if(pietanze!=null && pietanze.size()!=0)
				for(Pietanza pi: pietanze) {
					tot+=pi.getPrezzo();
				}
			req.getSession().setAttribute("tot", tot);
			req.getSession().setAttribute("carrello", pietanze);
			

		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rde = req.getRequestDispatcher("restaurantProfile.jsp");
		rde.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
