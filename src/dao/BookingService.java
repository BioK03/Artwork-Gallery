package dao;

import meserreurs.MyException;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import metier.*;
import persistance.*;
import dao.OeuvreService;
import dao.AdherentService;

public class BookingService {

	public void insertOrUpdate(Booking booking) throws MyException {
		String mysql;

		DialogueBd unDialogueBd = DialogueBd.getInstance();
		try {
			Booking booking2 = findByOeuvreAdherent(booking.getSellOeuvre().getId(), booking.getAdherent().getId());
			if(booking2!=null)
			{
				mysql = "update reservation set id_adherent='"+ booking.getAdherent()+
											"',id_oeuvrevente='"+ booking.getSellOeuvre()+
											"',date_reservation='"+ booking.getDate();
			}
			else
			{
				mysql = "insert into reservation  (id_adherent,id_oeuvrevente,date_reservation)  " + "values ('"
						+ booking.getAdherent();
				mysql += "','" + booking.getSellOeuvre() + "','" + booking.getDate() + "')";
			}

			unDialogueBd.insertionBD(mysql);
		} catch (MyException e) {
			throw e;
		}
	}
	
	public void delete(int oeuvreId, int adherentId) throws MyException {
		String mysql = "delete FROM reservation WHERE id_adherent="+adherentId+" AND id_oeuvrevente="+oeuvreId;
		DialogueBd unDialogueBd = DialogueBd.getInstance();
		unDialogueBd.execute(mysql);
	}

	public List<Booking> findByOeuvre(int id) throws MyException {
		String mysql = "select * FROM reservation WHERE id_oeuvrevente=" + id;
		List<Booking> bookings = findBySQL(mysql);
		if (bookings.isEmpty())
			return null;
		else {
			return bookings;
		}
	}

	public List<Booking> findByAdherent(int id) throws MyException {
		String mysql = "select * from reservation where id_adherent=" + id;
		List<Booking> bookings = findBySQL(mysql);
		if (bookings.isEmpty())
			return null;
		else {
			return bookings;
		}
	}
	
	public Booking findByOeuvreAdherent(int idOeuvre, int idAdherent) throws MyException {
		String mysql = "select * from reservation where id_oeuvrevente=" + idOeuvre+" AND id_adherent="+idAdherent;
		List<Booking> bookings = findBySQL(mysql);
		if (bookings.isEmpty())
			return null;
		else {
			return bookings.get(0);
		}
	}

	private List<Booking> findBySQL(String mysql) throws MyException {
		List<Object> rs;
		List<Booking> bookings = new ArrayList<Booking>();
		int index = 0;
		try {
			AdherentService adherentService = new AdherentService();
			OeuvreService oeuvreService = new OeuvreService();
			DialogueBd unDialogueBd = DialogueBd.getInstance();
			rs = DialogueBd.lecture(mysql);
			while (index < rs.size()) {
				Booking booking = new Booking();
				booking.setSellOeuvre(oeuvreService.findSellById(Integer.parseInt(rs.get(index + 0).toString())));
				booking.setAdherent(adherentService.findById(Integer.parseInt(rs.get(index + 1).toString())));
				System.out.println(rs.get(index + 2).toString());
				DateFormat format = new SimpleDateFormat("yyyy-MM-DD", Locale.FRANCE);
				Date date = format.parse(rs.get(index + 2).toString());
				booking.setDate(date);
				booking.setStatus(rs.get(index + 3).toString());
				index += 4;
				bookings.add(booking);
			}

			return bookings;
		} catch (Exception exc) {

			System.out.println(exc.getMessage());
			throw new MyException(exc.getMessage(), "systeme");
		}
	}

}
