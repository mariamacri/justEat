package it.unical.ingsw.justeat.db.controller;

import java.io.IOException;
import java.sql.Time;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.model.GiornoAttivita;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.dao.GiornoAttivitaDao;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;

public class ottieniRistorante extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email= req.getParameter("email");
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RistoranteDao rd=factory.getRistoranteDAO();
		
		List<GiornoAttivita> giorni = new LinkedList<GiornoAttivita>(); 
		
		GiornoAttivitaDao ga= factory.getGiornoAttivitaDao();
		
		
		
		//ritorna il ristorante in base all'email dell'utente proprietario
		Ristorante ristorante =rd.findByEmail(email);
		
		GiornoAttivita giorno =ga.findByPrimaryKey("Lunedi",ristorante.getPartita_Iva() );
		if(giorno !=null)
			giorni.add(giorno);
		
		
		giorno = ga.findByPrimaryKey("Martedi",ristorante.getPartita_Iva() );
		if(giorno !=null)
			giorni.add(giorno);
		
		giorno = ga.findByPrimaryKey("Mercoledi",ristorante.getPartita_Iva() );
		if(giorno !=null)
			giorni.add(giorno);
		
		giorno = ga.findByPrimaryKey("Giovedi",ristorante.getPartita_Iva() );
		if(giorno !=null)
			giorni.add(giorno);
		
		giorno = ga.findByPrimaryKey("Venerdi",ristorante.getPartita_Iva() );
		if(giorno !=null)
			giorni.add(giorno);
		
		giorno = ga.findByPrimaryKey("Sabato",ristorante.getPartita_Iva() );
		if(giorno !=null)
			giorni.add(giorno);
		
		giorno = ga.findByPrimaryKey("Domenica",ristorante.getPartita_Iva() );
		if(giorno !=null)
			giorni.add(giorno);
		
		if(giorni.size()==0)
		{
			giorno=new GiornoAttivita();
			giorno.setGiorno("Lunedi");
			giorno.setOrarioApertura(Time.valueOf("00:00:00"));
			giorno.setOrarioChiusura(Time.valueOf("00:00:00"));
			giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
			giorni.add(giorno);
		}
		
		req.getSession().setAttribute("ristor", ristorante);
		req.getSession().setAttribute("giorni", giorni);
		
		RequestDispatcher rde = req.getRequestDispatcher("restaurantInfo.jsp");
		rde.forward(req, resp);
		
		
	}

}
