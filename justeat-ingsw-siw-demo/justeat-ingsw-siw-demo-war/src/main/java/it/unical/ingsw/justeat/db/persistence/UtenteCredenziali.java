package it.unical.ingsw.justeat.db.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.unical.ingsw.justeat.db.model.Utente;

public class UtenteCredenziali extends Utente{
	private DataSource dataSource;
	
	
	public UtenteCredenziali(DataSource datasource) {
		this.dataSource = dataSource;
	}
	
	public String getPassword() {
		Connection connection = this.dataSource.getConnection();
		try {
			PreparedStatement statement;
			String query = "select * from utente where email_utente = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, this.getEmail_Utente());
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				return result.getString("password");
			}
			
		}catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}	
		return null;
	}

}
