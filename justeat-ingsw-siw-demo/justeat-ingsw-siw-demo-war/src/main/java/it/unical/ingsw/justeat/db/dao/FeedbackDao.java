package it.unical.ingsw.justeat.db.dao;

import java.util.List;

import it.unical.ingsw.justeat.db.model.Categoria;
import it.unical.ingsw.justeat.db.model.Feedback;

public interface FeedbackDao {
	public void save(Feedback feedback); // Create

	public Feedback findByPrimaryKey(int id); // Retrieve

	public List<Feedback> findAll();

	public void update(Feedback feedback); // Update

	public void delete(Feedback feedback); // Delete

}
