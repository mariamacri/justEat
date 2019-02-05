package it.unical.ingsw.justeat.db.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.Feedback;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Titolare;
import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.dao.FeedbackDao;

public class FeedbackDaoJDBC implements FeedbackDao{

	private DataSource dataSource;

	public FeedbackDaoJDBC(DataSource dataSource) {

		this.dataSource = dataSource;
	}

	@Override
	public void save(Feedback feedback) {

		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into feedback(descrizione, partita_iva_ristorante_recensito, email_utente_recensore, numero_stelle,  id_feedback ) values (?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, feedback.getDescrizione());
			statement.setString(2, feedback.getRistorante_recensito().getPartita_Iva());
			statement.setString(3, feedback.getUtente_recensore().getEmail_Utente());
			statement.setInt(4, feedback.getNumero_stelle());
			statement.setInt(5, feedback.getId_feedback());
			statement.executeUpdate();
			

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
	public Feedback findByPrimaryKey(int id_feedback) {
		Connection connection = this.dataSource.getConnection();
		Feedback feedback = null;
		try {
			PreparedStatement statement;
			String query = "select * from feedback where id_feedback= ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, id_feedback);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				feedback = new Feedback();
				feedback.setDescrizione(result.getString("descrizione"));
				
				Ristorante ristorante=new Ristorante();
				ristorante.setPartita_Iva(result.getString("partita_iva_ristorante_recensito"));
				feedback.setRistorante_recensito(ristorante);
				
				Utente utente =new Utente();
				utente.setEmail_Utente(result.getString("email_utente_recensore"));
				feedback.setUtente_recensore(utente);
				feedback.setNumero_stelle(result.getInt("numero_stelle"));
				feedback.setId_feedback(result.getInt("id_feedback"));
				

				
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
		return feedback;
	}



	@Override
	public void update(Feedback feedback) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update  feedback SET descrizione=?, partita_iva_ristorante_recensito=?, email_utente_recensore=?, numero_stelle=?  WHERE id_feedback=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, feedback.getDescrizione());
			statement.setString(2, feedback.getRistorante_recensito().getPartita_Iva());
			statement.setString(3, feedback.getUtente_recensore().getEmail_Utente());
			statement.setInt(4, feedback.getNumero_stelle());
			statement.setInt(5, feedback.getId_feedback());
			statement.executeUpdate();
			
			
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
	public void delete(Feedback feedback) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM feedback WHERE id_feedback = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, feedback.getId_feedback());
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
	public List<Feedback> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Feedback> feedbacks = new LinkedList<>();
		try {
			Feedback feedback;
			PreparedStatement statement;
			String query = "select * from feedback";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				feedback = new Feedback();
				feedback.setDescrizione(result.getString("descrizione"));
				
				Ristorante ristorante=new Ristorante();
				ristorante.setPartita_Iva(result.getString("partita_iva_ristorante_recensito"));
				feedback.setRistorante_recensito(ristorante);
				
				Utente utente =new Utente();
				utente.setEmail_Utente(result.getString("email_utente_recensore"));
				feedback.setUtente_recensore(utente);
				feedback.setNumero_stelle(result.getInt("numero_stelle"));
				feedback.setId_feedback(result.getInt("id_feedback"));
				
				feedbacks.add(feedback);

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
		return feedbacks;
		
	}
}
