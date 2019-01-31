package it.unical.ingsw.justeat.db.dao;

import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.GiornoAtivita;

public interface GiornoAttivitaDao {
	
	public void save(GiornoAtivita giorno); // Create

	public GiornoAtivita findByPrimaryKey(String giorno, String partita_iva); // Retrieve



	public void update(GiornoAtivita giorno); // Update

	public void delete(GiornoAtivita giorno); // Delete
	
	public void delete_giorno_partita_iva(GiornoAtivita giorno);

}
