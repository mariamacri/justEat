package it.unical.ingsw.justeat.db.persistence;
//modificato
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.persistence.dao.CartaDiCreditoDao;

public class CartaDiCreditoDaoJDBC implements CartaDiCreditoDao {
	private DataSource dataSource;

	public CartaDiCreditoDaoJDBC(DataSource dataSource) {

		this.dataSource = dataSource;
	}

	@Override
	public void save(CartaDiCredito cartaDiCredito) {
		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into carta_di_credito(numero_carta,tipo_circuito_carta,saldo_disponibile, scadenza) values (?,?,?,?)";

			PreparedStatement statement = connection.prepareStatement(insert);

			statement.setString(1, cartaDiCredito.getNumero_Carta());
			statement.setString(2, cartaDiCredito.getTipo_Circuito_Carta());
			statement.setDouble(3, cartaDiCredito.getSaldo_Disponibile());
			long secs = cartaDiCredito.getScadenza().getTime();
			statement.setDate(4, new java.sql.Date(secs));

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
	public CartaDiCredito findByPrimaryKey(String numero) {
		Connection connection = this.dataSource.getConnection();
		CartaDiCredito carta = null;
		try {
			PreparedStatement statement;

			String query = "select * from carta_di_credito where numero_carta = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, numero);

			ResultSet result = statement.executeQuery();

			if (result.next()) {
				carta = new CartaDiCredito();
				carta.setNumero_Carta(result.getString("numero_carta"));
				carta.setTipo_Circuito_Carta(result.getString("tipo_circuito_carta"));
				carta.setSaldo_Disponibile(result.getDouble("saldo_disponibile"));

				long secs = result.getDate("scadenza").getTime();
				carta.setScadenza(new java.util.Date(secs));

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

		return carta;
	}

	@Override
	public void update(CartaDiCredito cartaDiCredito) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update  carta_di_credito SET  tipo_circuito_carta=?, saldo_disponibile=?,scadenza=? WHERE numero_carta=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, cartaDiCredito.getNumero_Carta());
			statement.setString(2, cartaDiCredito.getTipo_Circuito_Carta());
			statement.setDouble(3, cartaDiCredito.getSaldo_Disponibile());
			long secs = cartaDiCredito.getScadenza().getTime();
			statement.setDate(4, new java.sql.Date(secs));
			
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
	public void delete(CartaDiCredito cartaDiCredito) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM carta_di_credito WHERE numero_carta = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, cartaDiCredito.getNumero_Carta());
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
