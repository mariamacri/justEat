package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;

public class eliminaPietanza extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String nome=req.getParameter("nome");
		
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RistoranteDao rd=factory.getRistoranteDAO();
		
		Ristorante r=rd.findByEmail(email);
		Pietanza p=new Pietanza();
		p.setNome(nome);
		rd.delete_pietanza_contenuta(p, r);
		
		List<Pietanza> pietanze= rd.pietanze_del_ristorante(r);
		req.getSession().setAttribute("pietanze", pietanze);
		
		RequestDispatcher rde = req.getRequestDispatcher("menuForm.jsp");
		rde.forward(req, resp);
	}

}
