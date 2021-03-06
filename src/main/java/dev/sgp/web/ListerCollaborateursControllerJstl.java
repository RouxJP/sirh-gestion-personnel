package dev.sgp.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;
import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.util.Constantes;


public class ListerCollaborateursControllerJstl extends HttpServlet {
	// recuperation du service
	private CollaborateurService 	collabService 			= Constantes.COLLAB_SERVICE;
	private DepartementService 		departementService 		= Constantes.COLLAB_DEPARTMENT;

	/***
	@Override
	protected void doGet( HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.getWriter().write("Hello Lister Collaborateurs Controller");
		
		// recupere la valeur d'un parametre dont le nom est avecPhoto
		String avecPhotoParam = req.getParameter("avecPhoto");
		
		// recupere la valeur d'un parametre dont le nom est departement
		String departementParam = req.getParameter("departement");
		resp.setContentType("text/html");
		
		// code HTML ecrit dans le corps de la reponse
		resp.getWriter().write("<h1>Liste des collaborateurs</h1>"
		+ "<ul>"
		+ "<li>avecPhoto="+ avecPhotoParam + "</li>"
		+ "<li>departement="+ departementParam + "</li>"
		+ "</ul>");		

		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp")
		.forward(req, resp);

		// 2eme
		req.setAttribute("listeNoms", Arrays.asList("Robert", "Jean", "Hugues"));
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp")
		.forward(req, resp);	
**/		
	
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			List<Collaborateur> collaborateurs 	= collabService.listerCollaborateurs();
			List<Departement> 	departements 	= departementService.listerDepartements();
			
			req.setAttribute("listeCollaborateurs", 		collaborateurs);
			req.setAttribute("listeDepartements", 			departements);
			
			req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateursJstl.jsp")
			.forward(req, resp);	
			
		}

//	}
}