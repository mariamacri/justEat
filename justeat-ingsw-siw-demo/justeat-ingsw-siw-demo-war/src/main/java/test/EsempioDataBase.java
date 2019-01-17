package test;

import it.unical.ingsw.justeat.db.dao.TitolareDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.factory.DataSource;
import it.unical.ingsw.justeat.db.factory.UtilDao;

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
		DataSource dataSource = new DataSource("jdbc:postgresql://localhost:5432/justEat", "mary", "postgres");
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtilDao util = factory.getUtilDAO();
//		util.dropDatabase();
//		util.createDatabase();

		// ***************************************************************************************************+
		// test ristorante
		// RistoranteDao ristoranteDao = factory.getRistoranteDAO();

//		Ristorante ristorante = new Ristorante();
//		ristorante.setNome("pomodoro_rosso");
//		ristorante.setIndirizzo("via G. Cesare");

//		Ristorante ristorante1 = new Ristorante();
//		ristorante1.setNome("pomodoro_rosso2");
//		ristorante1.setIndirizzo("via G. Cesare");

		// ristoranteDao.save(ristorante);
		// System.out.println(ristoranteDao.findByPrimaryKey("pomodoro_rosso").toString());

		// System.out.println("ALL DONE");
//*********************************************************************************************
//test di pietanza 
//		Pietanza pietanza = new Pietanza();
//		pietanza.setNome("");
//		pietanza.setPrezzo(12.00);
//		pietanza.setDescrizione("ciao");
		// PietanzaDao pietanzaDao = factory.getPietanzaDAO();
		// pietanzaDao.save(pietanza);
		// System.out.println(pietanzaDao.findByPrimaryKey("margherita").toString());
//********************************************************************************************
		// test di carta di credito ok
//		CartaDiCredito c = new CartaDiCredito();
//		c.setNumero_Carta("1234");
//		c.setSaldo_Disponibile(00.00);
//		Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Europe/Rome"), Locale.ITALY);
//		java.util.Date today = calendar.getTime();
//
//		c.setScadenza(today);
//
//		c.setTipo_Circuito_Carta("paypal");
//		CartaDiCreditoDao cartaDao = factory.getCartaDiCreditoDAO();
		// cartaDao.save(c);
		// System.out.println(cartaDao.findByPrimaryKey("1234").toString());
//******************************************************************************************************

		// test di categoria ok
//		Categoria c1 = new Categoria();
//		c1.setId_Categoria(1);
//		c1.setNome_Categoria("Pizze");
//		CategoriaDao categoriaDao = factory.getCategoriaDAO();
//		categoriaDao.save(c1);
//		System.out.println(categoriaDao.findByPrimaryKey(1).toString());
		// fine test
// ******************************************************************************************************
//test titolare ok 
		// Titolare t = new Titolare();
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
//
//		c.setScadenza(today1);
//
//		c.setTipo_Circuito_Carta("paypal");
//		t.addCarta(c);
//
//		t.setCarteDiCredito(t.getCarteDiCredito());

		TitolareDao titolareDao = factory.getTitolareDAO();
//		titolareDao.save(t);
		System.out.println(titolareDao.findByPrimaryKey("mcrmra96b69f112j").toString());
		// fine test
	}

}
