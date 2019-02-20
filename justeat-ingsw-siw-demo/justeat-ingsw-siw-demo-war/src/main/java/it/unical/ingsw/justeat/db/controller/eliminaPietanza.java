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
import javax.websocket.Session;

import org.json.JSONException;
import org.json.JSONObject;

import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;


public class eliminaPietanza extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*String email=req.getParameter("email");
		String nome=req.getParameter("nome");
		
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RistoranteDao rd=factory.getRistoranteDAO();
		
		Ristorante r=rd.findByEmail(email);
		Pietanza p=new Pietanza();
		p.setNome(nome);
		rd.delete_pietanza_contenuta(p, r);
		
		List<Pietanza> pietanze= rd.pietanze_del_ristorante(r);
		req.getSession().setAttribute("pietanze", pietanze);*/
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		Utente utente=(Utente) req.getSession().getAttribute("utente");
	
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
			
			RistoranteDao rd=factory.getRistoranteDAO();
			Ristorante r=rd.findByEmail(utente.getEmail_Utente());
			rd.delete_pietanza_contenuta(p, r);
			PietanzaDao pd=factory.getPietanzaDAO();
			pd.delete(p);
			List<Pietanza> pietanze= rd.pietanze_del_ristorante(r);
			req.getSession().setAttribute("pietanze", pietanze);
//			StudenteDao sDao = DatabaseManager.getInstance().getDaoFactory().getStudenteDAO();
//			Studente dbStudente = sDao.findByPrimaryKey(studente.getMatricola());
//			Scuola scuola = dbStudente.getScuolaDiDiploma();
			
			/*JSONObject jsonPietanze = new JSONObject(pietanze);
		
			System.out.println(jsonPietanze);
			resp.getWriter().println(jsonPietanze);*/
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rde = req.getRequestDispatcher("menuForm.jsp");
		rde.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
