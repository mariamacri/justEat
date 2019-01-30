package it.unical.ingsw.justeat.db.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Titolare {
	private String cf_Titolare;
	private String nome_Titolare;
	private String cognome_Titolare;
	private String indirizzo_Titolare;
	private Date data_Nascita_Titolare;


	private CartaDiCredito carta_di_credito;


	



	public CartaDiCredito getCarta_di_credito() {
		return carta_di_credito;
	}

	public void setCarta_di_credito(CartaDiCredito carta_di_credito) {
		this.carta_di_credito = carta_di_credito;
	}

	public String getCf_Titolare() {
		return cf_Titolare;
	}

	public void setCf_Titolare(String cf_Titolare) {
		this.cf_Titolare = cf_Titolare;
	}

	public String getNome_Titolare() {
		return nome_Titolare;
	}

	public void setNome_Titolare(String nome_Titolare) {
		this.nome_Titolare = nome_Titolare;
	}

	public String getCognome_Titolare() {
		return cognome_Titolare;
	}

	public void setCognome_Titolare(String cognome_Titolare) {
		this.cognome_Titolare = cognome_Titolare;
	}

	public String getIndirizzo_Titolare() {
		return indirizzo_Titolare;
	}

	public void setIndirizzo_Titolare(String indirizzo_Titolare) {
		this.indirizzo_Titolare = indirizzo_Titolare;
	}

	public Date getData_Nascita_Titolare() {
		return data_Nascita_Titolare;
	}

	public void setData_Nascita_Titolare(Date data_Nascita_Titolare) {
		this.data_Nascita_Titolare = data_Nascita_Titolare;
	}

	

	



}
