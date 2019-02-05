package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.DatabaseManager;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;

public class cosaSono extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RistoranteDao risDao = factory.getRistoranteDAO();

		Ristorante r=risDao.findByEmail(email);
		
		if(r==null)
		{
			
			req.getSession().setAttribute("ristorante", false);
			RequestDispatcher rd = req.getRequestDispatcher("userPanel.jsp");
			rd.forward(req, resp);
		}
		else
		{
		
			req.getSession().setAttribute("ristorante", true);
			RequestDispatcher rd = req.getRequestDispatcher("userPanel.jsp");
			rd.forward(req, resp);
		}
	}

}
