package dev.sgp.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import dev.sgp.entite.Collaborateur;

public class CollaborateurService {
	List<Collaborateur> listeCollaborateurs = new ArrayList<>();

	public List<Collaborateur> listerCollaborateurs() {
		//listeCollaborateurs = (List) Arrays.asList("Robert", "Jean", "Hugues") ;
		LocalDate date = LocalDate.now();
		
		listeCollaborateurs.add( new Collaborateur( "Roux1", "JP1", date, "ing dev 1", "62 rue Vatel", "1630230007071"));
		listeCollaborateurs.add( new Collaborateur( "Roux2", "JP2", date, "ing dev 2", "62 rue Vatel", "1630230007071" ));
		listeCollaborateurs.add( new Collaborateur( "Roux3", "JP3", date, "ing dev 3", "62 rue Vatel", "1630230007071" ));
/*		listeCollaborateurs.add( new Collaborateur( "Roux4", "JP4", date, "ing dev 4", "62 rue Vatel", "1630230007071" ));
*/
	
		return listeCollaborateurs;
	}

	public void sauvegarderCollaborateur(Collaborateur collab) {
		listeCollaborateurs.add(collab);
	}
}
