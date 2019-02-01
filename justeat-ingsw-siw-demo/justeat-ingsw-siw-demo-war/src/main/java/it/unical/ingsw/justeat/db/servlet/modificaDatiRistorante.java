package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;
import java.sql.Time;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import it.unical.ingsw.justeat.db.dao.GiornoAttivitaDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.GiornoAttivita;
import it.unical.ingsw.justeat.db.model.Ristorante;

public class modificaDatiRistorante extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String nomeAttivita = req.getParameter("nomeAttivita");
		String telefonoAttivita = req.getParameter("telefonoAttivita");
		String indirizzoAttivita = req.getParameter("indirizzoAttivita");

		String citta=req.getParameter("citta");
		String coordinateBancarie = req.getParameter("coordinateBancarie");
		String lun=req.getParameter("lun");
		String mar=req.getParameter("mar");
		String mer=req.getParameter("mer");
		String gio=req.getParameter("gio");
		String ven=req.getParameter("ven");
		String sab=req.getParameter("sab");
		String dom=req.getParameter("dom");
		
		Time apertura;
		Time chiusura;
		
		String orarioApertura=req.getParameter("orarioApertura");
		if(orarioApertura.length()==5)
			apertura=Time.valueOf(orarioApertura+":00");
		else
			apertura=Time.valueOf(orarioApertura);
		
		
		String orarioChiusura=req.getParameter("orarioChiusura");
		if(orarioChiusura.length()==5)
			chiusura=Time.valueOf(orarioChiusura+":00");
		else
			chiusura=Time.valueOf(orarioChiusura);
		
		
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RistoranteDao rd = factory.getRistoranteDAO();
		Ristorante ristorante = rd.findByEmail(email);
		ristorante.setNome_Ristorante(nomeAttivita);
		ristorante.setNumero_Telefono_Ristorante(Integer.parseInt(telefonoAttivita));
		ristorante.setIndirizzo_Ristorante(indirizzoAttivita);
		ristorante.setCitta_Ristorante(citta);
		ristorante.setCoordinate_Bancarie_Ristorante(coordinateBancarie);
		
		rd.update(ristorante);
		
		
		GiornoAttivitaDao gd=factory.getGiornoAttivitaDao();
		List<GiornoAttivita> giorni=new LinkedList<>();
		GiornoAttivita giorno;
		
		if(lun!=null) {
			giorno=gd.findByPrimaryKey(lun, ristorante.getPartita_Iva());
			if(giorno==null) {
				giorno=new GiornoAttivita();
				giorno.setGiorno(lun);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.save(giorno);
				giorni.add(giorno);
			}
			
			else {
				giorno.setGiorno(lun);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.update(giorno);
				giorni.add(giorno);
			}
		}
		
		if(mar!=null) {
			giorno=gd.findByPrimaryKey(mar, ristorante.getPartita_Iva());
			if(giorno==null) {
				giorno=new GiornoAttivita();
				giorno.setGiorno(mar);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.save(giorno);
				giorni.add(giorno);
			}
			
			else {
				giorno.setGiorno(mar);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.update(giorno);
				giorni.add(giorno);
			}
		}
		
		if(mer!=null) {
			giorno=gd.findByPrimaryKey(mer, ristorante.getPartita_Iva());
			if(giorno==null) {
				giorno=new GiornoAttivita();
				giorno.setGiorno(mer);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.save(giorno);
				giorni.add(giorno);
			}
			
			else {
				giorno.setGiorno(mer);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.update(giorno);
				giorni.add(giorno);
			}
		}
		
		if(gio!=null) {
			giorno=gd.findByPrimaryKey(gio, ristorante.getPartita_Iva());
			if(giorno==null) {
				giorno=new GiornoAttivita();
				giorno.setGiorno(gio);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.save(giorno);
				giorni.add(giorno);
			}
			
			else {
				giorno.setGiorno(gio);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.update(giorno);
				giorni.add(giorno);
			}
		}
		
		if(ven!=null) {
			giorno=gd.findByPrimaryKey(ven, ristorante.getPartita_Iva());
			if(giorno==null) {
				giorno=new GiornoAttivita();
				giorno.setGiorno(ven);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.save(giorno);
				giorni.add(giorno);
			}
			
			else {
				giorno.setGiorno(ven);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.update(giorno);
				giorni.add(giorno);
			}
		}
		
		if(sab!=null) {
			giorno=gd.findByPrimaryKey(sab, ristorante.getPartita_Iva());
			if(giorno==null) {
				giorno=new GiornoAttivita();
				giorno.setGiorno(sab);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.save(giorno);
				giorni.add(giorno);
			}
			
			else {
				giorno.setGiorno(sab);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.update(giorno);
				giorni.add(giorno);
			}
		}
		
		if(dom!=null) {
			giorno=gd.findByPrimaryKey(dom, ristorante.getPartita_Iva());
			if(giorno==null) {
				giorno=new GiornoAttivita();
				giorno.setGiorno(dom);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.save(giorno);
				giorni.add(giorno);
			}
			
			else {
				giorno.setGiorno(dom);
				giorno.setPartita_iva_ristorante_aprente(ristorante.getPartita_Iva());
				giorno.setOrarioApertura(apertura);
				giorno.setOrarioChiusura(chiusura);
				
				gd.update(giorno);
				giorni.add(giorno);
			}
		}
		req.getSession().setAttribute("giorni", giorni);
		req.getSession().setAttribute("ristor",ristorante);
		
		RequestDispatcher reqDisp=req.getRequestDispatcher("restaurantInfo.jsp");
		reqDisp.forward(req, resp);
		
		
		
	}
}
