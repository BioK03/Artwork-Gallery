package controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Service;
import meserreurs.MonException;
import metier.Adherent;

/**
 * Servlet implementation class AdherentController
 */
@WebServlet("/AdherentController")
public class AdherentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ACTION_TYPE = "action";
	private static final String LISTER_ADHERENT = "list";
	private static final String AJOUTER_ADHERENT = "add";
	private static final String INSERER_ADHERENT = "insert";
	private static final String EDITER_ADHERENT = "edit";
	private static final String ERROR_KEY = "messageErreur";
	private static final String ERROR_PAGE = "/erreur.jsp";

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
		processusTraiteRequete(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processusTraiteRequete(request, response);
	}

	protected void processusTraiteRequete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String actionName = request.getParameter(ACTION_TYPE);
		String destinationPage = ERROR_PAGE;
		// execute l'action
		if (LISTER_ADHERENT.equals(actionName)) {
			try {

				Service unService = new Service();
				request.setAttribute("mesAdherents", unService.consulterListeAdherents());

			} catch (MonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			destinationPage = "/views/Adherent/list.jsp";
		}

		else if (AJOUTER_ADHERENT.equals(actionName)) {

			destinationPage = "/views/Adherent/add.jsp";
		} 
		
		else if (INSERER_ADHERENT.equals(actionName)) {
			try {
				Adherent unAdherent = new Adherent();
				unAdherent.setIdAdherent(Integer.parseInt(request.getParameter("id")));
				unAdherent.setNomAdherent(request.getParameter("txtnom"));
				unAdherent.setPrenomAdherent(request.getParameter("txtprenom"));
				unAdherent.setVilleAdherent(request.getParameter("txtville"));
				Service unService = new Service();
				unService.insertAdherent(unAdherent);

			} catch (MonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			destinationPage = "/views/index.jsp";
		}
		
		else if (EDITER_ADHERENT.equals(actionName)) {
			try {
				Service unService = new Service();
				Adherent unAdherent = unService.consulterAdherent(Integer.parseInt(request.getParameter("id")));
				if(unAdherent==null)
				{
					throw new MonException("Cet adherent n'existe pas");
				}
				request.setAttribute("id", unAdherent.getIdAdherent());
				request.setAttribute("txtnom", unAdherent.getNomAdherent());
				request.setAttribute("txtprenom", unAdherent.getPrenomAdherent());
				request.setAttribute("txtville", unAdherent.getVilleAdherent());

			} catch (MonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			destinationPage = "/views/Adherent/edit.jsp";
		}

		else {
			String messageErreur = "[" + actionName + "] n'est pas une action valide.";
			request.setAttribute(ERROR_KEY, messageErreur);
		}
		// Redirection vers la page jsp appropriee
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(destinationPage);
		dispatcher.forward(request, response);

	}

}
