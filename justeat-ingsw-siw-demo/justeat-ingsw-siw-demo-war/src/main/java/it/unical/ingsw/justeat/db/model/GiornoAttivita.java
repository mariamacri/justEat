package it.unical.ingsw.justeat.db.model;

import java.sql.Time;

public class GiornoAttivita {
	Time orarioApertura;
	Time orarioChiusura;
	String giorno;
	String partita_iva_ristorante_aprente;
	public Time getOrarioApertura() {
		return orarioApertura;
	}
	public void setOrarioApertura(Time orarioApertura) {
		this.orarioApertura = orarioApertura;
	}
	public Time getOrarioChiusura() {
		return orarioChiusura;
	}
	public void setOrarioChiusura(Time orarioChiusura) {
		this.orarioChiusura = orarioChiusura;
	}
	public String getGiorno() {
		return giorno;
	}
	public void setGiorno(String giorno) {
		this.giorno = giorno;
	}
	public String getPartita_iva_ristorante_aprente() {
		return partita_iva_ristorante_aprente;
	}
	public void setPartita_iva_ristorante_aprente(String partita_iva_ristorante_aprente) {
		this.partita_iva_ristorante_aprente = partita_iva_ristorante_aprente;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((giorno == null) ? 0 : giorno.hashCode());
		result = prime * result + ((orarioApertura == null) ? 0 : orarioApertura.hashCode());
		result = prime * result + ((orarioChiusura == null) ? 0 : orarioChiusura.hashCode());
		result = prime * result
				+ ((partita_iva_ristorante_aprente == null) ? 0 : partita_iva_ristorante_aprente.hashCode());
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
		GiornoAttivita other = (GiornoAttivita) obj;
		if (giorno == null) {
			if (other.giorno != null)
				return false;
		} else if (!giorno.equals(other.giorno))
			return false;
		if (orarioApertura == null) {
			if (other.orarioApertura != null)
				return false;
		} else if (!orarioApertura.equals(other.orarioApertura))
			return false;
		if (orarioChiusura == null) {
			if (other.orarioChiusura != null)
				return false;
		} else if (!orarioChiusura.equals(other.orarioChiusura))
			return false;
		if (partita_iva_ristorante_aprente == null) {
			if (other.partita_iva_ristorante_aprente != null)
				return false;
		} else if (!partita_iva_ristorante_aprente.equals(other.partita_iva_ristorante_aprente))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "GiornoAtivita [orarioApertura=" + orarioApertura + ", orarioChiusura=" + orarioChiusura + ", giorno="
				+ giorno + ", partita_iva_ristorante_aprente=" + partita_iva_ristorante_aprente + "]";
	}
	
	
}
