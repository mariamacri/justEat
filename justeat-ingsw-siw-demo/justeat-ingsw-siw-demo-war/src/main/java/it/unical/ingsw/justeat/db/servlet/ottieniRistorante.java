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

public class ottieniRistorante extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email= req.getParameter("email");
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RistoranteDao rd=factory.getRistoranteDAO();
		
		//ritorna il ristorante in base all'email dell'utente proprietario
		Ristorante ristorante =rd.findByEmail(email);
		req.getSession().setAttribute("ristor", ristorante);
		
		RequestDispatcher rde = req.getRequestDispatcher("restaurantInfo.jsp");
		rde.forward(req, resp);
		
		
	}

}
