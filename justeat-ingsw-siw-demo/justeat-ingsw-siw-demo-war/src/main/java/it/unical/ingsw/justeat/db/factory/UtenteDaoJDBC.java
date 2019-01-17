package it.unical.ingsw.justeat.db.factory;

import java.util.List;

import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.model.Utente;

public class UtenteDaoJDBC implements UtenteDao {

	private DataSource dataSource;

	public UtenteDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void save(Utente utente) {
//		Connection connection = this.dataSource.getConnection();
//		try {
//			String insert = "insert into studente(matricola, nome, cognome, data_nascita, scuola_id) values (?,?,?,?,?)";
//			PreparedStatement statement = connection.prepareStatement(insert);
//			statement.setString(1, utente.);
//			statement.setString(2, utente.getNome());
//			statement.setString(3, utente.getCognome());
//			long secs = utente.getDataNascita().getTime();
//			statement.setDate(4, new java.sql.Date(secs));
//			statement.setLong(5, utente.getScuolaDiDiploma().getId());
//			statement.executeUpdate();
//		} catch (SQLException e) {
//			throw new PersistenceException(e.getMessage());
//		} finally {
//			try {
//				connection.close();
//			} catch (SQLException e) {
//				throw new PersistenceException(e.getMessage());
//			}
//		}
	}

	@Override
	public Utente findByPrimaryKey(String email, String password) {

		return null;
	}

	@Override
	public List<Utente> findAll() {

		return null;
	}

	@Override
	public void update(Utente utente) {

	}

	@Override
	public void delete(Utente utente) {

	}

	@Override
	public void setPassword(Utente utente, String password) {

	}

	@Override
	public void save() {
		// TODO Auto-generated method stub

	}

}
