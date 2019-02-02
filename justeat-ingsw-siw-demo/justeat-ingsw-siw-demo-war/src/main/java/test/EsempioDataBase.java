package test;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

import it.unical.ingsw.justeat.db.dao.CartaDiCreditoDao;
import it.unical.ingsw.justeat.db.dao.CategoriaDao;
import it.unical.ingsw.justeat.db.dao.FeedbackDao;
import it.unical.ingsw.justeat.db.dao.GiornoAttivitaDao;
import it.unical.ingsw.justeat.db.dao.MenuDao;
import it.unical.ingsw.justeat.db.dao.OrdineDao;
import it.unical.ingsw.justeat.db.dao.PagamentoDao;
import it.unical.ingsw.justeat.db.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.dao.TitolareDao;
import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.factory.DataSource;
import it.unical.ingsw.justeat.db.factory.UtilDao;
import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.Categoria;
import it.unical.ingsw.justeat.db.model.Feedback;
import it.unical.ingsw.justeat.db.model.Menu;
import it.unical.ingsw.justeat.db.model.Ordine;
import it.unical.ingsw.justeat.db.model.Pagamento;
import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Titolare;
import it.unical.ingsw.justeat.db.model.Utente;

public class EsempioDataBase {

	// public static void main(String args[]) {
//		try {
//			Class.forName("org.postgresql.Driver").newInstance();
//			DataSource dataSource = new DataSource("jdbc:postgresql://localhost:5432/justEat", "mary", "postgres");

//			CorsoDiLaureaDao corsoDiLaureaDao = new CorsoDiLaureaDaoJDBC(dataSource);
//			DipartimentoDao dipartimentoDao = new DipartimentoDaoJDBC(dataSource);
//			CorsoDao corsoDao = new CorsoDaoJDBC(dataSource);
//			Corso corso1 = corsoDao.findAll().get(0);
//			Corso corso2 = corsoDao.findAll().get(1);
//
//			Dipartimento dipartimento1 = new Dipartimento("Matematica e Informatica");
//			Dipartimento dipartimento2 = new Dipartimento("Biologia");
//
//			dipartimentoDao.save(dipartimento1);
//			dipartimentoDao.save(dipartimento2);
//
//			CorsoDiLaurea corsoDiLaurea1 = new CorsoDiLaurea();
//			corsoDiLaurea1.setNome("Informatica");
//			corsoDiLaurea1.addCorso(corso1);
//			corsoDiLaurea1.setDipartimento(dipartimento1);
//
//			CorsoDiLaurea corsoDiLaurea2 = new CorsoDiLaurea();
//			corsoDiLaurea2.setNome("Scienze Biologiche");
//			corsoDiLaurea2.addCorso(corso1);
//			corsoDiLaurea2.addCorso(corso2);
//			corsoDiLaurea2.setDipartimento(dipartimento2);
//
//			corsoDiLaureaDao.save(corsoDiLaurea1);
//			corsoDiLaureaDao.save(corsoDiLaurea2);

//}
	public static void main(String args[]) {
		try {
			Class.forName("org.postgresql.Driver").newInstance();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DataSource dataSource = new DataSource("jdbc:postgresql://localhost:5432/justeat", "postgres", "sette77");
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtilDao util = factory.getUtilDAO();
		//test feedback ok
//		 RistoranteDao ristoranteDao = factory.getRistoranteDAO();
//		 UtenteDao utenteDao = factory.getUtenteDAO();
//		 FeedbackDao feedackDao=factory.getFeedbackDAO();
//		 //mi ritorna il ristorante Riccardo
//		 Ristorante r=ristoranteDao.findByPrimaryKey("123");
//		 Utente m=utenteDao.findByPrimaryKey("rocco@rocco.com");
//		 Feedback f=new Feedback();
//		 f.setDescrizione("ristorante molto riccardissimo");
//		 f.setId_feedback(1);
//		 f.setNumero_stelle(5);
//		 f.setRistorante_recensito(r);
//		 f.setUtente_recensore(m);
//		 feedackDao.save(f);
//		 System.out.println(feedackDao.findByPrimaryKey(1));
		
		
		
		
		
		
//		GiornoAttivitaDao gd=factory.getGiornoAttivitaDao();
//		
//		GiornoAtivita giorno=new GiornoAtivita();
//		
//		giorno.setOrarioApertura(new Time(01,01,01));
//		giorno.setOrarioChiusura(new Time(01,01,01));
//		giorno.setGiorno("prova");
//		giorno.setPartita_iva_ristorante_aprente("123");
//		
//		gd.delete(giorno);
		//String partita_iva=req.getParameter("partita_iva");
		
		//DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
//		RistoranteDao rd=factory.getRistoranteDAO();
//		
//		//Ristorante ristorante=rd.findByEmail("rocco@rocco.com");
//		Ristorante ristorante=rd.findByPrimaryKey("123");
//		List<Pietanza> pietanze= rd.pietanze_del_ristorante(ristorante);
//		//for(Pietanza p: pietanze)
//		System.out.println(pietanze.toString());
		
		
		
		
		//prova lista ordini
		UtenteDao ud=factory.getUtenteDAO();
		Utente utente=ud.findByPrimaryKey("rocco@rocco.com");
		OrdineDao rd=factory.getOrdineDAO();
		List<Ordine> ordini=rd.ordini_dell_utente(utente);
		
		
		System.out.println(ordini.toString());
		
//		RistoranteDao ristoranteDao=factory.getRistoranteDAO();
//		//Ristorante r=ristoranteDao.findByPrimaryKey("123");
//		
//		List<Ristorante> trova=ristoranteDao.findByCitta("pollo");
//		for(Ristorante r: trova)
//			System.out.println(r.toString());
		//ristoranteDao.delete(r);
//		Utente u=new Utente();
//		u.setEmail_Utente("rocco@rocco.com");
//		u.setNome_Utente("rocco");
//		u.setIndirizzo_Utente("rocco");
//		u.setCognome_Utente("rocco");
//		u.setNumero_telefono_utente(123);
//		
//		UtenteDao ud=factory.getUtenteDAO();
//		ud.update(u);
		
		
//		PietanzaDao pd=factory.getPietanzaDAO();
//		
//		Pietanza p=new Pietanza();
//		p.setNome("margherita");
//		
//		Ristorante r=new Ristorante();
//		
//		r.setPartita_Iva("123");
//		
//		pd.pietanza_contenuta_in(p, r);
//		Dao pd=factory.getPietanzaDAO();
//		
//		
//		
		
		
		
		
		
		
		
		//test pagamento ok
		//PagamentoDao p=factory.getPagamentoDAO();
//		Pagamento pagamento=new Pagamento();
//		pagamento.setId_pagamento(9);
//		pagamento.setSconto(0.75);
//		UtenteDao utente =factory.getUtenteDAO();
//		
//		pagamento.setUtente(utente.findByPrimaryKey("mariamacri@gmail.com"));
//		pagamento.setImporto_totale_pagamento(10.00);
//		p.save(pagamento);
		//System.out.println(p.findByPrimaryKey(9));
		
//************************************************
		//fine test pagamento
		
		//test ordine
		//OrdineDao ordineDao= factory.getOrdineDAO();
		
//		util.dropDatabase();
//		util.createDatabase();

		// ***************************************************************************************************+
		// test ristorante
		
//		Ristorante ristorante = new Ristorante();
//		ristorante.setNome("pomodoro_rosso");
//		ristorante.setIndirizzo("via G. Cesare");
//		Ristorante ristorante1 = new Ristorante();
//		ristorante1.setNome("pomodoro_rosso2");
//		ristorante1.setIndirizzo("via G. Cesare");
//		 ristoranteDao.save(ristorante);
//		 System.out.println(ristoranteDao.findByPrimaryKey("pomodoro_rosso").toString());
//		 System.out.println("ALL DONE");
//*********************************************************************************************
//test di pietanza 
//		Pietanza pietanza = new Pietanza();
//		pietanza.setNome("margherita");
//		pietanza.setPrezzo(12.00);
//		pietanza.setDescrizione("ciao");
//		 PietanzaDao pietanzaDao = factory.getPietanzaDAO();
//		 pietanzaDao.save(pietanza);
//		 System.out.println(pietanzaDao.findByPrimaryKey("margherita").toString());
//********************************************************************************************
		// test di carta di credito ok
//		CartaDiCredito c = new CartaDiCredito();
//		c.setNumero_Carta("1234");
//		c.setSaldo_Disponibile(00.00);
//		Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Europe/Rome"), Locale.ITALY);
//		java.util.Date today = calendar.getTime();
//		c.setScadenza(today);
//		c.setTipo_Circuito_Carta("paypal");
//		CartaDiCreditoDao cartaDao = factory.getCartaDiCreditoDAO();
//		 cartaDao.save(c);
//		 System.out.println(cartaDao.findByPrimaryKey("1234").toString());
//******************************************************************************************************

		// test di categoria ok
//		Categoria c1 = new Categoria();
//		c1.setId_Categoria(1);
//		c1.setNome_Categoria("Pizze");
//		CategoriaDao categoriaDao = factory.getCategoriaDAO();
//		categoriaDao.save(c1);
//		System.out.println(categoriaDao.findByPrimaryKey(1).toString());
//		// fine test
// ******************************************************************************************************
//test titolare ok 
//		Titolare t = new Titolare();
//		t.setCf_Titolare("mcrmri96b69f112j");
//		t.setNome_Titolare("Maria");
//		t.setCognome_Titolare("Macri");
//		t.setIndirizzo_Titolare("via pietro nenni 20");
//		Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Europe/Rome"), Locale.ITALY);
//		java.util.Date today = calendar.getTime();
//		t.setData_Nascita_Titolare(today);
//		t.setNumero_Telefono_Titolare(320);
//		CartaDiCredito c = new CartaDiCredito();
//		c.setNumero_Carta("1234");
//		c.setSaldo_Disponibile(00.00);
//		Calendar calendar1 = Calendar.getInstance(TimeZone.getTimeZone("Europe/Rome"), Locale.ITALY);
//		java.util.Date today1 = calendar1.getTime();
//		c.setScadenza(today1);
//		c.setTipo_Circuito_Carta("paypal");
//		t.addCarta(c);
//		t.setCarteDiCredito(t.getCarteDiCredito());
//		TitolareDao titolareDao = factory.getTitolareDAO();
	//	titolareDao.save(t);
//	System.out.println(titolareDao.findByPrimaryKey("mcrmri96b69f112j").toString());
		// fine test
		// ******************************************************************************************************	
		//test utente 
//		Utente utente = new Utente();
//		utente.setNome_Utente("maria");
//		utente.setCognome_Utente("macrì");
//		utente.setIndirizzo_Utente("via g.cesare");
//		utente.setPassword("aSz1*x35x");
//		CartaDiCreditoDao c=factory.getCartaDiCreditoDAO();
//		CartaDiCredito c1=c.findByPrimaryKey("1234");
//		 utente.setCarta_Credito_Usata(c1);
//		 utente.setNumero_telefono_utente(345);
//		 utente.setEmail_Utente("mariamacri@gmail.com");
		 //UtenteDao utenteDao=factory.getUtenteDAO();
		// utenteDao.save(utente);
		 //System.out.println(utenteDao.findByPrimaryKey("mariamacri@gmail.com"));
		 
		// ******************************************************************************************************	
//test ristorante 
//		Ristorante ristorante = new Ristorante();
//		ristorante.setNome_Ristorante("L'oasi del Gabbiano");
//		ristorante.setIndirizzo_Ristorante("via degli uccelli n.100");
//		ristorante.setIndirizzo_Legale("via C.Colombo, Rende");
//		ristorante.setCoordinate_Bancarie_Ristorante("0123");
//		ristorante.setPartita_Iva("0123456789");
//		TitolareDao titolareDao=factory.getTitolareDAO();
//		Titolare titolare=titolareDao.findByPrimaryKey("mcrmri96b69f112j");
//		ristorante.setTitolare(titolare);
//		UtenteDao utenteDao=factory.getUtenteDAO();
//		Utente utente=utenteDao.findByPrimaryKey("mariamacri@gmail.com");
//		ristorante.setUtente_Proprietario(utente);
//		ristorante.setDescrizione_Ristorante("si mangia benissimo sia il pesce che la carne");
		
//		RistoranteDao ristoranteDao= factory.getRistoranteDAO();
	//	ristoranteDao.save(ristorante);
	//	 System.out.println(ristoranteDao.findByPrimaryKey("0123456789"));	
	//********************************************************************************************	
		//test menu ok
//		MenuDao menuDao =factory.getMenuDAO();
//		Menu menu = new Menu();
//		menu.setDescrizionemenu("menu di pizze");
//		menu.setIdmenu(1);
//		menuDao.save(menu);
//		System.out.println(menuDao.findByPrimaryKey(1).toString());
		
//		pietanza.setNome("margherita");
//		pietanza.setPrezzo(12.00);
	//fine test	
		
		//***************************************************************************
		
		
	}

}
