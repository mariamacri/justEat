package it.unical.ingsw.justeat.db.persistence;

import java.util.List;

import it.unical.ingsw.justeat.db.model.Feedback;
import it.unical.ingsw.justeat.db.persistence.dao.CartaDiCreditoDao;
import it.unical.ingsw.justeat.db.persistence.dao.CategoriaDao;
import it.unical.ingsw.justeat.db.persistence.dao.FeedbackDao;
import it.unical.ingsw.justeat.db.persistence.dao.GiornoAttivitaDao;
import it.unical.ingsw.justeat.db.persistence.dao.MenuDao;
import it.unical.ingsw.justeat.db.persistence.dao.OrdineDao;
import it.unical.ingsw.justeat.db.persistence.dao.PagamentoDao;
import it.unical.ingsw.justeat.db.persistence.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.persistence.dao.TitolareDao;
import it.unical.ingsw.justeat.db.persistence.dao.UtenteDao;

public class PostgresDAOFactory extends DAOFactory {

	private static DataSource dataSource;

	// --------------------------------------------

	static {
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			// questi vanno messi in file di configurazione!!!
//			dataSource=new DataSource("jdbc:postgresql://52.39.164.176:5432/xx","xx","p@xx");
			// dataSource=new
			 //DataSource("jdbc:postgresql://localhost:5432/JustEat","JustEat","sette77");
			dataSource = new DataSource("jdbc:postgresql://localhost:5432/justeat", "postgres", "sette77");
			//dataSource = new DataSource("jdbc:postgresql://manny.db.elephantsql.com/wmoskzjx", "wmoskzjx", "JCeDRqsQlRcVmouoVe7DPLeyBgn4SuYg");
		} catch (Exception e) {
			System.err.println("PostgresDAOFactory.class: failed to load MySQL JDBC driver\n" + e);
			e.printStackTrace();
		}
	}

	// --------------------------------------------

	@Override
	public RistoranteDao getRistoranteDAO() {
		return new RistoranteDaoJDBC(dataSource);
	}

	@Override
	public PietanzaDao getPietanzaDAO() {
		return new PietanzaDaoJDBC(dataSource);
	}

	@Override
	public CartaDiCreditoDao getCartaDiCreditoDAO() {
		return new CartaDiCreditoDaoJDBC(dataSource);
	}

//	
	@Override
	public CategoriaDao getCategoriaDAO() {
		return new CategoriaDaoJDBC(dataSource);
	}

	@Override
	public TitolareDao getTitolareDAO() {
		return new TitolareDaoJDBC(dataSource);
	}

	@Override
	public UtenteDao getUtenteDAO() {
		return new UtenteDaoJDBC(dataSource);
	}
	
	@Override
	public MenuDao getMenuDAO() {
		return new MenuDaoJDBC(dataSource);
	}
	
	@Override
	public PagamentoDao getPagamentoDAO() {
		return new PagamentoDaoJDBC(dataSource);
	}
	
	@Override
	public UtilDao getUtilDAO() {
		return new UtilDao(dataSource);
	}

	// ONLY FOR TEST
	public DataSource getDataSource() {
		return dataSource;
	}

	@Override
	public OrdineDao getOrdineDAO() {
		
		return new OrdineDaoJDBC(dataSource);
	}
	
	@Override
	public GiornoAttivitaDao getGiornoAttivitaDao() {
		return new GiornoAttivitaDaoJDBC(dataSource);
	}

	@Override
	public FeedbackDao getFeedbackDAO() {
		return new FeedbackDaoJDBC(dataSource) ;
	}

}
