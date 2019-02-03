package it.unical.ingsw.justeat.db.factory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import it.unical.ingsw.justeat.db.dao.OrdineDao;
import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.Ordine;
import it.unical.ingsw.justeat.db.model.Pagamento;
import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Titolare;
import it.unical.ingsw.justeat.db.model.Utente;

public class OrdineDaoJDBC implements OrdineDao{
	
	private DataSource dataSource;
	
	public OrdineDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	
	
	@Override
	public void save(Ordine ordine) {
		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into ordine(id_ordine, id_pagamento_ordine, prezzo_totale_ordine, commissioni_ordine,  partita_iva_ristorante_ordine) values (?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			
			statement.setInt(1, ordine.getId_ordine());
			statement.setInt(2, ordine.getPagamento().getId_pagamento());
			statement.setDouble(3, ordine.getTot());
			
			statement.setDouble(4, ordine.getCommissioni_ordine());
			statement.setString(5, ordine.getRistorante().getPartita_Iva());
			statement.executeUpdate();
			
			/*String update = "update ordine SET  prezzo_totale_ordine=? where id_ordine=?";
			statement = connection.prepareStatement(update);
			statement.setInt(1, ordine.getId_ordine());
			statement.setDouble(3, totale_ordine(ordine));
			statement.executeUpdate();*/
			
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		save_pietanze_comprese(ordine);
		
		//ordine.setPrezzo_totale_ordine(totale_ordine(ordine));

		
		//update(ordine);
		
	}
	
	
	
	
	@Override
	public Ordine findByPrimaryKey(int id_ordine) {
		Connection connection = this.dataSource.getConnection();
		Ordine ordine = null;
		try {
			PreparedStatement statement;
			String query = "select * from ordine where id_ordine = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, id_ordine);
			ResultSet result = statement.executeQuery();

			if (result.next()) {
				ordine=new Ordine();
				Pagamento pagamento=new Pagamento();
				pagamento.setId_pagamento(result.getInt("id_pagamento_ordine"));
				ordine.setPagamento(pagamento);
				ordine.setPrezzo_totale_ordine(result.getDouble("prezzo_totale_ordine"));
				ordine.setCommissioni_ordine(result.getDouble("commissioni_ordine"));
				
				DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
				RistoranteDao rd=factory.getRistoranteDAO();
				
				Ristorante ristorante=rd.findByPrimaryKey(result.getString("partita_iva_ristorante_ordine"));
			
				ordine.setRistorante(ristorante);
				
				}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}

		return ordine;
	}
	
	
	
	
	@Override
	public void update(Ordine ordine) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update ordine SET  id_pagamento_ordine = ?,  prezzo_totale_ordine=?, commissioni_ordine=? , partita_iva_ristorante_ordine=? WHERE id_ordine=?";
			PreparedStatement statement = connection.prepareStatement(update);
			
			statement.setInt(1, ordine.getPagamento().getId_pagamento());
			statement.setDouble(2, ordine.getPrezzo_totale_ordine());
			statement.setDouble(3, ordine.getCommissioni_ordine());
			statement.setString(4, ordine.getRistorante().getPartita_Iva());
			statement.setInt(5, ordine.getId_ordine());
			
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}

	}
	
	
	
	@Override
	public void delete(Ordine ordine) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete="delete FROm comprende WHERE id_ordine_compreso=?";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, ordine.getId_ordine());
			statement.executeUpdate();
			delete = "delete FROM ordine WHERE id_ordine = ? ";
			statement = connection.prepareStatement(delete);
			statement.setInt(1, ordine.getId_ordine());
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	}

	@Override
