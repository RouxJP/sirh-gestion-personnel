package dev.sgp.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


import dev.sgp.entite.Departement;

public class DepartementService {
	List<Departement> listeDepartements = new ArrayList<>();

	public List<Departement> listerDepartements() {
		listeDepartements = (List) Arrays.asList("Comptabilité", "Ressources Humaines", "Informatique", "Administratif") ;

		return listeDepartements;
	}


}
