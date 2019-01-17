package it.unical.ingsw.justeat.db.dao;

import it.unical.ingsw.justeat.db.model.Ristorante;

public interface RistoranteDao {
	// CRUD=create, read, update e delete
	public void save(Ristorante ristorante); // Create

	public Ristorante findByPrimaryKey(String nome); // Retrieve

	// public List<Ristorante> findAll();

	public void update(Ristorante ristorante); // Update

	public void delete(Ristorante ristorante); // Delete

	// public void setPassword(Ristorante ristorante, String password);
}
