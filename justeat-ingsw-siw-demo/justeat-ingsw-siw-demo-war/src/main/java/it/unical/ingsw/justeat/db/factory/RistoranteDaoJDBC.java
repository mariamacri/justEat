package it.unical.ingsw.justeat.db.factory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.Ristorante;

public class RistoranteDaoJDBC implements RistoranteDao {

	private DataSource dataSource;

	public RistoranteDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public void save(Ristorante ristorante) {
		Connection connection = this.dataSource.getConnection();
		try {
			// il ? si fa per evitare attacchi di sql injection

			String insert = "insert into ristorante(nome, indirizzo) values (?,?)";
			// per eseguire la query dobbiamo creare un oggetto di tipo prepared statement,
			// che serve per passare in input a postgres la query
			// in modo da poterla effettuare
			// prepareStatement prende in input una query
			PreparedStatement statement = connection.prepareStatement(insert);
			// li settiamo così perchè cosi evitiamo sql injection
			statement.setString(1, ristorante.getNome());
			statement.setString(2, ristorante.getIndirizzo());
			// esegue la query che abbiamo passando in ingresso al prepared statement
			// ritorna un oggetto di tipo ResultSet in una query normale..
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				// chiudiamo sempre la connessione
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}

	}

	@Override
	public Ristorante findByPrimaryKey(String nome) {
		Connection connection = this.dataSource.getConnection();
		Ristorante ristorante = null;
		try {
			PreparedStatement statement;
			// anche qui il ? è per evitare sql injection
			String query = "select * from ristorante where nome = ?";
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
				ristorante = new Ristorante();

				ristorante.setNome(result.getString("nome"));
				ristorante.setIndirizzo(result.getString("indirizzo"));

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

		return ristorante;
	}

	@Override
	public void update(Ristorante ristorante) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Ristorante ristorante) {
		// TODO Auto-generated method stub

	}

}
