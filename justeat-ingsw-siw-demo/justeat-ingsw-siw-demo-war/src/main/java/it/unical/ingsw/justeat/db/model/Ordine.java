package it.unical.ingsw.justeat.db.model;

public class Ordine {
	
	private int id_ordine;
	private Pagamento pagamento;
	private double prezzo_totale_ordine;
	private double commissioni_ordine;
	private double spesa_minima;
	public int getId_ordine() {
		return id_ordine;
	}
	public void setId_ordine(int id_ordine) {
		this.id_ordine = id_ordine;
	}
	public Pagamento getPagamento() {
		return pagamento;
	}
	public void setPagamento(Pagamento pagamento) {
		this.pagamento = pagamento;
	}
	public double getPrezzo_totale_ordine() {
		return prezzo_totale_ordine;
	}
	public void setPrezzo_totale_ordine(double prezzo_totale_ordine) {
		this.prezzo_totale_ordine = prezzo_totale_ordine;
	}
	public double getCommissioni_ordine() {
		return commissioni_ordine;
	}
	public void setCommissioni_ordine(double commissioni_ordine) {
		this.commissioni_ordine = commissioni_ordine;
	}
	public double getSpesa_minima() {
		return spesa_minima;
	}
	public void setSpesa_minima(double spesa_minima) {
		this.spesa_minima = spesa_minima;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(commissioni_ordine);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + id_ordine;
		result = prime * result + ((pagamento == null) ? 0 : pagamento.hashCode());
		temp = Double.doubleToLongBits(prezzo_totale_ordine);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(spesa_minima);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		Ordine other = (Ordine) obj;
		if (Double.doubleToLongBits(commissioni_ordine) != Double.doubleToLongBits(other.commissioni_ordine))
			return false;
		if (id_ordine != other.id_ordine)
			return false;
		if (pagamento == null) {
			if (other.pagamento != null)
				return false;
		} else if (!pagamento.equals(other.pagamento))
			return false;
		if (Double.doubleToLongBits(prezzo_totale_ordine) != Double.doubleToLongBits(other.prezzo_totale_ordine))
			return false;
		if (Double.doubleToLongBits(spesa_minima) != Double.doubleToLongBits(other.spesa_minima))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Ordine [id_ordine=" + id_ordine + ", pagamento=" + pagamento + ", prezzo_totale_ordine="
				+ prezzo_totale_ordine + ", commissioni_ordine=" + commissioni_ordine + ", spesa_minima=" + spesa_minima
				+ "]";
	}
	
	
	
	
	
}
