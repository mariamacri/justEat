package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;

import it.unical.ingsw.justeat.db.model.Ordine;
import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.OrdineDao;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.persistence.dao.UtenteDao;

public class ordiniRicevuti extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		
		RistoranteDao rd=factory.getRistoranteDAO();
		Ristorante ristorante=rd.findByEmail(email);

		List<Ordine> ordiniRicevuti=rd.riceve(ristorante);
		
		List<String> pietanze=new LinkedList<String>();
		
		for(Ordine o: ordiniRicevuti) {
			for(Pietanza p: o.getPietanze()) {
				if(p!=null)
				pietanze.add(p.getNome());
			}
		}
		
		
		Set<String> temp= new HashSet<>(pietanze);
		List<String> nomi= new LinkedList<>(temp);
		
		List<Integer> quantita= new LinkedList<>();
		for(int i=0; i<nomi.size(); i++)
			quantita.add(Collections.frequency(pietanze, nomi.get(i)));
		
		
		
		
		Collections.reverse(ordiniRicevuti);

		
		
		if(nomi!=null && nomi.size()!=0)
			req.getSession().setAttribute("nomi", nomi);
		if(quantita!=null && quantita.size()!=0)
			req.getSession().setAttribute("quantita", quantita);
		req.getSession().setAttribute("ordiniRicevuti", ordiniRicevuti);
		
	
		RequestDispatcher rde = req.getRequestDispatcher("restOrders.jsp");
		rde.forward(req, resp);
	}
}
