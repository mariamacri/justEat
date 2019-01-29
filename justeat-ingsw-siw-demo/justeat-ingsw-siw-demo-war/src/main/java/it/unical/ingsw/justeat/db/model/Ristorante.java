package it.unical.ingsw.justeat.db.model;
//modificato
import java.util.HashSet;
import java.util.Set;


public class Ristorante {

	private String nome_Ristorante;
	private String indirizzo_Ristorante;
	private String indirizzo_Legale;
	private String partita_Iva;
	private String coordinate_Bancarie_Ristorante;
	private Titolare titolare;
	private String descrizione_Ristorante;
	// utente che crea il ristorante
	private Utente utente_Proprietario;
	private Set<Categoria> categorie;


	


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((categorie == null) ? 0 : categorie.hashCode());
		
		result = prime * result
				+ ((coordinate_Bancarie_Ristorante == null) ? 0 : coordinate_Bancarie_Ristorante.hashCode());
		result = prime * result + ((descrizione_Ristorante == null) ? 0 : descrizione_Ristorante.hashCode());
		result = prime * result + ((indirizzo_Legale == null) ? 0 : indirizzo_Legale.hashCode());
		result = prime * result + ((indirizzo_Ristorante == null) ? 0 : indirizzo_Ristorante.hashCode());
		result = prime * result + ((nome_Ristorante == null) ? 0 : nome_Ristorante.hashCode());
		result = prime * result + ((partita_Iva == null) ? 0 : partita_Iva.hashCode());
		result = prime * result + ((titolare == null) ? 0 : titolare.hashCode());
		result = prime * result + ((utente_Proprietario == null) ? 0 : utente_Proprietario.hashCode());
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
		Ristorante other = (Ristorante) obj;
		if (categorie == null) {
			if (other.categorie != null)
				return false;
		} else if (!categorie.equals(other.categorie))
			return false;
		
		if (coordinate_Bancarie_Ristorante == null) {
			if (other.coordinate_Bancarie_Ristorante != null)
				return false;
		} else if (!coordinate_Bancarie_Ristorante.equals(other.coordinate_Bancarie_Ristorante))
			return false;
		if (descrizione_Ristorante == null) {
			if (other.descrizione_Ristorante != null)
				return false;
		} else if (!descrizione_Ristorante.equals(other.descrizione_Ristorante))
			return false;
		if (indirizzo_Legale == null) {
			if (other.indirizzo_Legale != null)
				return false;
		} else if (!indirizzo_Legale.equals(other.indirizzo_Legale))
			return false;
		if (indirizzo_Ristorante == null) {
			if (other.indirizzo_Ristorante != null)
				return false;
		} else if (!indirizzo_Ristorante.equals(other.indirizzo_Ristorante))
			return false;
		if (nome_Ristorante == null) {
			if (other.nome_Ristorante != null)
				return false;
		} else if (!nome_Ristorante.equals(other.nome_Ristorante))
			return false;
		if (partita_Iva == null) {
			if (other.partita_Iva != null)
				return false;
		} else if (!partita_Iva.equals(other.partita_Iva))
			return false;
		if (titolare == null) {
			if (other.titolare != null)
				return false;
		} else if (!titolare.equals(other.titolare))
			return false;
		if (utente_Proprietario == null) {
			if (other.utente_Proprietario != null)
				return false;
		} else if (!utente_Proprietario.equals(other.utente_Proprietario))
			return false;
		return true;
	}

	

	public void addCategoria(Categoria categoria) {
		if (categorie == null) {
			categorie = new HashSet<Categoria>();
		}
		categorie.add(categoria);
	}

	public Set<Categoria> getCategorie() {
		return categorie;
	}

	public void setCategorie(Set<Categoria> categoria) {
		this.categorie = categoria;
	}

	public String getNome_Ristorante() {
		return nome_Ristorante;
	}

	public void setNome_Ristorante(String nome_Ristorante) {
		this.nome_Ristorante = nome_Ristorante;
	}

	public String getIndirizzo_Ristorante() {
		return indirizzo_Ristorante;
	}

	public void setIndirizzo_Ristorante(String indirizzo_Ristorante) {
		this.indirizzo_Ristorante = indirizzo_Ristorante;
	}

	public String getIndirizzo_Legale() {
		return indirizzo_Legale;
	}

	public void setIndirizzo_Legale(String indirizzo_Legale) {
		this.indirizzo_Legale = indirizzo_Legale;
	}

	public String getPartita_Iva() {
		return partita_Iva;
	}

	public void setPartita_Iva(String partita_Iva) {
		this.partita_Iva = partita_Iva;
	}

	public String getCoordinate_Bancarie_Ristorante() {
		return coordinate_Bancarie_Ristorante;
	}

	public void setCoordinate_Bancarie_Ristorante(String coordinate_Bancarie_Ristorante) {
		this.coordinate_Bancarie_Ristorante = coordinate_Bancarie_Ristorante;
	}

	public Titolare getTitolare() {
		return titolare;
	}

	public void setTitolare(Titolare titolare) {
		this.titolare = titolare;
	}

	public String getDescrizione_Ristorante() {
		return descrizione_Ristorante;
	}

	public void setDescrizione_Ristorante(String descrizione_Ristorante) {
		this.descrizione_Ristorante = descrizione_Ristorante;
	}

	public Utente getUtente_Proprietario() {
		return utente_Proprietario;
	}

	public void setUtente_Proprietario(Utente utente_Proprietario) {
		this.utente_Proprietario = utente_Proprietario;
	}

}
