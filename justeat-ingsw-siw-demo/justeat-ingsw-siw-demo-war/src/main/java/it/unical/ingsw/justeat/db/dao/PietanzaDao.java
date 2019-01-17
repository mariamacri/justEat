package it.unical.ingsw.justeat.db.dao;

import it.unical.ingsw.justeat.db.model.Pietanza;

public interface PietanzaDao {
	public void save(Pietanza pietanza); // Create

	public Pietanza findByPrimaryKey(String nome); // Retrieve

	// public List<Pietanza> findAll();

	public void update(Pietanza pietanza); // Update

	public void delete(Pietanza pietanza); // Delete

}
