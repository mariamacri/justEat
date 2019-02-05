package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.model.Ordine;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.OrdineDao;

public class archivia extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		List <Ordine> ordiniNonArchiviati= (List<Ordine>) req.getSession().getAttribute("Nuovi");
		
		String id=req.getParameter("id");
		int id_ordine=Integer.parseInt(id);
		for(int i=0; i<ordiniNonArchiviati.size(); i++) {
			if(ordiniNonArchiviati.get(i).getId_ordine()==id_ordine)
				ordiniNonArchiviati.remove(i);
				
		}
		
		
		req.getSession().setAttribute("Nuovi", ordiniNonArchiviati);
	
	
		
		
		
		
		RequestDispatcher rde = req.getRequestDispatcher("lastOrders.jsp");
		rde.forward(req, resp);
	}

}
