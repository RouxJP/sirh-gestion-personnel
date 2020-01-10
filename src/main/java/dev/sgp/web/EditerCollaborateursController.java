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

public class EditerCollaborateursController extends HttpServlet {
	private CollaborateurService 	collabService 			= Constantes.COLLAB_SERVICE;
	private DepartementService 	departementService 	= Constantes.COLLAB_DEPARTMENT;
	
	@Override
	protected void doGet( HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/**	
		// recupere la valeur d'un parametre dont le nom est departement
		String matricule = req.getParameter("matricule");
		resp.setContentType("text/html");
		
		// code HTML ecrit dans le corps de la reponse
		resp.getWriter().write("<h1>Matricule</h1> : <p>" + matricule + "</p>");	
		
		//resp.sendError( 400 , "OK");
		//resp.getWriter().write("un matricule est attendu");
		 * **
		 */
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
		Collaborateur collaborateur 		= collaborateurs.get(0);
		List<Departement> 	departements 	= departementService.listerDepartements();
		
		req.setAttribute("listeDepartements", 	departements);		
		req.setAttribute( "collaborateur", collaborateur);

		req.getRequestDispatcher("/WEB-INF/views/collab/editerCollaborateur.jsp")
		.forward(req, resp);	
		
	}

	@Override
	protected void doPost( HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	/**
		// On récupère les paramètres attendus
		String matricule 	= req.getParameter("matricule");
		String titre 		= req.getParameter("titre");
		String nom 			= req.getParameter("nom");
		String prenom 		= req.getParameter("prenom");
		
		// Controle parametres
		String 	message = "Les paramètres suivant sont incorrects : " ;
		boolean erreur = false ;
		
		if( ( matricule == null) || ( matricule.isEmpty()) ) {
			erreur = true;
			message += " matricule";
			
		}
		if( ( titre == null) || ( titre.isEmpty()) ) {
			erreur = true;
			message += " - titre";
		}
		if( ( nom == null) || ( nom.isEmpty()) ) {
			erreur = true;
			message += " - nom";
		}
		if( ( prenom == null) || ( prenom.isEmpty()) ) {
			erreur = true;
			message += " - prenom";
		}

		// Réponse
		resp.setContentType("text/html");
		if( erreur) {
			resp.sendError( 400 , message);
			
		}else {
			message = "matricule = " + matricule + "titre = "+ titre 
					                 + " nom = "+ nom + "prenom : " + prenom ;
			resp.getWriter().write("<p>" + message + "</p>");	
			
		}
		resp.getWriter().write( message);	

		// resp.getWriter().write( "post recu");
		//resp.sendError( 400 , "Erreur");
		//resp.getWriter().write( "erreur");		
		 *
		 */
	}

}