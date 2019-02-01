package it.unical.ingsw.justeat.db.dao;

import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.GiornoAttivita;

public interface GiornoAttivitaDao {
	
	public void save(GiornoAttivita giorno); // Create

	public GiornoAttivita findByPrimaryKey(String giorno, String partita_iva); // Retrieve



	public void update(GiornoAttivita giorno); // Update

	public void delete(GiornoAttivita giorno); // Delete
	
	public void delete_giorno_partita_iva(GiornoAttivita giorno);

}
