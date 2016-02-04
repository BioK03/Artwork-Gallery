package controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdherentService;
import meserreurs.MyException;
import metier.Adherent;

/**
 * Servlet implementation class AdherentController
 */
@WebServlet("/AdherentController")
public class AdherentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdherentController() {
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
		String destinationPage = "/views/General/error.jsp";
		// execute l'action
		if ("list".equals(actionName)) {
			try {
				
				AdherentService adherentService = new AdherentService();
				request.setAttribute("adherents", adherentService.findAll());

			} catch (MyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			destinationPage = "/views/Adherent/list.jsp";
		}

		else if ("add".equals(actionName)) {

			destinationPage = "/views/Adherent/add.jsp";
		} 
		
		else if ("insertOrUpdate".equals(actionName)) {
			try {
				Adherent adherent = new Adherent();
				String id = request.getParameter("id");
				if(id!=null)
				{
					adherent.setId(Integer.parseInt(id));
				}
				adherent.setLastname(request.getParameter("lastname"));
				adherent.setFirstname(request.getParameter("firstname"));
				adherent.setCity(request.getParameter("city"));
				AdherentService adherentService = new AdherentService();
				adherentService.insertOrUpdate(adherent);

			} catch (MyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			destinationPage = "/views/index.jsp";
		}
		
		else if ("edit".equals(actionName)) {
			try {
				AdherentService adherentService = new AdherentService();
				Adherent adherent = adherentService.findById(Integer.parseInt(request.getParameter("id")));
				if(adherent==null)
				{
					throw new MyException("Cet adherent n'existe pas");
				}
				request.setAttribute("adherent", adherent);

			} catch (MyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			destinationPage = "/views/Adherent/edit.jsp";
		}
		
		else if ("deleteConfirmation".equals(actionName)) {
			try {
				AdherentService adherentService = new AdherentService();
				Adherent adherent = adherentService.findById(Integer.parseInt(request.getParameter("id")));
				if(adherent==null)
				{
					throw new MyException("Cet adherent n'existe pas");
				}
				request.setAttribute("adherent", adherent);

			} catch (MyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			destinationPage = "/views/Adherent/delete.jsp";
		}
		
		else if ("delete".equals(actionName)) {
			try {
				AdherentService adherentService = new AdherentService();
				if(request.getParameter("id")==null)
				{
					throw new MyException("Cet adherent n'existe pas");
				}
				int adherentId = Integer.parseInt(request.getParameter("id"));
			
				adherentService.delete(adherentId);

			} catch (MyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			destinationPage = "/views/index.jsp";
		}

		else {
			String errorMessage = "[" + actionName + "] n'est pas une action valide.";
			request.setAttribute("errorMessage", errorMessage);
		}
		// Redirection to the appropriate jsp page
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(destinationPage);
		dispatcher.forward(request, response);

	}

}
