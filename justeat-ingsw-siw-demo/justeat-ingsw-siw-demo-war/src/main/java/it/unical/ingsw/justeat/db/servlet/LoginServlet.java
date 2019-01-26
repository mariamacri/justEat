package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.factory.UtenteDaoJDBC;
import it.unical.ingsw.justeat.db.model.Utente;

public class LoginServlet extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException{
		
		
			String email=request.getParameter("indirizzo");
			String password=request.getParameter("Password");
			
			DAOFactory dao= DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
			UtenteDao u=dao.getUtenteDAO();
			Utente utente= u.findByPrimaryKey(email);
			
			
				if (utente.getPassword().equals(password)) {
					request.getSession().setAttribute("indirizzo", email);
					request.setAttribute("utente", utente);
					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					rd.forward(request, reponse);
					
					System.out.println("ciao");
				}
				System.out.println("ciao");
			}
		
	

}
