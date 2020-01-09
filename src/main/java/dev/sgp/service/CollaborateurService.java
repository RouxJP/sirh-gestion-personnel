package dev.sgp.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import dev.sgp.entite.Collaborateur;

public class CollaborateurService {
	List<Collaborateur> listeCollaborateurs = new ArrayList<>();

	public List<Collaborateur> listerCollaborateurs() {
		//listeCollaborateurs = (List) Arrays.asList("Robert", "Jean", "Hugues") ;
		return listeCollaborateurs;
	}

	public void sauvegarderCollaborateur(Collaborateur collab) {
		listeCollaborateurs.add(collab);
	}
}
