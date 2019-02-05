package it.unical.ingsw.justeat.db.persistence.dao;

import it.unical.ingsw.justeat.db.model.Titolare;

public interface TitolareDao {
	public void save(Titolare titolare); // Create

	public Titolare findByPrimaryKey(String cf); // Retrieve

	// public List<Ristorante> findAll();

	public void update(Titolare titolare); // Update

	public void delete(Titolare titolare); // Delete

}
