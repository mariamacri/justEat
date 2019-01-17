package it.unical.ingsw.justeat.db.model;

public class Categoria {

	private String nome_Categoria;
	private int id_Categoria;

	public String getNome_Categoria() {
		return nome_Categoria;
	}

	public void setNome_Categoria(String nome_Categoria) {
		this.nome_Categoria = nome_Categoria;
	}

	public int getId_Categoria() {
		return id_Categoria;
	}

	public void setId_Categoria(int id_Categoria) {
		this.id_Categoria = id_Categoria;
	}

	@Override
	public String toString() {
		return "Categoria [nome_Categoria=" + nome_Categoria + ", id_Categoria=" + id_Categoria + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id_Categoria;
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
		Categoria other = (Categoria) obj;
		if (id_Categoria != other.id_Categoria)
			return false;
		return true;
	}

}