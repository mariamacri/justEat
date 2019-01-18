package it.unical.ingsw.justeat.db.model;

public class Pagamento {
	
	private double sconto; 
	private Utente utente; 
	private int id_pagamento; 
	private double importo_totale_pagamento;
	public double getSconto() {
		return sconto;
	}
	public void setSconto(double sconto) {
		this.sconto = sconto;
	}
	public Utente getUtente() {
		return utente;
	}
	public void setUtente(Utente utente) {
		this.utente = utente;
	}
	public int getId_pagamento() {
		return id_pagamento;
	}
	public void setId_pagamento(int id_pagamento) {
		this.id_pagamento = id_pagamento;
	}
	public double getImporto_totale_pagamento() {
		return importo_totale_pagamento;
	}
	public void setImporto_totale_pagamento(double importo_totale_pagamento) {
		this.importo_totale_pagamento = importo_totale_pagamento;
	}
	@Override
	public String toString() {
		return "Pagamento [sconto=" + sconto + ", utente=" + utente.getCarta_Credito_Usata().getNumero_Carta() + ", id_pagamento=" + id_pagamento
				+ ", importo_totale_pagamento=" + importo_totale_pagamento + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id_pagamento;
		long temp;
		temp = Double.doubleToLongBits(importo_totale_pagamento);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(sconto);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((utente == null) ? 0 : utente.hashCode());
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
		Pagamento other = (Pagamento) obj;
		if (id_pagamento != other.id_pagamento)
			return false;
		if (Double.doubleToLongBits(importo_totale_pagamento) != Double
				.doubleToLongBits(other.importo_totale_pagamento))
			return false;
		if (Double.doubleToLongBits(sconto) != Double.doubleToLongBits(other.sconto))
			return false;
		if (utente == null) {
			if (other.utente != null)
				return false;
		} else if (!utente.equals(other.utente))
			return false;
		return true;
	} 
	
	
	
	
	
}
