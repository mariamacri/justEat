package it.unical.ingsw.justeat.db.dao;

import java.util.List;

import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;

public interface RistoranteDao {
	// CRUD=create, read, update e delete
	public void save(Ristorante ristorante); // Create

	public Ristorante findByPrimaryKey(String partita_iva); // Retrieve

	public List<Ristorante> findAll();
	
	public List<Ristorante> findByIndirizzo(String indirizzo);

	public void update(Ristorante ristorante); // Update

	public void delete(Ristorante ristorante); // Delete

	// public void setPassword(Ristorante ristorante, String password);
	public Ristorante findByEmail(String Email);
	
	public void delete_pietanza_contenuta(Pietanza pietanza, Ristorante ristorante);
	
	public List<Pietanza> pietanze_del_ristorante(Ristorante ristorante);
}
