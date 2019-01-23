package it.unical.ingsw.justeat.db.factory;
//modificato
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.unical.ingsw.justeat.db.dao.PietanzaDao;
import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.Pietanza;

public class PietanzaDaoJDBC implements PietanzaDao {
	private DataSource dataSource;

	public PietanzaDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public void save(Pietanza pietanza) {

		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into pietanza(prezzo_pietanza,nome_pietanza,descrizione_pietanza) values (?,?,?)";

			PreparedStatement statement = connection.prepareStatement(insert);

			statement.setDouble(1, pietanza.getPrezzo());
			statement.setString(2, pietanza.getNome());
			statement.setString(3, pietanza.getDescrizione());

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
	public Pietanza findByPrimaryKey(String nome) {
		Connection connection = this.dataSource.getConnection();
		Pietanza pietanza = null;
		try {
			PreparedStatement statement;
			// anche qui il ? è per evitare sql injection
			String query = "select * from pietanza where nome_pietanza = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, nome);
			// eseguiamo la query e otteniamo un result set che è fatto di tante
			// righe(tuple)
			ResultSet result = statement.executeQuery();
			// dovremmo iterare quindi tutte le righe del resultSet finchè si può e trovare
			// il ristorante con quel nome, il che significa che visto che dobbiamo
			// ritornare il ristorante con quel nome dobbiamo creare un nuovo oggetto
			// ristorante e settargli i valori con ciò che ci viene restituito dal result
			// set in modo da evitare sql injection

			if (result.next()) {
				pietanza = new Pietanza();
				pietanza.setPrezzo(result.getDouble("prezzo_pietanza"));
				pietanza.setNome(result.getString("nome_pietanza"));
				pietanza.setDescrizione(result.getString("descrizione_pietanza"));

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

		return pietanza;
	}

	@Override
	public void update(Pietanza pietanza) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update  pietanza SET  descrizione_pietanza= ?, prezzo_pietanza=? WHERE nome_pietanza=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, pietanza.getNome());
			statement.setString(2, pietanza.getDescrizione());
			statement.setDouble(3, pietanza.getPrezzo());
			
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
	public void delete(Pietanza pietanza) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM pietanza WHERE nome_pietanza = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, pietanza.getNome());
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
