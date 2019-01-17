package it.unical.ingsw.justeat.db.dao;

import java.util.List;

import it.unical.ingsw.justeat.db.model.Utente;

public interface UtenteDao {

	public void save(); // Create

	public Utente findByPrimaryKey(String email, String password); // Retrieve

	public List<Utente> findAll();

	public void update(Utente utente); // Update

	public void delete(Utente utente); // Delete

	public void setPassword(Utente utente, String password);

	// public UtenteCredenziali findByPrimaryKeyCredential(String matricola); //
	// Retrieve

}
