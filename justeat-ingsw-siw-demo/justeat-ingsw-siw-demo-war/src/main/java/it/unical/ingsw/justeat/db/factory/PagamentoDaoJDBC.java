package it.unical.ingsw.justeat.db.factory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.unical.ingsw.justeat.db.dao.PagamentoDao;
import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.Categoria;
import it.unical.ingsw.justeat.db.model.Pagamento;
import it.unical.ingsw.justeat.db.model.Utente;

public class PagamentoDaoJDBC implements PagamentoDao{
	private DataSource dataSource; 
	
	public PagamentoDaoJDBC(DataSource dataSource) {
		this.dataSource=dataSource;
	}
	
	@Override
	public void save(Pagamento pagamento) {
		Connection connection = this.dataSource.getConnection();
		try {
			String insert = "insert into pagamento(sconto, numero_cartadicredito_utente,id_pagamento, importo_totale_pagamento) values (?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setDouble(1, pagamento.getSconto());
			statement.setString(2, pagamento.getUtente().getCarta_Credito_Usata().getNumero_Carta());
			statement.setInt(3, pagamento.getId_pagamento());
			statement.setDouble(4, pagamento.getImporto_totale_pagamento());
			
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
	public Pagamento findByPrimaryKey(int id_pagamento) {
		Connection connection = this.dataSource.getConnection();
		Pagamento pagamento = null;
		try {
			PreparedStatement statement;
			String query = "select * from pagamento where id_pagamento= ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, id_pagamento);
			ResultSet result = statement.executeQuery();
			if (result.next()) {

				pagamento = new Pagamento();
				pagamento.setId_pagamento(result.getInt("id_pagamento"));
				pagamento.setImporto_totale_pagamento(result.getDouble("importo_totale_pagamento"));
				pagamento.setSconto(result.getDouble("sconto"));
				CartaDiCreditoDaoJDBC cartadao =new CartaDiCreditoDaoJDBC(dataSource);
				CartaDiCredito carta=new CartaDiCredito();
				carta =cartadao.findByPrimaryKey(result.getString("numero_cartadicredito_utente"));
						//setNumero_Carta();
				
				UtenteDaoJDBC utenteDao=new UtenteDaoJDBC(dataSource);
				Utente utente=new Utente();
				utente=utenteDao.findByCartaDiCredito(carta.getNumero_Carta());
				pagamento.setUtente(utente);

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
		return pagamento;
	}

	@Override
	public void update(Pagamento pagamento) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update  pagamento SET  sconto= ?, numero_cartadicredito_utente=?, id_pagamento = ?,   importo_totale_pagamento=? WHERE id_pagamento=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setDouble(1, pagamento.getSconto());
			statement.setString(2, pagamento.getUtente().getCarta_Credito_Usata().getNumero_Carta());
			statement.setInt(3, pagamento.getId_pagamento());
			statement.setDouble(4, pagamento.getImporto_totale_pagamento());
			
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
	public void delete(Pagamento pagamento) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM pagamento WHERE id_pagamento = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(4, pagamento.getId_pagamento());
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
