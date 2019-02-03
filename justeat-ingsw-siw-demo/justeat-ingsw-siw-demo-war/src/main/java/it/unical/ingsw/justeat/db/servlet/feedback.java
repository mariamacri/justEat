package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.Ristorante;

public class feedback extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		
		
		String partita_iva=req.getParameter("partita_iva");
		
		
		req.getSession().removeAttribute("Ristorante_recensito");
		
		
		RistoranteDao rd=factory.getRistoranteDAO();
		Ristorante ristorante=rd.findByPrimaryKey(partita_iva);
		
		req.getSession().setAttribute("Ristorante_recensito", ristorante);
		RequestDispatcher rde = req.getRequestDispatcher("feedback.jsp");
		rde.forward(req, resp);
	}

}
