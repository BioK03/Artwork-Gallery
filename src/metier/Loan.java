package metier;

import java.io.Serializable;
import java.util.Date;


/**
 * The persistent class for the pret database table.
 * 
 */
public class Loan implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private Date date;
	private int duration;
	private LoanOeuvre loanOeuvre;
	private Adherent adherent;

	
	public Loan( Date date, int duree, LoanOeuvre oeuvrepret, Adherent adherent) {
		super();
		this.date = date;
		this.duration = duration;
		this.loanOeuvre = loanOeuvre;
		this.adherent = adherent;
	}

	public Loan() {
	}


	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getDuree() {
		return this.duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public LoanOeuvre getLoanOeuvre() {
		return this.loanOeuvre;
	}

	public void setLoanOeuvre(LoanOeuvre loanOeuvre) {
		this.loanOeuvre = loanOeuvre;
	}

	public Adherent getAdherent() {
		return this.adherent;
	}

	public void setAdherent(Adherent adherent) {
		this.adherent = adherent;
	}

}