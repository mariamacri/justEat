package it.unical.ingsw.justeat.db.factory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Titolare;
import it.unical.ingsw.justeat.db.model.Utente;

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

			String insert = "insert into ristorante(nome_ristorante, indirizzo_ristorante, indirizzo_legale, partita_iva, coordinate_bancarie_ristorante,codice_fiscale_titolare, email_utenteregistrato, descrizione_ristorante) values (?,?)";
			// per eseguire la query dobbiamo creare un oggetto di tipo prepared statement,
			// che serve per passare in input a postgres la query
			// in modo da poterla effettuare
			// prepareStatement prende in input una query
			PreparedStatement statement = connection.prepareStatement(insert);
			// li settiamo così perchè cosi evitiamo sql injection
			statement.setString(1, ristorante.getNome_Ristorante());
			statement.setString(2, ristorante.getIndirizzo_Ristorante());
			statement.setString(3, ristorante.getIndirizzo_Legale());
			statement.setString(4, ristorante.getPartita_Iva());
			statement.setString(5, ristorante.getCoordinate_Bancarie_Ristorante());
			statement.setString(6, ristorante.getTitolare().getCf_Titolare());
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
	// fare la query che cerca tutti i ristoranti che corrispondono a quell indirizzo
	@Override
	public Ristorante findByPrimaryKey(String partita_iva) {
		Connection connection = this.dataSource.getConnection();
		Ristorante ristorante = null;
		try {
			PreparedStatement statement;
			// anche qui il ? è per evitare sql injection
			String query = "select * from ristorante where partita_iva = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, partita_iva);
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

				ristorante.setNome_Ristorante(result.getString("nome_ristorante"));
				ristorante.setIndirizzo_Ristorante(result.getString("indirizzo_ristorante"));
				ristorante.setIndirizzo_Legale(result.getString("indirizzo_legale"));
				ristorante.setCoordinate_Bancarie_Ristorante(result.getString("coordinate_bancarie_ristorante"));				
				Titolare titolare=new Titolare();
				titolare.setCf_Titolare(result.getString("cf_titolare"));
				ristorante.setTitolare(titolare);	
				Utente utente=new Utente(); 
				utente.setEmail_Utente(result.getString("email_utenteregistrato"));
				ristorante.setUtente_Proprietario(utente);
				ristorante.setDescrizione_Ristorante(result.getString("descrizione_ristorante"));
				
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
		

	}

	@Override
	public void delete(Ristorante ristorante) {
		// TODO Auto-generated method stub

	}

}
