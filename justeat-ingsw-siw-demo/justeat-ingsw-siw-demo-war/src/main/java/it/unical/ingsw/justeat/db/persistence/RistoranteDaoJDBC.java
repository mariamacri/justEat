package it.unical.ingsw.justeat.db.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;
import it.unical.ingsw.justeat.db.model.CartaDiCredito;
import it.unical.ingsw.justeat.db.model.Categoria;
import it.unical.ingsw.justeat.db.model.Ordine;
import it.unical.ingsw.justeat.db.model.Pagamento;
import it.unical.ingsw.justeat.db.model.Pietanza;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Titolare;
import it.unical.ingsw.justeat.db.model.Utente;
import it.unical.ingsw.justeat.db.persistence.dao.OrdineDao;
import it.unical.ingsw.justeat.db.persistence.dao.PagamentoDao;
import it.unical.ingsw.justeat.db.persistence.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.persistence.dao.TitolareDao;
import it.unical.ingsw.justeat.db.persistence.dao.UtenteDao;
import it.unical.ingsw.justeat.db.model.Ristorante;

//modificato
public class RistoranteDaoJDBC implements RistoranteDao {

	private DataSource dataSource;

	public RistoranteDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	// cerca in base alla categoria
	public List<Ristorante> findAll(int id_categoria) {
		Connection connection = this.dataSource.getConnection();
		List<Ristorante> ristoranti = new LinkedList<>();
		try {
			Ristorante ristorante;
			PreparedStatement statement;
			String query = "select * from ristorante r, tipo_cucina t where r.partita_iva = t.partita_iva_ristorante_tipo_cucina AND c.id_categoria = t.id_categoria_cucina ";
			statement = connection.prepareStatement(query);

			ResultSet result = statement.executeQuery();
			while (result.next()) {
				ristorante = new Ristorante();
				ristorante.setNome_Ristorante(result.getString("nome_ristorante"));
				ristorante.setIndirizzo_Ristorante(result.getString("indirizzo_ristorante"));
				ristorante.setIndirizzo_Legale(result.getString("indirizzo_legale"));
				ristorante.setCoordinate_Bancarie_Ristorante(result.getString("coordinate_bancarie_ristorante"));
				TitolareDaoJDBC titolareDao = new TitolareDaoJDBC(dataSource);
				Titolare titolare;
				titolare = titolareDao.findByPrimaryKey(result.getString("codice_fiscale_titolare"));
				ristorante.setTitolare(titolare);
				UtenteDaoJDBC utenteDao = new UtenteDaoJDBC(dataSource);
				Utente utente;
				utente = utenteDao.findByPrimaryKey(result.getString("email_utenteregistrato"));
				ristorante.setUtente_Proprietario(utente);
				ristorante.setDescrizione_Ristorante(result.getString("descrizione_ristorante"));
				ristorante.setCitta_Ristorante(result.getString("citta"));
				ristorante.setNumero_Telefono_Ristorante(result.getInt("numero_telefono_ristorante"));
				ristorante.setSpesa_minima(result.getDouble("spesa_minima"));
				ristoranti.add(ristorante);

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
		return ristoranti;
	}

	@Override
	public void save(Ristorante ristorante) {
		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into ristorante(nome_ristorante, indirizzo_ristorante, indirizzo_legale, partita_iva, coordinate_bancarie_ristorante,codice_fiscale_titolare, email_utenteregistrato, descrizione_ristorante, citta, numero_telefono_ristorante, spesa_minima) values (?,?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement statement = connection.prepareStatement(insert);

			statement.setString(1, ristorante.getNome_Ristorante());
			statement.setString(2, ristorante.getIndirizzo_Ristorante());
			statement.setString(3, ristorante.getIndirizzo_Legale());
			statement.setString(4, ristorante.getPartita_Iva());
			statement.setString(5, ristorante.getCoordinate_Bancarie_Ristorante());
			statement.setString(6, ristorante.getTitolare().getCf_Titolare());
			statement.setString(7, ristorante.getUtente_Proprietario().getEmail_Utente());
			statement.setString(8, ristorante.getDescrizione_Ristorante());
			statement.setString(9, ristorante.getCitta_Ristorante());
			statement.setInt(10, ristorante.getNumero_Telefono_Ristorante());
			statement.setDouble(11, 0);

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

	// query che cerca tutti i ristoranti che corrispondono ad un indirizzo
	public List<Ristorante> findByIndirizzo(String indirizzo) {

		Connection connection = this.dataSource.getConnection();
		List<Ristorante> ristoranti = new LinkedList<>();
		try {
			Ristorante ristorante = null;
			PreparedStatement statement;
			String query = "select * from ristorante r where r.indirizzo_ristorante=?";
			statement = connection.prepareStatement(query);
			statement.setString(2, indirizzo);

			ResultSet result = statement.executeQuery();
			while (result.next()) {
				ristorante = new Ristorante();
				ristorante.setNome_Ristorante(result.getString("nome_ristorante"));
				ristorante.setIndirizzo_Legale(result.getString("indirizzo_legale"));
				ristorante.setCoordinate_Bancarie_Ristorante(result.getString("coordinate_bancarie_ristorante"));
				Titolare titolare = new Titolare();
				titolare.setCf_Titolare(result.getString("codice_fiscale_titolare"));
				ristorante.setTitolare(titolare);
				Utente utente = new Utente();
				utente.setEmail_Utente(result.getString("email_utenteregistrato"));
				ristorante.setUtente_Proprietario(utente);
				ristorante.setDescrizione_Ristorante(result.getString("descrizione_ristorante"));
				ristorante.setCitta_Ristorante(result.getString("citta"));
				ristorante.setNumero_Telefono_Ristorante(result.getInt("numero_telefono_ristorante"));
				ristorante.setSpesa_minima(result.getDouble("spesa_minima"));
				ristoranti.add(ristorante);
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
		return ristoranti;

	}

	public List<Ristorante> findByCitta(String citta) {

		Connection connection = this.dataSource.getConnection();
		List<Ristorante> ristoranti = new LinkedList<>();
		try {
			Ristorante ristorante = null;
			PreparedStatement statement;
			String query = "select * from ristorante r where r.citta=?";
			statement = connection.prepareStatement(query);
			statement.setString(1, citta);

			ResultSet result = statement.executeQuery();
			while (result.next()) {
				ristorante = new Ristorante();
				ristorante.setPartita_Iva(result.getString("partita_iva"));
				ristorante.setCitta_Ristorante(result.getString("citta"));
				ristorante.setIndirizzo_Ristorante(result.getString("indirizzo_ristorante"));
				ristorante.setNome_Ristorante(result.getString("nome_ristorante"));
				ristorante.setIndirizzo_Legale(result.getString("indirizzo_legale"));
				ristorante.setCoordinate_Bancarie_Ristorante(result.getString("coordinate_bancarie_ristorante"));
				Titolare titolare = new Titolare();
				titolare.setCf_Titolare(result.getString("codice_fiscale_titolare"));
				ristorante.setTitolare(titolare);
				Utente utente = new Utente();
				utente.setEmail_Utente(result.getString("email_utenteregistrato"));
				ristorante.setUtente_Proprietario(utente);
				ristorante.setDescrizione_Ristorante(result.getString("descrizione_ristorante"));
				ristorante.setNumero_Telefono_Ristorante(result.getInt("numero_telefono_ristorante"));
				ristorante.setSpesa_minima(result.getDouble("spesa_minima"));
				ristoranti.add(ristorante);
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
		return ristoranti;

	}

	// query che trova TUTTI i ristoranti
	public List<Ristorante> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Ristorante> ristoranti = new LinkedList<>();
		try {
			Ristorante ristorante;
			PreparedStatement statement;
			String query = "select * from ristorante";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				ristorante = new Ristorante();
				ristorante.setNome_Ristorante(result.getString("nome_ristorante"));
				ristorante.setIndirizzo_Ristorante(result.getString("indirizzo_ristorante"));
				ristorante.setIndirizzo_Legale(result.getString("indirizzo_legale"));
				ristorante.setCoordinate_Bancarie_Ristorante(result.getString("coordinate_bancarie_ristorante"));
				Titolare titolare = new Titolare();
				titolare.setCf_Titolare(result.getString("codice_fiscale_titolare"));
				ristorante.setTitolare(titolare);
				Utente utente = new Utente();
				utente.setEmail_Utente(result.getString("email_utenteregistrato"));
				ristorante.setUtente_Proprietario(utente);
				ristorante.setDescrizione_Ristorante(result.getString("descrizione_ristorante"));
				ristorante.setCitta_Ristorante(result.getString("citta"));
				ristorante.setNumero_Telefono_Ristorante(result.getInt("numero_telefono_ristorante"));
				ristorante.setSpesa_minima(result.getDouble("spesa_minima"));
				ristoranti.add(ristorante);

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
		return ristoranti;
	}

	public Ristorante findByPrimaryKeyJoin(String partita_iva) {
		Connection connection = this.dataSource.getConnection();
		Ristorante ristorante = null;
		try {
			PreparedStatement statement;
			String query = "select  r.nome_ristorante as r_nome_ristorante, r.partita_iva as r_partita_iva, c.nome_categoria as c_nome_categoria, c.id_categoria as c_id_categoria"
					+ "r.codice_fiscale_titolare as r.codice_fiscale_titolare, r.indirizzo_legale as r_indirizzo_legale "
					+ "r.coordinate_bancarie_ristorante as r_coordinate_bancarie_ristorante, r.descrizione_ristorante as  r_descrizione_ristorante "
					+ "r.email_utenteregistrato as r_email_utenteregistrato, u.email_utente as u_email_utente "
					+ "t1.cf_titolare as t1_cf_titolare, t.partita_iva_ristorante_ristorante_tipo_cucina as  t_partita_iva_ristorante_ristorante_tipo_cucina  "
					+ "t.id_categoria_cucina as t_id_categoria_cucina "
					+ "from ristorante r, categoria c, tipo_cucina t, titolare t1, utente u "
					+ "where r.partita_iva = t.partita_iva_ristorante_tipo_cucina"
					+ "			AND c.id_categoria = t.id_categoria_cucina "
					+ "			AND t1.cf_titolare = r.codice_fiscale_titolare "
					+ "			AND u.email_utente = r.email_utenteregistrato ";
			statement = connection.prepareStatement(query);
			statement.setString(4, partita_iva);
			ResultSet result = statement.executeQuery();
			boolean primaRiga = true;
			while (result.next()) {
				if (primaRiga) {
					ristorante = new Ristorante();

					ristorante.setNome_Ristorante(result.getString("nome_ristorante"));
					ristorante.setIndirizzo_Ristorante(result.getString("indirizzo_ristorante"));
					ristorante.setIndirizzo_Legale(result.getString("indirizzo_legale"));
					ristorante.setCoordinate_Bancarie_Ristorante(result.getString("coordinate_bancarie_ristorante"));
					TitolareDaoJDBC titolareDao = new TitolareDaoJDBC(dataSource);
					Titolare titolare;
					titolare = titolareDao.findByPrimaryKey(result.getString("codice_fiscale_titolare"));
					ristorante.setTitolare(titolare);
					UtenteDaoJDBC utenteDao = new UtenteDaoJDBC(dataSource);
					Utente utente;
					utente = utenteDao.findByPrimaryKey(result.getString("email_utenteregistrato"));
					ristorante.setUtente_Proprietario(utente);
					ristorante.setDescrizione_Ristorante(result.getString("descrizione_ristorante"));
					ristorante.setCitta_Ristorante(result.getString("citta"));
					ristorante.setNumero_Telefono_Ristorante(result.getInt("numero_telefono_ristorante"));
					primaRiga = false;
				}
				if (result.getString("c_id_categoria") != null) {
					CategoriaDaoJDBC categoriaDao = new CategoriaDaoJDBC(dataSource);
					Categoria categoria;
					categoria = categoriaDao.findByPrimaryKey(result.getInt("c_id_categoria"));
////					

					ristorante.addCategoria(categoria);
				}
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
		return ristorante;
	}

	private void removeForeignKeyFromCategorie(Ristorante ristorante, Connection connection) throws SQLException {
		for (Categoria categoria : ristorante.getCategorie()) {
			String update = "update tipo_cucina SET partita_iva_ristorante_tipo_cucina = NULL WHERE id_categoria_cucina = ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setInt(1, categoria.getId_Categoria());
			statement.executeUpdate();
		}
	}

	@Override
	public Ristorante findByPrimaryKey(String partita_iva) {
		Connection connection = this.dataSource.getConnection();
		Ristorante ristorante = null;
		try {
			PreparedStatement statement;
			
			String query = "select * from ristorante where partita_iva = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, partita_iva);
			
			ResultSet result = statement.executeQuery();
			

			if (result.next()) {
				ristorante = new Ristorante();
				ristorante.setPartita_Iva(result.getString("partita_iva"));
				ristorante.setNome_Ristorante(result.getString("nome_ristorante"));
				ristorante.setIndirizzo_Ristorante(result.getString("indirizzo_ristorante"));
				ristorante.setIndirizzo_Legale(result.getString("indirizzo_legale"));
				ristorante.setCoordinate_Bancarie_Ristorante(result.getString("coordinate_bancarie_ristorante"));
				Titolare titolare = new Titolare();
				titolare.setCf_Titolare(result.getString("codice_fiscale_titolare"));
				ristorante.setTitolare(titolare);
				Utente utente = new Utente();
				utente.setEmail_Utente(result.getString("email_utenteregistrato"));
				ristorante.setUtente_Proprietario(utente);
				ristorante.setDescrizione_Ristorante(result.getString("descrizione_ristorante"));
				ristorante.setCitta_Ristorante(result.getString("citta"));
				ristorante.setNumero_Telefono_Ristorante(result.getInt("numero_telefono_ristorante"));
				ristorante.setSpesa_minima(result.getDouble("spesa_minima"));
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
		// restituiamo il ristorante che abbiamo creato con il risultato della query

		return ristorante;
	}

	private void updateCategorie(Ristorante ristorante, Connection connection) throws SQLException {
		CategoriaDaoJDBC categoriaDao = new CategoriaDaoJDBC(dataSource);
		for (Categoria categoria : ristorante.getCategorie()) {
			if (categoriaDao.findByPrimaryKey(categoria.getId_Categoria()) == null) {
				categoriaDao.save(categoria);
			}
			String tipo_cucina = "select * from tipo_cucina where id_categoria_cucina=? AND partita_iva_ristorante_tipo_cucina=?";
			PreparedStatement statementTipoCucina = connection.prepareStatement(tipo_cucina);
			statementTipoCucina.setInt(2, categoria.getId_Categoria());
			statementTipoCucina.setString(1, ristorante.getPartita_Iva());
			ResultSet result = statementTipoCucina.executeQuery();
			if (result.next()) {
				String update = "update tipo_cucina SET id_categoria_cucina=? AND partita_iva_ristorante_tipo_cucina=?";
				PreparedStatement statement = connection.prepareStatement(update);
				statement.setString(1, ristorante.getPartita_Iva());
				statement.setInt(2, categoria.getId_Categoria());
				statement.executeUpdate();
			} else {
				String inserisci = "insert into tipo_cucina( partita_iva_ristorante_tipo_cucina,id_categoria_cucina ) values (?,?)";
				PreparedStatement statement = connection.prepareStatement(inserisci);
				statement.setString(1, ristorante.getPartita_Iva());
				statement.setInt(2, categoria.getId_Categoria());

				statement.executeUpdate();
			}
		}
	}

	@Override
	public void update(Ristorante ristorante) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update ristorante SET  nome_ristorante= ?, indirizzo_ristorante = ?,  indirizzo_legale=?, coordinate_bancarie_ristorante=? , codice_fiscale_titolare =? ,descrizione_ristorante=?, email_utenteregistrato=?, citta =?, numero_telefono_ristorante=?, spesa_minima=? WHERE partita_iva=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, ristorante.getNome_Ristorante());
			statement.setString(2, ristorante.getIndirizzo_Ristorante());
			statement.setString(3, ristorante.getIndirizzo_Legale());
			statement.setString(4, ristorante.getCoordinate_Bancarie_Ristorante());
			statement.setString(5, ristorante.getTitolare().getCf_Titolare());
			statement.setString(6, ristorante.getDescrizione_Ristorante());
			statement.setString(7, ristorante.getUtente_Proprietario().getEmail_Utente());
			statement.setString(8, ristorante.getCitta_Ristorante());

			statement.setInt(9, ristorante.getNumero_Telefono_Ristorante());
			statement.setDouble(10, ristorante.getSpesa_minima());
			statement.setString(11, ristorante.getPartita_Iva());

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
	public void delete(Ristorante ristorante) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM ristorante WHERE partita_iva = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, ristorante.getPartita_Iva());
			connection.setAutoCommit(false);
			connection.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
			// this.removeForeignKeyFromCategorie(ristorante, connection);
			statement.executeUpdate();
			connection.commit();
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
	public Ristorante findByEmail(String Email) {
		Ristorante ristorante = null;
		Connection connection = this.dataSource.getConnection();
		try {

			PreparedStatement statement;
			String query = "select * from ristorante where email_utenteregistrato=?";
			statement = connection.prepareStatement(query);
			statement.setString(1, Email);

			ResultSet result = statement.executeQuery();
			while (result.next()) {
				ristorante = new Ristorante();
				ristorante.setPartita_Iva(result.getString("partita_iva"));
				ristorante.setNome_Ristorante(result.getString("nome_ristorante"));
				ristorante.setIndirizzo_Legale(result.getString("indirizzo_legale"));
				ristorante.setIndirizzo_Ristorante(result.getString("indirizzo_ristorante"));
				ristorante.setCoordinate_Bancarie_Ristorante(result.getString("coordinate_bancarie_ristorante"));
				ristorante.setSpesa_minima(result.getDouble("spesa_minima"));
//				Titolare titolare = new Titolare();
//				titolare.setCf_Titolare(result.getString("codice_fiscale_titolare"));
				DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
				TitolareDao td=factory.getTitolareDAO();
				
				Titolare titolare=td.findByPrimaryKey(result.getString("codice_fiscale_titolare"));
				ristorante.setTitolare(titolare);
				
				Utente utente = new Utente();
				utente.setEmail_Utente(result.getString("email_utenteregistrato"));
				ristorante.setUtente_Proprietario(utente);
				ristorante.setDescrizione_Ristorante(result.getString("descrizione_ristorante"));
				ristorante.setCitta_Ristorante(result.getString("citta"));
				ristorante.setNumero_Telefono_Ristorante(result.getInt("numero_telefono_ristorante"));
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

		return ristorante;
	}

	@Override
	public void delete_pietanza_contenuta(Pietanza pietanza, Ristorante ristorante) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM contiene WHERE nome_pietanza_contenuta=? and partita_iva_ristorante_contenente=? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, pietanza.getNome());
			statement.setString(2, ristorante.getPartita_Iva());

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
	public List<Pietanza> pietanze_del_ristorante(Ristorante ristorante) {
		Connection connection = this.dataSource.getConnection();
		List<Pietanza> pietanze = new LinkedList<>();
		try {
			Pietanza pietanza;
			PreparedStatement statement;
			String query = "select * from pietanza where nome_pietanza in (select nome_pietanza_contenuta from contiene, ristorante where partita_iva_ristorante_contenente=?)";
			statement = connection.prepareStatement(query);
			statement.setString(1, ristorante.getPartita_Iva());
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				pietanza = new Pietanza();
				pietanza.setNome(result.getString("nome_pietanza"));
				pietanza.setDescrizione(result.getString("descrizione_pietanza"));
				pietanza.setPrezzo(result.getDouble("prezzo_pietanza"));

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
	public List<Categoria> tipo_cucina(Ristorante ristorante){
		Connection connection = this.dataSource.getConnection();
		List<Categoria> categorie  = new LinkedList<>();
		
		
		try {
			Categoria cat;
			PreparedStatement statement;
			String query = "select * from categoria where id_categoria in (select id_categoria_cucina from tipo_cucina, ristorante where partita_iva_ristorante_tipo_cucina=?)";
			statement = connection.prepareStatement(query);
			statement.setString(1, ristorante.getPartita_Iva());
			ResultSet result = statement.executeQuery();
			
			while (result.next()) {
			
				cat=new Categoria();
				cat.setId_Categoria(result.getInt("id_categoria"));
				cat.setNome_Categoria(result.getString("nome_categoria"));
				
				categorie.add(cat);	
			
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
		
		
		
		return categorie;
	}
	
	
	@Override
	public List<Ordine> riceve(Ristorante ristorante) {
		Connection connection = this.dataSource.getConnection();
		List<Ordine> ordini  = new LinkedList<>();
		
		
		try {
			Ordine ord=null;
			PreparedStatement statement;
			String query = "select * from ordine where id_ordine in (select id_ordine_ricevuto from riceve, ristorante where partita_iva_ristorante_ricevente=?)";
			statement = connection.prepareStatement(query);
			statement.setString(1, ristorante.getPartita_Iva());
			ResultSet result = statement.executeQuery();
			
			while (result.next()) {
			
				ord=new Ordine();
				ord.setId_ordine(result.getInt("id_ordine"));
				ord.setCommissioni_ordine(result.getDouble("commissioni_ordine"));
				
				DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
				PagamentoDao pd=factory.getPagamentoDAO();
				Pagamento p=pd.findByPrimaryKey(result.getInt("id_pagamento_ordine"));
				
				ord.setPagamento(p);
				ord.setPrezzo_totale_ordine(result.getDouble("prezzo_totale_ordine"));
				ord.setRistorante(ristorante);
				
				OrdineDao od=factory.getOrdineDAO();
				ord.setPietanze(od.comprende(ord));
				
				ordini.add(ord);
			
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
}
