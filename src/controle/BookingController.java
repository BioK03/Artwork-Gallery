package controle;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.OeuvreService;
import dao.AdherentService;
import dao.BookingService;
import meserreurs.MyException;
import metier.SellOeuvre;
import metier.Booking;


/**
 * Servlet implementation class OeuvreController
 */
@WebServlet("/BookingController")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingController() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		requestTreatment(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		requestTreatment(request, response);
	}
	
	protected void requestTreatment(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String actionName = request.getParameter("action");
		String flashbag = "";
		String flashbagType = "";

		BookingService bookingService = new BookingService();
		AdherentService adherentService = new AdherentService();
		OeuvreService oeuvreService = new OeuvreService();
		
		String destinationPage = "/views/index.jsp";
		// execute l'action
		if ("add".equals(actionName)) {
			try {
				if(request.getParameter("return")=="sellOeuvre")
				{
					request.setAttribute("adherents", adherentService.findAll());
					SellOeuvre sellOeuvre = oeuvreService.findSellById(Integer.parseInt(request.getParameter("id")));
					request.setAttribute("oeuvre", sellOeuvre);
				}
				else
				{
					request.setAttribute("adherent", adherentService.findById(Integer.parseInt(request.getParameter("id"))));
					List<SellOeuvre> sellOeuvres = oeuvreService.findAllSell();
					request.setAttribute("oeuvres", sellOeuvres);
				}
				
			}
			catch (MyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				flashbag=e.getMessage();
				flashbagType="error";
			}
			destinationPage = "/views/Booking/add.jsp";
		} 
		
		else if ("insertOrUpdate".equals(actionName)) {
			try {				
				Booking booking = new Booking();
				booking.setAdherent(adherentService.findById(Integer.parseInt(request.getParameter("adherentId"))));
				booking.setSellOeuvre(oeuvreService.findSellById(Integer.parseInt(request.getParameter("oeuvreId"))));
				booking.setDate(new Date(request.getParameter("date")));
				bookingService.insertOrUpdate(booking);
				flashbag = "L'oeuvre a été réservé correctement.";
				flashbagType = "success";
			}
			catch (MyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				flashbag=e.getMessage();
				flashbagType="error";
			}
			if(request.getParameter("return")=="sellOeuvre")
			{
				try {
					request.setAttribute("oeuvre", oeuvreService.findSellById(Integer.parseInt(request.getParameter("id"))));
					request.setAttribute("bookings", bookingService.findByOeuvre(Integer.parseInt(request.getParameter("id"))));

				} catch (MyException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					flashbag=e.getMessage();
					flashbagType="error";
				}

				destinationPage = "/views/Oeuvre/details.jsp";
			}
			else
			{
				try {
					request.setAttribute("adherent", adherentService.findById(Integer.parseInt(request.getParameter("id"))));
					request.setAttribute("bookings", bookingService.findByAdherent(Integer.parseInt(request.getParameter("id"))));

				} catch (MyException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					flashbag=e.getMessage();
					flashbagType="error";
				}

				destinationPage = "/views/Adherent/details.jsp";
			}			
		} 
		
		else if ("edit".equals(actionName)) {
			try {
				request.setAttribute("booking", bookingService.findByOeuvreAdherent(Integer.parseInt(request.getParameter("oeuvreId")), Integer.parseInt(request.getParameter("adherentId"))));
			}
			catch (MyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				flashbag=e.getMessage();
				flashbagType="error";
			}
			destinationPage = "/views/Booking/edit.jsp";
		}
		
		else if ("deleteConfirmation".equals(actionName)) {
			try {
				request.setAttribute("booking", bookingService.findByOeuvreAdherent(Integer.parseInt(request.getParameter("oeuvreId")), Integer.parseInt(request.getParameter("adherentId"))));

			} catch (MyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				flashbag=e.getMessage();
				flashbagType="error";
			}
			
			destinationPage = "/views/Booking/delete.jsp";
		}
		
		else if ("delete".equals(actionName)) {
			try {
				bookingService.delete(Integer.parseInt(request.getParameter("oeuvreId")),Integer.parseInt(request.getParameter("adherentId")));
				flashbag = "La reservation a été supprimé correctement.";
				flashbagType = "success";
			}
			catch (MyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				flashbag=e.getMessage();
				flashbagType="error";
			}
			if(request.getParameter("return")=="sellOeuvre")
			{
				try {
					request.setAttribute("oeuvre", oeuvreService.findSellById(Integer.parseInt(request.getParameter("id"))));
					request.setAttribute("bookings", bookingService.findByOeuvre(Integer.parseInt(request.getParameter("id"))));

				} catch (MyException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					flashbag=e.getMessage();
					flashbagType="error";
				}

				destinationPage = "/views/Oeuvre/details.jsp";
			}
			else
			{
				try {
					request.setAttribute("adherent", adherentService.findById(Integer.parseInt(request.getParameter("id"))));
					request.setAttribute("bookings", bookingService.findByAdherent(Integer.parseInt(request.getParameter("id"))));

				} catch (MyException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					flashbag=e.getMessage();
					flashbagType="error";
				}

				destinationPage = "/views/Adherent/details.jsp";
			}
		}

		else {
			flashbag = "[" + actionName + "] n'est pas une action valide.";
			flashbagType="error";
		}
		
		request.setAttribute("flashbag", flashbag);
		request.setAttribute("flashbagType", flashbagType);
	
		// Redirection to the appropriate jsp page
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(destinationPage);
		dispatcher.forward(request, response);		
	}

}
