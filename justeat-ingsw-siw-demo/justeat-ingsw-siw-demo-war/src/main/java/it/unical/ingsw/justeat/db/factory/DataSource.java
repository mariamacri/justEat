package it.unical.ingsw.justeat.db.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;

public class DataSource {
	final private String dbURI;// = "jdbc:postgresql://localhost:port/namedb";
	final private String userName;// = "postgres";
	final private String password;// = "postgres";

	public DataSource(String dbURI, String userName, String password) {
		this.dbURI = dbURI;
		this.userName = userName;
		this.password = password;
	}

	public Connection getConnection() throws PersistenceException {
		Connection connection = null;
		try {
			connection = DriverManager.getConnection(dbURI, userName, password);

		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		}
		return connection;
	}
}
