package it.unical.ingsw.justeat.db.persistence.dao;

import java.util.List;

import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.UtenteCredenziali;

public interface UtenteDao {

	public void save(Utente utente); // Create

	public Utente findByPrimaryKey(String email); // Retrieve

	public List<Utente> findAll();

	public void update(Utente utente); // Update

	public void delete(Utente utente); // Delete

	public void setPassword(Utente utente, String password);

    public UtenteCredenziali findByPrimaryKeyCredential(String email);
	// Retrieve
    
    public void setCartaDiCredito(Utente utente, CartaDiCredito carta);

}
