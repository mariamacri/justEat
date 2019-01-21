package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.factory.DatabaseManager;
import it.unical.ingsw.justeat.db.model.Ristorante;

public class CercaRistorante extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String indirizzoCercato = req.getParameter("indirizzoCercato");

		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RistoranteDao risDao = DatabaseManager.getInstance().getDaoFactory().getRistoranteDAO();
		List<Ristorante> ristor = risDao.findByIndirizzo(indirizzoCercato);

		req.setAttribute("ristoranti", ristor);
		RequestDispatcher rd = req.getRequestDispatcher
				("WebContent/restaurant.jsp");
		rd.forward(req, resp);


	}


}
