package it.unical.ingsw.justeat.db.persistence.dao;

import it.unical.ingsw.justeat.db.model.Menu;
import it.unical.ingsw.justeat.db.model.Pietanza;

public interface MenuDao {
	public void save(Menu menu); // Create

	public Menu findByPrimaryKey(int id_menu); // Retrieve

	// public List<Menu> findAll();

	public void update(Menu menu); // Update

	public void delete(Menu menu); // Delete
}
