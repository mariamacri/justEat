package it.unical.ingsw.justeat.db.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.Menu;
import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.persistence.dao.MenuDao;

public class MenuDaoJDBC implements MenuDao {
	private DataSource dataSource;

	public MenuDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public void save(Menu menu) {
		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into menu(descrizionemenu, idmenu) values (?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, menu.getDescrizionemenu());
			statement.setInt(2, menu.getIdmenu());
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
	public Menu findByPrimaryKey(int id_menu) {
		Connection connection = this.dataSource.getConnection();
		Menu menu=null;
		try {
			PreparedStatement statement;
			String query = "select * from menu where idmenu = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, id_menu);

			ResultSet result = statement.executeQuery();

			if (result.next()) {
				menu = new Menu();
				menu.setDescrizionemenu(result.getString("descrizionemenu"));

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

		return menu;
	}

	@Override
	public void update(Menu menu) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update menu SET   descrizionemenu=?  WHERE idmenu=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, menu.getDescrizionemenu());
			statement.setInt(2, menu.getIdmenu());
			
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
	public void delete(Menu menu) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM menu WHERE id_menu = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(2, menu.getIdmenu());
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
