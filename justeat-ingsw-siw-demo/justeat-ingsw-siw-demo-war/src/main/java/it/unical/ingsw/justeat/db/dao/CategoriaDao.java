package it.unical.ingsw.justeat.db.dao;

import it.unical.ingsw.justeat.db.model.Categoria;

public interface CategoriaDao {
	public void save(Categoria categoria); // Create

	public Categoria findByPrimaryKey(int id); // Retrieve

	// public List<Pietanza> findAll();

	public void update(Categoria categoria); // Update

	public void delete(Categoria categoria); // Delete

}
