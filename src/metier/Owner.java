package metier;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the proprietaire database table.
 * 
 */

public class Owner implements Serializable {
	private static final long serialVersionUID = 1L;

	private int id;
	private String lastname;
    private String firstname;
    
	public Owner() {
	}

	public Owner(int idProprietaire, String nomProprietaire, String prenomProprietaire) {
		super();
		this.setId(idProprietaire);
		this.setLastname(nomProprietaire);
		this.setFirstname(prenomProprietaire);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	

}