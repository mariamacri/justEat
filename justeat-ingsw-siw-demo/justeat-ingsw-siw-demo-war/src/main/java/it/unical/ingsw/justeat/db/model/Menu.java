package it.unical.ingsw.justeat.db.model;

public class Menu {
	
	private int idmenu; 
	private String descrizionemenu;
	public int getIdmenu() {
		return idmenu;
	}
	public void setIdmenu(int idmenu) {
		this.idmenu = idmenu;
	}
	public String getDescrizionemenu() {
		return descrizionemenu;
	}
	public void setDescrizionemenu(String descrizionemenu) {
		this.descrizionemenu = descrizionemenu;
	}
	@Override
	public String toString() {
		return "Menu [idmenu=" + idmenu + ", descrizionemenu=" + descrizionemenu + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((descrizionemenu == null) ? 0 : descrizionemenu.hashCode());
		result = prime * result + idmenu;
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
		Menu other = (Menu) obj;
		if (descrizionemenu == null) {
			if (other.descrizionemenu != null)
				return false;
		} else if (!descrizionemenu.equals(other.descrizionemenu))
			return false;
		if (idmenu != other.idmenu)
			return false;
		return true;
	} 
	
	
}
