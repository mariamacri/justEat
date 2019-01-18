package it.unical.ingsw.justeat.db.dao;

import it.unical.ingsw.justeat.db.model.Pagamento;
import it.unical.ingsw.justeat.db.model.Pietanza;

public interface PagamentoDao {
	
	public void save(Pagamento pagamento); // Create

	public Pagamento findByPrimaryKey(int id_pagamento); // Retrieve

	// public List<Pietanza> findAll();

	public void update(Pagamento pagamento); // Update

	public void delete(Pagamento pagamento); // Delete

}
