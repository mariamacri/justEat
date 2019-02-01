package it.unical.ingsw.justeat.db.factory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;

import it.unical.ingsw.justeat.db.dao.GiornoAttivitaDao;
import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.GiornoAttivita;

public class GiornoAttivitaDaoJDBC implements GiornoAttivitaDao{
	
	private DataSource dataSource;

	public GiornoAttivitaDaoJDBC(DataSource dataSource) {

		this.dataSource = dataSource;
	}
	
	
	
	@Override
	public void delete(GiornoAttivita giorno) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM giornoattivita WHERE partita_iva_ristorante_aprente = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, giorno.getPartita_iva_ristorante_aprente());
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	}
		
	
	@Override
	public void save(GiornoAttivita giorno) {
		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into giornoattivita(orarioapertura, orariochiusura, giorno, partita_iva_ristorante_aprente) values (?,?,?,?)";

			PreparedStatement statement = connection.prepareStatement(insert);

			statement.setTime(1, giorno.getOrarioApertura());
			statement.setTime(2, giorno.getOrarioChiusura());
			statement.setString(3, giorno.getGiorno());
			statement.setString(4, giorno.getPartita_iva_ristorante_aprente());

			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {

				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		
	}
	@Override
	public GiornoAttivita findByPrimaryKey(String giorno, String partita_iva) {
		Connection connection = this.dataSource.getConnection();
		GiornoAttivita giornoAttivita=null;
		try {
			PreparedStatement statement;

			String query = "select * from giornoattivita where giorno = ? and partita_iva_ristorante_aprente=?";
			statement = connection.prepareStatement(query);
			statement.setString(1, giorno);
			statement.setString(2, partita_iva);

			ResultSet result = statement.executeQuery();

			if (result.next()) {
				giornoAttivita =new GiornoAttivita();
				giornoAttivita.setOrarioApertura(result.getTime("orarioapertura"));
				giornoAttivita.setOrarioChiusura(result.getTime("orariochiusura"));
				giornoAttivita.setGiorno(result.getString("giorno"));
				giornoAttivita.setPartita_iva_ristorante_aprente(result.getString("partita_iva_ristorante_aprente"));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		// restituiamo il ristorante che abbiamo creato con il risultato della query

		return giornoAttivita;
	}
	@Override
	public void update(GiornoAttivita giorno) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update  giornoattivita SET  orarioapertura=?, orariochiusura=? WHERE giorno=? and partita_iva_ristorante_aprente=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setTime(1, giorno.getOrarioApertura());
			statement.setTime(2, giorno.getOrarioChiusura());
			statement.setString(3,  giorno.getGiorno());
			statement.setString(4, giorno.getPartita_iva_ristorante_aprente());
			
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		
	}
	
	@Override
	public void delete_giorno_partita_iva(GiornoAttivita giorno) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM giornoattivita WHERE partita_iva_ristorante_aprente = ? and giorno=?";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, giorno.getPartita_iva_ristorante_aprente());
			statement.setString(2, giorno.getGiorno());
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		
	}

}
