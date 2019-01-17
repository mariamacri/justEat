package it.unical.ingsw.justeat.db.model;

import java.util.HashSet;
import java.util.Set;

public class Utente {
	private String nome_Utente; 
	private String cognome_Utente; 
	private String indirizzo_Utente;
	private String password; 
	private CartaDiCredito carta_Credito_Usata;
	private int numero_telefono_utente;
	private String email_Utente;
	
	
	
	public String getEmail_Utente() {
		return email_Utente;
	}
	public void setEmail_Utente(String email_Utente) {
		this.email_Utente = email_Utente;
	}
	public String getNome_Utente() {
		return nome_Utente;
	}
	public void setNome_Utente(String nome_Utente) {
		this.nome_Utente = nome_Utente;
	}
	public String getCognome_Utente() {
		return cognome_Utente;
	}
	public void setCognome_Utente(String cognome_Utente) {
		this.cognome_Utente = cognome_Utente;
	}
	public String getIndirizzo_Utente() {
		return indirizzo_Utente;
	}
	public void setIndirizzo_Utente(String indirizzo_Utente) {
		this.indirizzo_Utente = indirizzo_Utente;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public CartaDiCredito getCarta_Credito_Usata() {
		return carta_Credito_Usata;
	}
	public void setCarta_Credito_Usata(CartaDiCredito carta_Credito_Usata) {
		this.carta_Credito_Usata = carta_Credito_Usata;
	}
	public int getNumero_telefono_utente() {
		return numero_telefono_utente;
	}
	public void setNumero_telefono_utente(int numero_telefono_utente) {
		this.numero_telefono_utente = numero_telefono_utente;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((carta_Credito_Usata == null) ? 0 : carta_Credito_Usata.hashCode());
		result = prime * result + ((cognome_Utente == null) ? 0 : cognome_Utente.hashCode());
		result = prime * result + ((email_Utente == null) ? 0 : email_Utente.hashCode());
		result = prime * result + ((indirizzo_Utente == null) ? 0 : indirizzo_Utente.hashCode());
		result = prime * result + ((nome_Utente == null) ? 0 : nome_Utente.hashCode());
		result = prime * result + numero_telefono_utente;
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Utente other = (Utente) obj;
		if (carta_Credito_Usata == null) {
			if (other.carta_Credito_Usata != null)
				return false;
		} else if (!carta_Credito_Usata.equals(other.carta_Credito_Usata))
			return false;
		if (cognome_Utente == null) {
			if (other.cognome_Utente != null)
				return false;
		} else if (!cognome_Utente.equals(other.cognome_Utente))
			return false;
		if (email_Utente == null) {
			if (other.email_Utente != null)
				return false;
		} else if (!email_Utente.equals(other.email_Utente))
			return false;
		if (indirizzo_Utente == null) {
			if (other.indirizzo_Utente != null)
				return false;
		} else if (!indirizzo_Utente.equals(other.indirizzo_Utente))
			return false;
		if (nome_Utente == null) {
			if (other.nome_Utente != null)
				return false;
		} else if (!nome_Utente.equals(other.nome_Utente))
			return false;
		if (numero_telefono_utente != other.numero_telefono_utente)
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Utente [nome_Utente=" + nome_Utente + ", cognome_Utente=" + cognome_Utente + ", indirizzo_Utente="
				+ indirizzo_Utente + ", password=" + password + ", carta_Credito_Usata=" + carta_Credito_Usata
				+ ", numero_telefono_utente=" + numero_telefono_utente + ", email_Utente=" + email_Utente + "]";
	}


	


}

