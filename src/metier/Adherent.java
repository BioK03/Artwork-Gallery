package metier;

import java.io.Serializable;


/**
 * The persistent class for the adherent database table.
 * 
 */

public class Adherent implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String lastname;
	private String firstname;
	private String city;

	
	public Adherent(int id, String lastname, String firstname, String city) {
		super();
		this.setId(id);
		this.setLastname(lastname);
		this.setFirstname(firstname);
		this.setCity(city);
	}

	public Adherent() {
		this.setId(0);
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

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	

}