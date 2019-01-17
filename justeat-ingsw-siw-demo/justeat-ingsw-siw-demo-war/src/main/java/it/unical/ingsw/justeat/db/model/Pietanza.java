package it.unical.ingsw.justeat.db.model;

public class Pietanza {
	private String nome;
	private double prezzo;
	private String descrizione;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double d) {
		this.prezzo = d;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	@Override
	public String toString() {
		return "Pietanza [nome=" + nome + ", prezzo=" + prezzo + ", descrizione=" + descrizione + "]";
	}

}
