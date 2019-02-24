package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.DatabaseManager;
import it.unical.ingsw.justeat.db.persistence.dao.UtenteDao;

public class SocialLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet");
		HttpSession session = request.getSession();

		// log-out
		session.removeAttribute("username");
		session.removeAttribute("loggato");
		session.removeAttribute("utente");
		session.removeAttribute("tipo");
		session.removeAttribute("email");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("doPost");
		HttpSession session = request.getSession();

		String loggato = (String) session.getAttribute("loggato");

		if (loggato == null) {

			String email = request.getParameter("email");
			String nome = request.getParameter("nome");
			String cognome = request.getParameter("cognome");
			String password = "123";
			String tipo = request.getParameter("tipo");

			UtenteDao dao = DatabaseManager.getInstance().getDaoFactory().getUtenteDAO();

			Utente utente = dao.findByPrimaryKey(email);

			/*
			 * L'utente non è ancora registrato con l'email che ha inserito bisogna quindi
			 * registrare questo utente e poi farlo entrare.
			 */

			if (utente == null) {

				Utente alternativeUser = new Utente();
				alternativeUser.setCarta_Credito_Usata(null);
				alternativeUser.setCognome_Utente(cognome);
				alternativeUser.setEmail_Utente(email);
				alternativeUser.setIndirizzo_Utente("123");
				alternativeUser.setNome_Utente(nome);
				alternativeUser.setNumero_telefono_utente(123);
				alternativeUser.setPassword("123");
				dao.save(alternativeUser);
				// session.setAttribute("utente", utente);
//				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//				rd.forward(request, response);
			}
//			else {
//				// L'utente è stato registrato per la prima volta tramite facebook e
//				// salvato nel database.
//				session.setAttribute("utente", utente);
//				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//				rd.forward(request, response);
//				
//				
//			}
			session.setAttribute("email", email);
			session.setAttribute("nome", nome);
			session.setAttribute("cognome", cognome);
			session.setAttribute("loggato", email);
			session.setAttribute("tipo", tipo);		
			session.setAttribute("utente", utente);
		}

	}

}
