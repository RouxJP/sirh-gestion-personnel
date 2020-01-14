package dev.sgp.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;

public class CollaborateurService {
	List<Collaborateur> listeCollaborateurs = new ArrayList<>();

	public List<Collaborateur> listerCollaborateurs() {
		//listeCollaborateurs = (List) Arrays.asList("Robert", "Jean", "Hugues") ;
		LocalDate date = LocalDate.now();
		
		listeCollaborateurs.add( new Collaborateur( "Roux1", "JP1", date, "ing dev 1", "62 rue Vatel", "1630230007071", "060403020100", new Departement( 3, "Informatique") ));
		listeCollaborateurs.add( new Collaborateur( "Roux2", "JP2", date, "ing dev 2", "62 rue Vatel", "1630230007071", "060403020100", new Departement( 3, "Informatique") ));
		listeCollaborateurs.add( new Collaborateur( "Roux3", "JP3", date, "ing dev 3", "62 rue Vatel", "1630230007071", "060403020100", new Departement( 3, "Informatique") ));
		listeCollaborateurs.add( new Collaborateur( "Roux4", "JP4", date, "ing dev 4", "62 rue Vatel", "1630230007071", "060403020100", new Departement( 3, "Informatique") ));
		listeCollaborateurs.add( new Collaborateur( "Roux5", "JP5", date, "ing dev 5", "62 rue Vatel", "1630230007071", "060403020100", new Departement( 3, "Informatique") ));
		listeCollaborateurs.add( new Collaborateur( "Roux6", "JP6", date, "ing dev 6", "62 rue Vatel", "1630230007071", "060403020100", new Departement( 3, "Informatique") ));
		listeCollaborateurs.add( new Collaborateur( "Roux7", "JP7", date, "ing dev 7", "62 rue Vatel", "1630230007071", "060403020100", new Departement( 3, "Informatique") ));
		listeCollaborateurs.add( new Collaborateur( "Roux8", "JP8", date, "ing dev 8", "62 rue Vatel", "1630230007071", "060403020100", new Departement( 3, "Informatique") ));
		listeCollaborateurs.add( new Collaborateur( "Roux9", "JP9", date, "ing dev 9", "62 rue Vatel", "1630230007071", "060403020100", new Departement( 3, "Informatique") ));
		listeCollaborateurs.add( new Collaborateur( "Roux10", "JP10", date, "ing dev 10", "62 rue Vatel", "1630230007071", "060403020100", new Departement( 3, "Informatique") ));
		listeCollaborateurs.add( new Collaborateur( "Roux11", "JP11", date, "ing dev 11", "62 rue Vatel", "1630230007071", "060403020100", new Departement( 3, "Informatique") ));

	
		return listeCollaborateurs;
	}

	public void sauvegarderCollaborateur(Collaborateur collab) {
		listeCollaborateurs.add(collab);
	}
}
