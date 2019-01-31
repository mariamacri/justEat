package it.unical.ingsw.justeat.db.factory;

import java.sql.Connection;
import java.util.Date;
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

			String insert = "insert into titolare(cf_titolare, nome_titolare, cognome_titolare, indirizzo_titolare, carta_credito_intestata,  data_nascita_titolare ) values (?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, titolare.getCf_Titolare());
			statement.setString(2, titolare.getNome_Titolare());
			statement.setString(3, titolare.getCognome_Titolare());
			statement.setString(4, titolare.getIndirizzo_Titolare());
			if(titolare.getCarta_di_credito()==null)
				statement.setString(5, "none");
			else
				statement.setString(5, titolare.getCarta_di_credito().getNumero_Carta());
			
			statement.setDate(6, (java.sql.Date) titolare.getData_Nascita_Titolare());

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
				titolare.setData_Nascita_Titolare(result.getDate("data_nascita_titolare"));
				
				titolare.setIndirizzo_Titolare(result.getString("indirizzo_titolare"));
				
				CartaDiCredito c = new CartaDiCredito();
				c.setNumero_Carta(result.getString("carta_credito_intestata"));
				titolare.setCarta_di_credito(c);
				
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



	@Override
	public void update(Titolare titolare) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update  titolare SET nome_titolare=?, cognome_titolare=?, indirizzo_titolare=?, carta_di_credito_intestata=?,  data_nascita_titolare=?  WHERE cf_titolare=?";
			PreparedStatement statement = connection.prepareStatement(update);
			
			statement.setString(1, titolare.getNome_Titolare());
			statement.setString(2, titolare.getCognome_Titolare());
			statement.setString(3, titolare.getIndirizzo_Titolare());
			statement.setString(4, titolare.getCarta_di_credito().getNumero_Carta());
			statement.setDate(5, (java.sql.Date) titolare.getData_Nascita_Titolare());
			statement.setString(6, titolare.getCf_Titolare());
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
	public void delete(Titolare titolare) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM titolare WHERE cf_titolare = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, titolare.getCf_Titolare());
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
