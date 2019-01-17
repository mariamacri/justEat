package it.unical.ingsw.justeat.db.factory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.unical.ingsw.justeat.db.dao.CartaDiCreditoDao;
import it.unical.ingsw.justeat.db.dao.TitolareDao;
import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.Titolare;

public class TitolareDaoJDBC implements TitolareDao {
	private DataSource dataSource;

	public TitolareDaoJDBC(DataSource dataSource) {

		this.dataSource = dataSource;
	}

	@Override
	public void save(Titolare titolare) {

		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into titolare(cf_titolare, nome_titolare, cognome_titolare, indirizzo_titolare,carta_credito_intestata, numero_telefono_titolare,data_nascita_titolare ) values (?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, titolare.getCf_Titolare());
			statement.setString(2, titolare.getNome_Titolare());
			statement.setString(3, titolare.getCognome_Titolare());
			statement.setString(4, titolare.getIndirizzo_Titolare());
			for (CartaDiCredito c : titolare.getCarteDiCredito()) {

				statement.setString(5, c.getNumero_Carta());
			}
			statement.setInt(6, titolare.getNumero_Telefono_Titolare());
			long secs = titolare.getData_Nascita_Titolare().getTime();
			statement.setDate(7, new java.sql.Date(secs));

			statement.executeUpdate();
			this.updateCarte(titolare, connection);

		} catch (SQLException e) {
			if (connection != null) {
				try {
					connection.rollback();
				} catch (SQLException excep) {
					throw new PersistenceException(e.getMessage());
				}
			}
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	}

	@Override
	public Titolare findByPrimaryKey(String cf) {
		Connection connection = this.dataSource.getConnection();
		Titolare titolare = null;
		try {
			PreparedStatement statement;
			String query = "select * from titolare where cf_titolare= ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, cf);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				titolare = new Titolare();
				titolare.setCf_Titolare(result.getString("cf_titolare"));
				titolare.setNome_Titolare(result.getString("nome_titolare"));
				titolare.setCognome_Titolare(result.getString("cognome_titolare"));
				long secs = result.getDate("data_nascita_titolare").getTime();
				titolare.setData_Nascita_Titolare(new java.util.Date(secs));
				titolare.setIndirizzo_Titolare(result.getString("indirizzo_titolare"));
				titolare.setNumero_Telefono_Titolare(result.getInt("numero_telefono_titolare"));
				CartaDiCredito c = new CartaDiCredito();
				c.setNumero_Carta(result.getString("carta_credito_intestata"));
				titolare.addCarta(c);
				titolare.setCarteDiCredito(titolare.getCarteDiCredito());
				// un titolare ha da zero a n carte di credito
				// che qui si devono aggiornare
				// manca l'update delle sue carte di credito
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
		return titolare;
	}

	public void updateCarte(Titolare titolare, Connection connection) throws SQLException {
		CartaDiCreditoDao cartaDao = new CartaDiCreditoDaoJDBC(dataSource);
		for (CartaDiCredito carta : titolare.getCarteDiCredito()) {
			if (cartaDao.findByPrimaryKey(carta.getNumero_Carta()) == null) {
				cartaDao.save(carta);
			}
			// relazione 1 a n si fa così

			String update = "update titolare SET carta_credito_intestata= ? WHERE cf_titolare= ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, titolare.getCf_Titolare());
			statement.setString(2, carta.getNumero_Carta());
			int s = statement.executeUpdate();

		}
//nelle relazioni (n a n) 
//			String titolare = "select nome_titolare from titolare where carta_credito_intestata=? AND cf_titolare=?";
//			PreparedStatement statementIscritto = connection.prepareStatement(iscritto);
//			statementIscritto.setString(1, studente.getMatricola());
//			statementIscritto.setLong(2, corso.getCodice());
//			ResultSet result = statementIscritto.executeQuery();
//			if (result.next()) {
//				String update = "update studente SET corso_codice = ? WHERE id = ?";
//				PreparedStatement statement = connection.prepareStatement(update);
//				statement.setLong(1, corso.getCodice());
//				statement.setLong(2, result.getLong("id"));
//				statement.executeUpdate();
//			} else {
//				String iscrivi = "insert into iscritto(id, matricola_studente, corso_codice) values (?,?,?)";
//				PreparedStatement statementIscrivi = connection.prepareStatement(iscrivi);
//				Long id = IdBroker.getId(connection);
//				statementIscrivi.setLong(1, id);
//				statementIscrivi.setString(2, studente.getMatricola());
//				statementIscrivi.setLong(3, corso.getCodice());
//				statementIscrivi.executeUpdate();
//			}
//		}
	}

	@Override
	public void update(Titolare titolare) {

	}

	@Override
	public void delete(Titolare titolare) {

	}

}
