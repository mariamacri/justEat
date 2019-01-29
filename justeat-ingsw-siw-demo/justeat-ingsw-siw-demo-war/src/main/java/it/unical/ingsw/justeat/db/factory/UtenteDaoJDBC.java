package it.unical.ingsw.justeat.db.factory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import it.unical.ingsw.justeat.db.dao.CartaDiCreditoDao;
import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.Titolare;
import it.unical.ingsw.justeat.db.model.Utente;
//modificato
public class UtenteDaoJDBC implements UtenteDao {

	private DataSource dataSource;

	public UtenteDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void save(Utente utente) {
		Connection connection = this.dataSource.getConnection();
		try {
			String insert = "insert into utente(email_utente, nome_utente, cognome_utente, indirizzo_utente, password,carta_di_credito_usata, numero_telefono_utente) values (?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, utente.getEmail_Utente());
			statement.setString(2, utente.getNome_Utente());
			statement.setString(3, utente.getCognome_Utente());

			statement.setString(4, utente.getIndirizzo_Utente());
			statement.setString(5, utente.getPassword());
			statement.setString(6, utente.getCarta_Credito_Usata().getNumero_Carta());
			statement.setInt(7, utente.getNumero_telefono_utente());

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
	public Utente findByPrimaryKey(String email) {
		
		Connection connection = this.dataSource.getConnection();
		Utente utente = null;
		try {
			PreparedStatement statement;
			String query = "select * from utente where email_utente= ? ";
			statement = connection.prepareStatement(query);
			statement.setString(1, email);

			ResultSet result = statement.executeQuery();
			
			if (result.next()) {
				
				utente = new Utente();
				utente.setEmail_Utente(result.getString("email_utente"));
				utente.setNome_Utente(result.getString("nome_utente"));
				utente.setCognome_Utente(result.getString("cognome_utente"));
				
				utente.setIndirizzo_Utente(result.getString("indirizzo_utente"));
				utente.setPassword(result.getString("password"));
				CartaDiCredito c = new CartaDiCredito();
				c.setNumero_Carta(result.getString("carta_di_credito_usata"));
				utente.setCarta_Credito_Usata(c);
				utente.setNumero_telefono_utente(result.getInt("numero_telefono_utente"));
				
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
		
		return utente;
	}
	
	@Override
	public UtenteCredenziali findByPrimaryKeyCredential(String email) {
		Utente utent = findByPrimaryKey(email);
		UtenteCredenziali utentCred = null;
		if (utent != null){
			utentCred = new UtenteCredenziali(dataSource);
			utentCred.setEmail_Utente(utent.getEmail_Utente());
			utentCred.setCarta_Credito_Usata(utent.getCarta_Credito_Usata());
			utentCred.setCognome_Utente(utent.getCognome_Utente());
			utentCred.setIndirizzo_Utente(utent.getIndirizzo_Utente());
			utentCred.setNome_Utente(utent.getNome_Utente());
			utentCred.setNumero_telefono_utente(utent.getNumero_telefono_utente());
			utentCred.setPassword(utent.getPassword());
		}
		
		return utentCred;
	}
	
	@Override
	public List<Utente> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Utente> utenti = new LinkedList<>();
		try {
			Utente utente;
			PreparedStatement statement;
			String query = "select * from utente";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				utente = new Utente();
				utente.setEmail_Utente(result.getString("email_utente"));
				utente.setNome_Utente(result.getString("nome_utente"));
				utente.setCognome_Utente(result.getString("cognome_utente"));
				utente.setIndirizzo_Utente(result.getString("indirizzo_utente"));
				utente.setPassword(result.getString("password"));
				CartaDiCredito c = new CartaDiCredito();
				c.setNumero_Carta(result.getString("carta_di_credito_usata"));
				utente.setCarta_Credito_Usata(c);
				utente.setNumero_telefono_utente(result.getInt("numero_telefono_utente"));

//				ScuolaDao scuolaDao = new ScuolaDaoJDBC(dataSource);
//				Scuola scuola = scuolaDao.findByPrimaryKey(result.getLong("scuola_id"));
//				studente.setScuolaDiDiploma(scuola);

				utenti.add(utente);
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
		return utenti;
	}

	@Override
	public void update(Utente utente) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update utente SET  nome_utente= ?, cognome_utente = ?, indirizzo_utente = ?, numero_telefono_utente=? WHERE email_utente=?";
			PreparedStatement statement = connection.prepareStatement(update);
			
			statement.setString(1, utente.getNome_Utente());
			statement.setString(2, utente.getCognome_Utente());
			
			statement.setString(3, utente.getIndirizzo_Utente());
			statement.setInt(4, utente.getNumero_telefono_utente());
			statement.setString(5, utente.getEmail_Utente());
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
	public void setCartaDiCredito(Utente utente, CartaDiCredito carta) {
		Connection connection = this.dataSource.getConnection();
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		CartaDiCreditoDao cd=factory.getCartaDiCreditoDAO();
		if(cd.findByPrimaryKey(carta.getNumero_Carta())==null)
		{
			cd.save(carta);
		}
		try {
			String update = "update utente SET  carta_di_credito_usata=? WHERE email_utente=?";
			PreparedStatement statement = connection.prepareStatement(update);
			
			statement.setString(1, utente.getCarta_Credito_Usata().getNumero_Carta());
			
			statement.setString(2, utente.getEmail_Utente());
			
			
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
	public void delete(Utente utente) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM utente WHERE email_utente = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, utente.getEmail_Utente());
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
	public void setPassword(Utente utente, String password) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update utente SET password = ? WHERE email_utente=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, password);
			statement.setString(2, utente.getEmail_Utente());
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


	public Utente findByCartaDiCredito(String numero_carta) {
		Connection connection = this.dataSource.getConnection();
		Utente utente = null;
		try {
			PreparedStatement statement;
			String query = "select * from utente where carta_di_credito_usata=? ";
			statement = connection.prepareStatement(query);
			statement.setString(1, numero_carta);

			ResultSet result = statement.executeQuery();
			if (result.next()) {
				utente = new Utente();
				utente.setEmail_Utente(result.getString("email_utente"));
				utente.setNome_Utente(result.getString("nome_utente"));
				utente.setCognome_Utente(result.getString("cognome_utente"));

				utente.setIndirizzo_Utente(result.getString("indirizzo_utente"));
				utente.setPassword(result.getString("password"));
				CartaDiCredito c = new CartaDiCredito();
				c.setNumero_Carta(result.getString("carta_di_credito_usata"));
				utente.setCarta_Credito_Usata(c);
				utente.setNumero_telefono_utente(result.getInt("numero_telefono_utente"));
//				
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
		return utente;
	}

}
