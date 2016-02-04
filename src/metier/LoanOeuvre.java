package metier;

import java.io.Serializable;


/**
 * The persistent class for the oeuvrepret database table.
 * 
 */

public class LoanOeuvre implements Serializable {
	private static final long serialVersionUID = 1L;

	private int id;
	private String title;
	private Owner owner;

	
	public LoanOeuvre(int idOeuvrepret, String titreOeuvrepret, Owner proprietaire) {
		super();
		this.setId(idOeuvrepret);
		this.setTitle(titreOeuvrepret);
		this.setOwner(proprietaire);
	}

	public LoanOeuvre() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Owner getOwner() {
		return owner;
	}

	public void setOwner(Owner owner) {
		this.owner = owner;
	}

}