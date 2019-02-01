package it.unical.ingsw.justeat.db.dao;

import it.unical.ingsw.justeat.db.model.Categoria;

public interface Feedback {
	public void save(Feedback categoria); // Create

	public Categoria findByPrimaryKey(int id); // Retrieve

	// public List<Pietanza> findAll();

	public void update(Feedback categoria); // Update

	public void delete(Feedback categoria); // Delete

}