public List<Pietanza> comprende(Ordine ordine) {
		
		Connection connection = this.dataSource.getConnection();
		List<Pietanza> pietanze  = new LinkedList<>();
		try {
			Pietanza pietanza=null;
			PreparedStatement statement;
			String query = "select nome_pietanza, prezzo_pietanza, descrizione_pietanza from pietanza where nome_pietanza in (select nome_pietanza_compresa from comprende, ordine where id_ordine_compreso=? )";
			statement = connection.prepareStatement(query);
			statement.setInt(1, ordine.getId_ordine());
			
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				pietanza = new Pietanza();
				pietanza.setNome(result.getString("nome_pietanza"));
				pietanza.setPrezzo(result.getDouble("prezzo_pietanza"));
				pietanza.setDescrizione(result.getString("descrizione_pietanza"));			
				

				pietanze.add(pietanza);
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		return pietanze;
		
		
	}

	@Override
	public double totale_ordine(Ordine ordine) {
		Connection connection = this.dataSource.getConnection();
		double tot=0;
		try {
			
			PreparedStatement statement;
			String query = "select prezzo_pietanza from pietanza where nome_pietanza in (select nome_pietanza_compresa from ordine, comprende where id_ordine_compreso=?)";
			statement = connection.prepareStatement(query);
			statement.setInt(1, ordine.getId_ordine());
			
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				
				tot+=result.getDouble("prezzo_pietanza");			
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		return tot;
	}
	
	public void save_pietanze_comprese(Ordine ordine) {
		Connection connection = this.dataSource.getConnection();
		//modificato	
			try {

				String insert = "insert into comprende(nome_pietanza_compresa, id_ordine_compreso) values (?,?)";
				PreparedStatement statement = connection.prepareStatement(insert);
				if(ordine.getPietanze()!=null)
				for(Pietanza i: ordine.getPietanze())
				{
					statement.setString(1, i.getNome());
					statement.setInt(2, ordine.getId_ordine());
					statement.executeUpdate();
				}
				
				
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			} finally {
				try {
					connection.close();
				} catch (SQLException e) {
					throw new PersistenceException(e.getMessage());
				}
			}
	}
	
	
	@Override
	public List<Ordine> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Ordine> ordini = new LinkedList<>();
		try {
			Ordine ordine;
			PreparedStatement statement;
			String query = "select * from ordine";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				ordine=new Ordine();
				ordine.setId_ordine(result.getInt("id_ordine"));
				ordine.setCommissioni_ordine(result.getDouble("commissioni_ordine"));
				Pagamento p=new Pagamento();
				p.setId_pagamento(result.getInt("id_pagamento_ordine"));
				ordine.setPagamento(p);
				ordine.setPrezzo_totale_ordine(result.getDouble("prezzo_totale_ordine"));
				
				DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
				RistoranteDao rd=factory.getRistoranteDAO();
				
				Ristorante ristorante=rd.findByPrimaryKey(result.getString("partita_iva_ristorante_ordine"));
				
				ordine.setRistorante(ristorante);
				
				ordini.add(ordine);
			}

		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		return ordini;
	}
	//insert into effettua (email_effettuante, id_ordine_effettuato) values('rocco@rocco.com',13)
	@Override
	public List<Ordine> ordini_dell_utente(Utente utente) {
		Connection connection = this.dataSource.getConnection();
		List<Ordine> ordini = new LinkedList<>();
		try {
			Ordine ordine;
			PreparedStatement statement;
			String query = "select * from ordine where id_ordine in (select id_ordine_effettuato from effettua, ordine where email_effettuante=?)";
			statement = connection.prepareStatement(query);
			statement.setString(1, utente.getEmail_Utente());
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				ordine = new Ordine();
				ordine.setId_ordine(result.getInt("id_ordine"));
				ordine.setCommissioni_ordine(result.getDouble("commissioni_ordine"));
				Pagamento p=new Pagamento();
				p.setId_pagamento(result.getInt("id_pagamento_ordine"));
				ordine.setPagamento(p);
				ordine.setPrezzo_totale_ordine(result.getDouble("prezzo_totale_ordine"));
				
				
				DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
				RistoranteDao rd=factory.getRistoranteDAO();
				
				Ristorante ristorante=rd.findByPrimaryKey(result.getString("partita_iva_ristorante_ordine"));
				
				ordine.setRistorante(ristorante);
				

				ordini.add(ordine);
			}

		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		return ordini;
	}
	@Override
	public void ordine_contenuto_in_effettua(Ordine ordine, Utente utente) {
		Connection connection= this.dataSource.getConnection();
		
		try {
			String save = "insert into effettua(email_effettuante, id_ordine_effettuato) values (?,?) ";
			PreparedStatement statement = connection.prepareStatement(save);
			statement.setString(1,utente.getEmail_Utente());
			statement.setInt(2, ordine.getId_ordine());
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		
	}
	
	
	
	

	
	

}
