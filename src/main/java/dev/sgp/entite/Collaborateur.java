package dev.sgp.entite;


import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.ResourceBundle;

public class Collaborateur {
	private String 		matricule;
	private String 		nom;
	private String 		prenom;
	private LocalDate 	dateNaissance;
	private String 		adresse;
	private String 		telephone;
	private String 		numSecuSocial;
	private String 		emailPro;
	private String 		photo;
	private ZonedDateTime dateHeureCreation;
	private boolean 	actif;
	private String 		intitulePoste;
	private Departement departement;
	private String 		banque;
	private String 		bic;
	private String 		iban;

	public Collaborateur(	String nom, String prenom, LocalDate dateNaissance,
							String fonction,
							String adresse, String numSecuSocial)  {
		this.nom 					= nom;
		this.prenom 				= prenom;
		this.dateNaissance 			= dateNaissance;
		this.adresse 				= adresse;
		this.numSecuSocial 			= numSecuSocial;

		this.dateHeureCreation 		= ZonedDateTime.now();
		this.matricule 				= nom.toUpperCase().charAt(0) + prenom.toUpperCase().charAt(0) + numSecuSocial;
		this.actif 					= true;
		this.intitulePoste			= fonction ;

		ResourceBundle prop 			= ResourceBundle.getBundle("Sgp");
		String suffixe_email 			= prop.getString("suffixe_email");
		String photo_rep 				= prop.getString("photo_rep");

		this.photo 					= photo_rep + "PhotoJp.jpg";
		this.emailPro 				= nom + "." + prenom + "@" + suffixe_email ;
	}

	/**
	 * Getter
	 * 
	 * @return the matricule
	 */
	public String getMatricule() {
		return matricule;
	}

	/**
	 * Setter
	 * 
	 * @param matricule the matricule to set
	 */
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}

	/**
	 * Getter
	 * 
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}

	/**
	 * Setter
	 * 
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}

	/**
	 * Getter
	 * 
	 * @return the prenom
	 */
	public String getPrenom() {
		return prenom;
	}

	/**
	 * Setter
	 * 
	 * @param prenom the prenom to set
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	/**
	 * Getter
	 * 
	 * @return the dateNaissance
	 */
	public LocalDate getDateNaissance() {
		return dateNaissance;
	}

	/**
	 * Setter
	 * 
	 * @param dateNaissance the dateNaissance to set
	 */
	public void setDateNaissance(LocalDate dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	/**
	 * Getter
	 * 
	 * @return the adresse
	 */
	public String getAdresse() {
		return adresse;
	}

	/**
	 * Setter
	 * 
	 * @param adresse the adresse to set
	 */
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	/**
	 * Getter
	 * 
	 * @return the numSecuSocial
	 */
	public String getNumSecuSocial() {
		return numSecuSocial;
	}

	/**
	 * Setter
	 * 
	 * @param numSecuSocial the numSecuSocial to set
	 */
	public void setNumSecuSocial(String numSecuSocial) {
		this.numSecuSocial = numSecuSocial;
	}

	/**
	 * Getter
	 * 
	 * @return the emailPro
	 */
	public String getEmailPro() {
		return emailPro;
	}

	/**
	 * Setter
	 * 
	 * @param emailPro the emailPro to set
	 */
	public void setEmailPro(String emailPro) {
		this.emailPro = emailPro;
	}

	/**
	 * Getter
	 * 
	 * @return the photo
	 */
	public String getPhoto() {
		return photo;
	}

	/**
	 * Setter
	 * 
	 * @param photo the photo to set
	 */
	public void setPhoto(String photo) {
		this.photo = photo;
	}

	/**
	 * Getter
	 * 
	 * @return the dateHeureCreation
	 */
	public ZonedDateTime getDateHeureCreation() {
		return dateHeureCreation;
	}

	/**
	 * Setter
	 * 
	 * @param dateHeureCreation the dateHeureCreation to set
	 */
	public void setDateHeureCreation(ZonedDateTime dateHeureCreation) {
		this.dateHeureCreation = dateHeureCreation;
	}

	/**
	 * Getter
	 * 
	 * @return the actif
	 */
	public boolean isActif() {
		return actif;
	}

	/**
	 * Setter
	 * 
	 * @param actif the actif to set
	 */
	public void setActif(boolean actif) {
		this.actif = actif;
	}

	/**
	 * Getter
	 * 
	 * @return the intitulePoste
	 */
	public String getIntitulePoste() {
		return intitulePoste;
	}

	/**
	 * Setter
	 * 
	 * @param intitulePoste the intitulePoste to set
	 */
	public void setIntitulePoste(String intitulePoste) {
		this.intitulePoste = intitulePoste;
	}

	/**
	 * Getter
	 * 
	 * @return the departement
	 */
	public Departement getDepartement() {
		return departement;
	}

	/**
	 * Setter
	 * 
	 * @param departement the departement to set
	 */
	public void setDepartement(Departement departement) {
		this.departement = departement;
	}

	/**
	 * Getter
	 * 
	 * @return the banque
	 */
	public String getBanque() {
		return banque;
	}

	/**
	 * Setter
	 * 
	 * @param banque the banque to set
	 */
	public void setBanque(String banque) {
		this.banque = banque;
	}

	/**
	 * Getter
	 * 
	 * @return the bic
	 */
	public String getBic() {
		return bic;
	}

	/**
	 * Setter
	 * 
	 * @param bic the bic to set
	 */
	public void setBic(String bic) {
		this.bic = bic;
	}

	/**
	 * Getter
	 * 
	 * @return the iban
	 */
	public String getIban() {
		return iban;
	}

	/**
	 * Setter
	 * 
	 * @param iban the iban to set
	 */
	public void setIban(String iban) {
		this.iban = iban;
	}

	/** Getter
	 * @return the telephone
	 */
	public String getTelephone() {
		return telephone;
	}

	/** Setter
	 * @param telephone the telephone to set
	 */
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

}
