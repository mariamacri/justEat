package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.CartaDiCreditoDao;
import it.unical.ingsw.justeat.db.dao.OrdineDao;
import it.unical.ingsw.justeat.db.dao.PagamentoDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.Ordine;
import it.unical.ingsw.justeat.db.model.Pagamento;
import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Utente;

public class creaOrdine extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		Utente utente=(Utente) req.getSession().getAttribute("utente");
		Double tot=  (Double) req.getSession().getAttribute("totConsegna");
		String partita_iva=(String) req.getSession().getAttribute("partita_iva_ristorante_ordine");
		
		PagamentoDao pd=factory.getPagamentoDAO();
		Pagamento pagamento=new Pagamento();
		pagamento.setImporto_totale_pagamento(tot);
		pagamento.setUtente(utente);
		
		List<Pagamento> pagamenti=pd.findAll();
		if(pagamenti!=null)
			pagamento.setId_pagamento(pagamenti.size()+2);
		else
			pagamento.setId_pagamento(1);
		
		pd.save(pagamento);
		
		OrdineDao od=factory.getOrdineDAO();
		
		Ordine ordine=new Ordine();
		
		ordine.setCommissioni_ordine(2.00);
		
		List<Ordine> ordini=od.findAll();
		
		if(ordini!=null)
			ordine.setId_ordine(ordini.size()+1);
		else
			ordine.setId_ordine(1);
		
		
		ordine.setPagamento(pagamento);
		ordine.setPietanze(od.comprende(ordine));
		ordine.setPrezzo_totale_ordine(tot);
		
		RistoranteDao rd=factory.getRistoranteDAO();
		Ristorante ristorante=rd.findByPrimaryKey(partita_iva);
		
		ordine.setRistorante(ristorante);
		
		od.save(ordine);
		od.ordine_contenuto_in_effettua(ordine, utente);
		od.ordine_ricevuto_da(ordine);
		List <Pietanza> nuovoOrdine= (List<Pietanza>) req.getSession().getAttribute("carrello");
		ordine.setPietanze(nuovoOrdine);
		
		
		
		
		od.save_pietanze_comprese(ordine);
		
		
		
		List<Ordine> ordini2=od.ordini_dell_utente(utente);

		List <Ordine> ordiniNonArchiviati= (List<Ordine>) req.getSession().getAttribute("Nuovi");
		if(ordiniNonArchiviati!=null)
			ordiniNonArchiviati.add(ordine);
		else
		{
			ordiniNonArchiviati=new LinkedList<>();
			ordiniNonArchiviati.add(ordine);
		}
		
		
		req.getSession().setAttribute("ordini", ordini2);
		
	
		req.getSession().setAttribute("Nuovi", ordiniNonArchiviati);
	
		
		
		
		
		
		RequestDispatcher rde = req.getRequestDispatcher("userOrders.jsp");
		rde.forward(req, resp);
	}

}
