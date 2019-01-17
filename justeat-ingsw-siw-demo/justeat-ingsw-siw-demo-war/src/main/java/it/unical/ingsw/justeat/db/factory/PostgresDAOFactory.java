package it.unical.ingsw.justeat.db.factory;

import it.unical.ingsw.justeat.db.dao.CartaDiCreditoDao;
import it.unical.ingsw.justeat.db.dao.CategoriaDao;
import it.unical.ingsw.justeat.db.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.dao.TitolareDao;

public class PostgresDAOFactory extends DAOFactory {

	private static DataSource dataSource;

	// --------------------------------------------

	static {
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			// questi vanno messi in file di configurazione!!!
//			dataSource=new DataSource("jdbc:postgresql://52.39.164.176:5432/xx","xx","p@xx");
			// dataSource=new
			// DataSource("jdbc:postgresql://localhost:5432/JustEat","JustEat","sette77");
			dataSource = new DataSource("jdbc:postgresql://localhost:5432/justeat", "postgres", "sette77");
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

//	@Override
//	public DipartimentoDao getDipartimentoDAO() {
//		return new DipartimentoDaoJDBC(dataSource);
//	}
//	
	@Override
	public UtilDao getUtilDAO() {
		return new UtilDao(dataSource);
	}

	// ONLY FOR TEST
	public DataSource getDataSource() {
		return dataSource;
	}

}
