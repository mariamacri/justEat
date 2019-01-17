package it.unical.ingsw.justeat.db.factory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import it.unical.ingsw.justeat.db.factory.exception.PersistenceException;

public class UtilDao {

	private DataSource dataSource;

	public UtilDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void dropDatabase() {

		Connection connection = dataSource.getConnection();
		try {
			String delete = "drop SEQUENCE if EXISTS sequenza_id;" + "drop table if exists ristorante;"
					+ "drop table if exists pietanza;";
//					+ "drop table if exists corso;" + "drop table if exists corsodilaurea;"
//					+ "drop table if exists dipartimento;" + "drop table if exists scuola;";
			PreparedStatement statement = connection.prepareStatement(delete);

			statement.executeUpdate();
			System.out.println("Executed drop database");

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

	public void createDatabase() {

		Connection connection = dataSource.getConnection();
		try {

			String delete = "create SEQUENCE sequenza_id;"
					+ "create table ristorante (nome CHARACTER(80) primary key, indirizzo CHARACTER(80) );"
					+ "create table pietanza (prezzo double precision, nome CHARACTER(20) primary key, descrizione CHARACTER(250) );";
			// + "create table corso (\"codice\" bigint primary key, nome varchar(255));"
			// + "create table dipartimento(\"codice\" bigint primary key,nome
			// varchar(255));"
			// + "create table corsodilaurea(\"codice\" bigint primary key,nome
			// varchar(255),dipartimento_codice bigint REFERENCES
			// dipartimento(\"codice\"));"
			// + "create table afferisce(\"id\" bigint primary key, corso_codice bigint
			// REFERENCES corso(\"codice\"), corsodilaurea_codice bigint REFERENCES
			// corsodilaurea(\"codice\"));"
//					+ "create table studente(matricola CHARACTER(8) primary key,"
//					+ "nome VARCHAR(255),cognome VARCHAR(255),"
//					+ "data_nascita DATE, scuola_id bigint REFERENCES scuola(\"id\"), password VARCHAR(255));"
//					+ "create table iscritto(\"id\" bigint primary key, matricola_studente CHARACTER(8) REFERENCES studente(\"matricola\"), corso_codice bigint REFERENCES corso(\"codice\"));";

			PreparedStatement statement = connection.prepareStatement(delete);

			statement.executeUpdate();
			System.out.println("Executed create database");

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

	public void resetDatabase() {

		Connection connection = dataSource.getConnection();
		try {
			String delete = "delete FROM ristorante";
			PreparedStatement statement = connection.prepareStatement(delete);

			statement.executeUpdate();

			delete = "delete FROM pietanza";
			statement = connection.prepareStatement(delete);
			statement.executeUpdate();
//			delete = "delete FROM corso";
//			statement = connection.prepareStatement(delete);
//			
//			delete = "delete FROM dipartimento";
//			statement = connection.prepareStatement(delete);
//			
//			delete = "delete FROM corsodilaurea";
//			statement = connection.prepareStatement(delete);
//			
//			delete = "delete FROM afferisce";
//			statement = connection.prepareStatement(delete);
//			
//			delete = "delete FROM iscritto";
//			statement = connection.prepareStatement(delete);

//		statement.executeUpdate();
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
