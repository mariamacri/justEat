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
	private int numero_Telefono_Titolare;
	// un titolare può avere più carte di credito
	private Set<CartaDiCredito> carteDiCredito;

	// chiave secondaria il titolare può avere più carte di credito
	public void addCarta(CartaDiCredito carta) {
		if (carteDiCredito == null) {
			carteDiCredito = new HashSet<CartaDiCredito>();
		}
		carteDiCredito.add(carta);
	}

	public void removeCarta(CartaDiCredito carta) {
		if (carteDiCredito == null) {
			return;
		}
		carteDiCredito.remove(carta);
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

	public int getNumero_Telefono_Titolare() {
		return numero_Telefono_Titolare;
	}

	public void setNumero_Telefono_Titolare(int numero_Telefono_Titolare) {
		this.numero_Telefono_Titolare = numero_Telefono_Titolare;
	}

	public Set<CartaDiCredito> getCarteDiCredito() {
		return carteDiCredito;
	}

	public void setCarteDiCredito(Set<CartaDiCredito> carteDiCredito) {
		this.carteDiCredito = carteDiCredito;
	}

//	@Override
//	public String toString() {
//		StringBuffer str = new StringBuffer("Titolare[");
//		str.append(this.getCf_Titolare() + ", " + this.getNome_Titolare() + ", " + this.getCognome_Titolare() + ", "
//				+ this.getIndirizzo_Titolare() + ", " + this.getData_Nascita_Titolare() + ", "
//				+ this.getNumero_Telefono_Titolare());
//		str.append(", {");
//		boolean started = false;
//		for (CartaDiCredito s : this.getCarteDiCredito()) {
//			if (!started) {
//				started = true;
//			} else {
//				str.append(", ");
//			}
//			str.append(s.getNumero_Carta());
//		}
//		str.append("}\n");
//		return str.toString();
//	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((carteDiCredito == null) ? 0 : carteDiCredito.hashCode());
		result = prime * result + ((cf_Titolare == null) ? 0 : cf_Titolare.hashCode());
		result = prime * result + ((cognome_Titolare == null) ? 0 : cognome_Titolare.hashCode());
		result = prime * result + ((data_Nascita_Titolare == null) ? 0 : data_Nascita_Titolare.hashCode());
		result = prime * result + ((indirizzo_Titolare == null) ? 0 : indirizzo_Titolare.hashCode());
		result = prime * result + ((nome_Titolare == null) ? 0 : nome_Titolare.hashCode());
		result = prime * result + numero_Telefono_Titolare;
		return result;
	}

	@Override
	public String toString() {
		return "Titolare [cf_Titolare=" + cf_Titolare + ", nome_Titolare=" + nome_Titolare + ", cognome_Titolare="
				+ cognome_Titolare + ", indirizzo_Titolare=" + indirizzo_Titolare + ", data_Nascita_Titolare="
				+ data_Nascita_Titolare + ", numero_Telefono_Titolare=" + numero_Telefono_Titolare + ", carteDiCredito="
				+ carteDiCredito + "]";
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Titolare other = (Titolare) obj;
		if (carteDiCredito == null) {
			if (other.carteDiCredito != null)
				return false;
		} else if (!carteDiCredito.equals(other.carteDiCredito))
			return false;
		if (cf_Titolare == null) {
			if (other.cf_Titolare != null)
				return false;
		} else if (!cf_Titolare.equals(other.cf_Titolare))
			return false;
		if (cognome_Titolare == null) {
			if (other.cognome_Titolare != null)
				return false;
		} else if (!cognome_Titolare.equals(other.cognome_Titolare))
			return false;
		if (data_Nascita_Titolare == null) {
			if (other.data_Nascita_Titolare != null)
				return false;
		} else if (!data_Nascita_Titolare.equals(other.data_Nascita_Titolare))
			return false;
		if (indirizzo_Titolare == null) {
			if (other.indirizzo_Titolare != null)
				return false;
		} else if (!indirizzo_Titolare.equals(other.indirizzo_Titolare))
			return false;
		if (nome_Titolare == null) {
			if (other.nome_Titolare != null)
				return false;
		} else if (!nome_Titolare.equals(other.nome_Titolare))
			return false;
		if (numero_Telefono_Titolare != other.numero_Telefono_Titolare)
			return false;
		return true;
	}

}
