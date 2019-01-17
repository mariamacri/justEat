package it.unical.ingsw.justeat.db.model;

import java.util.HashSet;
import java.util.Set;

public class Utente {
	private Long codice;
	private String nome;
	private String cognome;

	private String indirizzo;
	private String codiceFiscale;

	private Set<Utente> utenti;

	public Long getCodice() {
		return codice;
	}

	public void setCodice(Long codice) {
		this.codice = codice;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public Set<Utente> getUtenti() {
		return utenti;
	}

	public void setStudenti(Set<Utente> studenti) {
		this.utenti = studenti;
	}

	public void addUtente(Utente utente) {
		if (this.utenti == null) {
			this.utenti = new HashSet<Utente>();
		}
		this.utenti.add(utente);
	}

	@Override
	public String toString() {
		StringBuffer str = new StringBuffer("Corso[");
		str.append(this.getCodice() + ", " + this.getNome());
		str.append(", {");
		boolean started = false;
		for (Utente s : this.getUtenti()) {
			if (!started) {
				started = true;
			} else {
				str.append(", ");
			}
			str.append(s.toString());
		}
		str.append("}\n");
		return str.toString();
	}
}
