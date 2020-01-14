package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
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



public class CreerCollaborateursController extends HttpServlet {

	private CollaborateurService collabService 		= Constantes.COLLAB_SERVICE;
	private DepartementService 	departementService 	= Constantes.COLLAB_DEPARTMENT;

	@Override
	protected void doGet( HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//LocalDate date = LocalDate.now();
		
		req.getRequestDispatcher("/WEB-INF/views/collab/creerCollaborateur.jsp")
		.forward(req, resp);	
		
	}

	@Override
	protected void doPost( HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String 			message ;
		boolean 		erreurSaisie = false;
		
		// On récupère les paramètres attendus
		String nom 				= req.getParameter("nom");	
		String prenom 			= req.getParameter("prenom");
		LocalDate dateNaissance = LocalDate.now() ;
/*		LocalDate dateNaissance = LocalDate.parse( req.getParameter("date_naissance"), 
													DateTimeFormatter.ofPattern("yyyy-MM-dd"));
*/		String adresse 			= req.getParameter("adresse");
		String numSecSoc 		= req.getParameter("num_ss");
		String numTel 			= req.getParameter("num_tel");
		
		
		// Controller les champs obligatoires
		message = "Les champs : " ;
		if( ( nom == null) || ( nom.isEmpty()) ) {
			erreurSaisie = true;
			message += " nom";
			
		}
		if( ( prenom == null) || ( prenom.isEmpty()) ) {
			erreurSaisie = true;
			message += " - prenom";
		}
		if( ( adresse == null) || ( adresse.isEmpty()) ) {
			erreurSaisie = true;
			message += " - adresse";
		}
		if( ( numSecSoc == null) || ( numSecSoc.isEmpty()) ) {
			erreurSaisie = true;
			message += " - numSecSoc";
		}
		if( ( numTel == null) || ( numTel.isEmpty()) ) {
			erreurSaisie = true;
			message += " - numTel";
		}
		message += " sont obligatoires";
		
		// Sec soc sur 15 carcateres
		if( numSecSoc.length() != 15) {
			// to-do erreurSaisie = true;
			message += " ### le num de sec sociale doit faire 15 de long";
		}
	
		// Réponse
		if( erreurSaisie) {
			resp.sendError( 400 , message);
			
		}else {
			// Pas d'erreur on ajoute le collborateur
			Collaborateur collaborateur = 
					new Collaborateur( nom, prenom, dateNaissance, "", adresse, numSecSoc, numTel,
										new Departement( 3, "Informatique"));
			collabService.sauvegarderCollaborateur( collaborateur);

			//resp.setContentType("text/html");
			//message = "Création de nom " + nom + " OK";
			//resp.getWriter().write("<p>" + message + "</p>");	
			
			resp.setContentType("text/html");
			
			List<Collaborateur> collaborateurs  = collabService.listerCollaborateurs();
			List<Departement> 	departements 	= departementService.listerDepartements();
			req.setAttribute("listeNoms", 			collaborateurs);
			req.setAttribute("listeDepartements", 	departements);
			
			// Editer le collaborateur
			req.getRequestDispatcher("/WEB-INF/views/collab/creerCollaborateur.jsp")
			.forward(req, resp);	
			
			
		}

	}


}
