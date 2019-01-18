package it.unical.ingsw.justeat.db.model;

public class Feedback {
	
	private String descrizione; 
	private Ristorante ristorante_recensito; //partita iva chiave secondaria
	private Utente utente_recensore; //email utente che ha fatto la recensione
	private int numero_stelle; 
	private int id_feedback;
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public Ristorante getRistorante_recensito() {
		return ristorante_recensito;
	}
	public void setRistorante_recensito(Ristorante ristorante_recensito) {
		this.ristorante_recensito = ristorante_recensito;
	}
	public Utente getUtente_recensore() {
		return utente_recensore;
	}
	public void setUtente_recensore(Utente utente_recensore) {
		this.utente_recensore = utente_recensore;
	}
	public int getNumero_stelle() {
		return numero_stelle;
	}
	public void setNumero_stelle(int numero_stelle) {
		this.numero_stelle = numero_stelle;
	}
	public int getId_feedback() {
		return id_feedback;
	}
	public void setId_feedback(int id_feedback) {
		this.id_feedback = id_feedback;
	}
	@Override
	public String toString() {
		return "Feedback [descrizione=" + descrizione + ", ristorante_recensito=" + ristorante_recensito.getPartita_Iva()
				+ ", utente_recensore=" + utente_recensore.getEmail_Utente() + ", numero_stelle=" + numero_stelle + ", id_feedback="
				+ id_feedback + "]";
	}
	
	
	
	
}
