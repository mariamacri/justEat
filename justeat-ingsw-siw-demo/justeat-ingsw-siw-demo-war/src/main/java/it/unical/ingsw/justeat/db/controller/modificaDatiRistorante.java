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
import it.unical.ingsw.justeat.db.persistence.dao.CategoriaDao;
import it.unical.ingsw.justeat.db.persistence.dao.GiornoAttivitaDao;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;

public class modificaDatiRistorante extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String nomeAttivita = req.getParameter("nomeAttivita");
		String telefonoAttivita = req.getParameter("telefonoAttivita");
		String indirizzoAttivita = req.getParameter("indirizzoAttivita");
		String descrizione=req.getParameter("descrizione");
		String citta=req.getParameter("citta");
		String coordinateBancarie = req.getParameter("coordinateBancarie");
		String lun=req.getParameter("lun");
		String mar=req.getParameter("mar");
		String mer=req.getParameter("mer");
		String gio=req.getParameter("gio");
		String ven=req.getParameter("ven");
		String sab=req.getParameter("sab");
		String dom=req.getParameter("dom");
		String spesa=req.getParameter("spesa");
		Double minima=Double.parseDouble(spesa);
		
		
		
		
		
		
		
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
		ristorante.setDescrizione_Ristorante(descrizione);
		ristorante.setSpesa_minima(minima);
		rd.update(ristorante);
		
		CategoriaDao cd=factory.getCategoriaDAO();
		boolean scelta=false;
		String italiana=req.getParameter("italiana");
		int ita;
		if(italiana!=null) {
			ita=Integer.parseInt(italiana);
			cd.tipo_cucina_ristorante(ita, ristorante.getPartita_Iva());
			scelta=true;
		}
		String orientale=req.getParameter("orientale");
		int ori;
		if(orientale!=null) {
			ori=Integer.parseInt(orientale);
			cd.tipo_cucina_ristorante(ori, ristorante.getPartita_Iva());
			scelta=true;
		}
		String fastfood=req.getParameter("fastfood");
		int fast;
		if(fastfood!=null) {
			fast=Integer.parseInt(fastfood);
			cd.tipo_cucina_ristorante(fast, ristorante.getPartita_Iva());
			scelta=true;
		}
		String pizzeria=req.getParameter("pizzeria");
		int pizz;
		if(pizzeria!=null) {
			pizz=Integer.parseInt(pizzeria);
			cd.tipo_cucina_ristorante(pizz, ristorante.getPartita_Iva());
			scelta=true;
		}
		String bevande=req.getParameter("bevande");
		int bev;
		if(bevande!=null) {
			bev=Integer.parseInt(bevande); 
			cd.tipo_cucina_ristorante(bev, ristorante.getPartita_Iva());
			scelta=true;
		}
		String braceria=req.getParameter("braceria");
		int bra;
		if(braceria!=null) {
			bra=Integer.parseInt(braceria);
			cd.tipo_cucina_ristorante(bra, ristorante.getPartita_Iva());
			scelta=true;
		}
		String altro=req.getParameter("altro");
		int alt;
		if(altro!=null) {
			alt=Integer.parseInt(altro);
			cd.tipo_cucina_ristorante(alt, ristorante.getPartita_Iva());
			scelta=true;
		}
		
		if(scelta==true)
		{
			cd.delete_tipo_cucina(1, ristorante.getPartita_Iva());
		}
		
		
		GiornoAttivitaDao gd=factory.getGiornoAttivitaDao();
		List<GiornoAttivita> giorni=new LinkedList<GiornoAttivita>();
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
		if(!giorni.isEmpty())
			req.getSession().setAttribute("giorni", giorni);
		req.getSession().setAttribute("ristor",ristorante);
		
		RequestDispatcher reqDisp=req.getRequestDispatcher("restaurantInfo.jsp");
		reqDisp.forward(req, resp);
		
		
		
	}
}
