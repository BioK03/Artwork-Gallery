package metier;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the reservation database table.
 * 
 */
public class Booking implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Date date;
	private Adherent adherent;
	private SellOeuvre sellOeuvre;

	public Booking() {
	}



	public Booking(Date date, Adherent adherent, SellOeuvre sellOeuvre) {
		super();
		this.date = date;
		this.adherent = adherent;
		this.sellOeuvre = sellOeuvre;
	}



	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Adherent getAdherent() {
		return this.adherent;
	}

	public void setAdherent(Adherent adherent) {
		this.adherent = adherent;
	}

	public SellOeuvre getSellOeuvre() {
		return this.sellOeuvre;
	}

	public void setSellOeuvre(SellOeuvre sellOeuvre) {
		this.sellOeuvre = sellOeuvre;
	}

}