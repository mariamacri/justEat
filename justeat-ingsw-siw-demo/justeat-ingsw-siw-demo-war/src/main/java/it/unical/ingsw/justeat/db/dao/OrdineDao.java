package it.unical.ingsw.justeat.db.dao;

import it.unical.ingsw.justeat.db.model.*;
import java.util.List;

public interface OrdineDao {
	public void save(Ordine ordine); // Create

	public Ordine findByPrimaryKey(int id_ordine); // Retrieve

	public void update(Ordine ordine); // Update

	public void delete(Ordine ordine); // Delete
	
	public List<Pietanza> comprende(Ordine ordine);
	
	public double totale_ordine(Ordine ordine);

}