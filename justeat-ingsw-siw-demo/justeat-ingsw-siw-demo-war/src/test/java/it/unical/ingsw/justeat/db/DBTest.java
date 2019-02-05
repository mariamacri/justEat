package it.unical.ingsw.justeat.db;

import java.sql.Connection;
import java.sql.ResultSet;

import org.junit.Test;

import it.unical.ingsw.justeat.db.persistence.DAOFactory;
import it.unical.ingsw.justeat.db.persistence.PostgresDAOFactory;

public class DBTest {

	@Test
	public void test() throws Exception {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		PostgresDAOFactory pgFactory = (PostgresDAOFactory)factory;
		Connection c = pgFactory.getDataSource().getConnection();
		ResultSet rs = c.createStatement().executeQuery("SELECT 'Hello world'");
	}
	
}
