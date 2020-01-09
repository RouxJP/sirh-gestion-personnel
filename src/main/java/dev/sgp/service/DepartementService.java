package dev.sgp.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


import dev.sgp.entite.Departement;

public class DepartementService {
	List<Departement> listeDepartements = new ArrayList<>();

	public List<Departement> listerDepartements() {
		listeDepartements.add( new Departement( 1, "Comptabilité"));
		listeDepartements.add( new Departement( 2, "Ressources Humaines"));
		listeDepartements.add( new Departement( 3, "Informatique"));
		listeDepartements.add( new Departement( 4, "Administratif"));

		return listeDepartements;
	}


}
