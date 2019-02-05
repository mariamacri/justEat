package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.PietanzaDao;

public class togliUnaPietanza extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nome=req.getParameter("nome");
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
		rde.forward(req, resp);
	}

}
