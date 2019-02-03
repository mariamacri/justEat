package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.FeedbackDao;
import it.unical.ingsw.justeat.db.dao.OrdineDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.Feedback;
import it.unical.ingsw.justeat.db.model.Ordine;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Utente;

public class salvaFeedback extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Utente utente=(Utente) req.getSession().getAttribute("utente");
		
		String partita_iva =req.getParameter("partita_iva");
		
		String numero_stelle=req.getParameter("numero_stelle");
		String descrizione=req.getParameter("descrizione");
		
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		
		
		RistoranteDao rDao = factory.getRistoranteDAO();
		Ristorante ristorante =rDao.findByPrimaryKey(partita_iva);
		
		
		FeedbackDao fdao=factory.getFeedbackDAO();
		List<Feedback> fs=fdao.findAll();
		
		Feedback f=new Feedback();
		f.setId_feedback(fs.size()+1);
		f.setNumero_stelle(Integer.parseInt(numero_stelle));
		f.setDescrizione(descrizione);
		f.setUtente_recensore(utente);
		f.setRistorante_recensito(ristorante);
		
		fdao.save(f);
		
		
		
		RequestDispatcher reqDisp=req.getRequestDispatcher("userOrders.jsp");
		reqDisp.forward(req, resp);

	}
	
}
