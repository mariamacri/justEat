package it.unical.ingsw.justeat.db.model;

import java.util.Date;

public class CartaDiCredito {
	private String numero_Carta;
	private String tipo_Circuito_Carta;
	private double saldo_Disponibile;// number format
	private Date scadenza;

	// SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

	public double getSaldo_Disponibile() {
		return saldo_Disponibile;
	}

	public String getNumero_Carta() {
		return numero_Carta;
	}

	public void setNumero_Carta(String numero_Carta) {
		this.numero_Carta = numero_Carta;
	}

	public String getTipo_Circuito_Carta() {
		return tipo_Circuito_Carta;
	}

	public void setTipo_Circuito_Carta(String tipo_Circuito_Carta) {
		this.tipo_Circuito_Carta = tipo_Circuito_Carta;
	}

	public void setSaldo_Disponibile(double saldo_Disponibile) {
		this.saldo_Disponibile = saldo_Disponibile;
	}

	public Date getScadenza() {
		return scadenza;
	}

	public void setScadenza(Date scadenza) {
		this.scadenza = scadenza;
	}

	@Override
	public String toString() {
		return "CartaDiCredito [numero_Carta=" + numero_Carta + ", tipo_Circuito_Carta=" + tipo_Circuito_Carta
				+ ", saldo_Disponibile=" + saldo_Disponibile + ", scadenza=" + scadenza + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((numero_Carta == null) ? 0 : numero_Carta.hashCode());
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
		CartaDiCredito other = (CartaDiCredito) obj;
		if (numero_Carta == null) {
			if (other.numero_Carta != null)
				return false;
		} else if (!numero_Carta.equals(other.numero_Carta))
			return false;
		return true;
	}

}
