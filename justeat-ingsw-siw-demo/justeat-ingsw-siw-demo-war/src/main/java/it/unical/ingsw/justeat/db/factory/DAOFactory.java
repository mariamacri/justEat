package it.unical.ingsw.justeat.db.factory;
//modificato
import it.unical.ingsw.justeat.db.dao.CartaDiCreditoDao;
import it.unical.ingsw.justeat.db.dao.CategoriaDao;
import it.unical.ingsw.justeat.db.dao.MenuDao;
import it.unical.ingsw.justeat.db.dao.OrdineDao;
import it.unical.ingsw.justeat.db.dao.PagamentoDao;
import it.unical.ingsw.justeat.db.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.dao.TitolareDao;
import it.unical.ingsw.justeat.db.dao.UtenteDao;

public abstract class DAOFactory {

	// --- List of supported DAO types ---

//	/**
//	 * Numeric constant '1' corresponds to explicit MySQL choice
//	 */
//	public static final int MYSQL = 1;
//	
	/**
	 * Numeric constant '2' corresponds to explicit Postgres choice
	 */
	public static final int POSTGRESQL = 2;

	/**
	 * Numeric constant '3' corresponds to explicit H2 choice
	 */
//	public static final int H2 = 3;

	// --- Actual factory method ---

	/**
	 * Depending on the input parameter this method returns one out of several
	 * possible implementations of this factory spec
	 */
	public static DAOFactory getDAOFactory(int whichFactory) {
		switch (whichFactory) {

//		case MYSQL:
//			return null;//new HsqldbDAOFactory();
		case POSTGRESQL:
			return new PostgresDAOFactory();
//		case H2:
//			return new PostgresDAOFactory();
		default:
			return null;
		}
	}

	// --- Factory specification: concrete factories implementing this spec must
	// provide this methods! ---

	/**
	 * Method to obtain a DATA ACCESS OBJECT for the datatype 'Student'
	 */
	public abstract RistoranteDao getRistoranteDAO();

	public abstract PietanzaDao getPietanzaDAO();

	public abstract CartaDiCreditoDao getCartaDiCreditoDAO();

	public abstract CategoriaDao getCategoriaDAO();
	public abstract OrdineDao getOrdineDAO();

	public abstract TitolareDao getTitolareDAO();
	public abstract UtenteDao getUtenteDAO();
	public abstract MenuDao getMenuDAO();
	public abstract PagamentoDao getPagamentoDAO();

	public abstract it.unical.ingsw.justeat.db.factory.UtilDao getUtilDAO();

}
