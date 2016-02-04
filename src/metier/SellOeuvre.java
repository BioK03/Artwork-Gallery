package metier;

import java.io.Serializable;


/**
 * The persistent class for the oeuvrevente database table.
 * 
 */

public class SellOeuvre implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String condition;
	private float price;
	private String title;
	private Owner owner;


	public SellOeuvre(int id, String condition, float price, String title,
			Owner owner) {
		super();
		this.setId(id);
		this.setCondition(condition);
		this.setPrice(price);
		this.setTitle(title);
		this.setOwner(owner);
	}

	public SellOeuvre() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
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