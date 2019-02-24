package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.model.Feedback;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.UtilDao;
import it.unical.ingsw.justeat.db.persistence.dao.FeedbackDao;

public class ritornaFeedback extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("sono entratoooo");
		String partita_iva = req.getParameter("partita_iva");

		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtilDao util = factory.getUtilDAO();

		FeedbackDao feedackDao = factory.getFeedbackDAO();
		List<Feedback> tutti = feedackDao.findAllForRestaurant(partita_iva);
		req.getSession().setAttribute("feedbacks", tutti);
		RequestDispatcher rde = req.getRequestDispatcher("feedbackList.jsp");
		rde.forward(req, resp);

	}
}
