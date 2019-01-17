package it.unical.ingsw.justeat.db.dao;

import it.unical.ingsw.justeat.db.model.CartaDiCredito;

public interface CartaDiCreditoDao {
	public void save(CartaDiCredito cartaDiCredito); // Create

	public CartaDiCredito findByPrimaryKey(String numero); // Retrieve

	// public List<CartaDiCreditoDao > findAll();

	public void update(CartaDiCredito cartaDiCredito); // Update

	public void delete(CartaDiCredito cartaDiCredito); // Delete

}
