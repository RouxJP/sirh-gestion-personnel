<%@page import="dev.sgp.entite.Departement"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-4.4.1-dist/css/bootstrap.css">
</head>
<body>

	<!-- TODO -->
	<!-- Just an image -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<nav class="navbar navbar-light bg-light">
					<a class="navbar-brand" href="#"> <img
						src="/sgp/photo/logo-collaborateur.jpg" width="30" height="30"
						alt="">
					</a>
				</nav>
				<li class="nav-item active"><a class="nav-link" href="#">Collaborateurs
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Statistiques</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Activités</a>
				</li>
			</ul>

		</div>
	</nav>

	<main>
		<%
			Collaborateur collaborateur;
			int nbrCollaborateur = 0;
		%>
		<div class="container">
			<div class="row">
				<div class="col-4">
					<h1>Les collaborateurs</h1>
				</div>
				<div class="col-4">
					<p></p>
				</div>
				<div class="col-4">
					<a href="creer.html" class="btn btn-primary btn-lg active"
						role="button" aria-pressed="true">Ajouter un nouveau
						collaborateur</a>
				</div>
			</div>

			<div class="row">
				<div class="col-4">
					<h7>Rechercher un nom ou un prénom qui commence par : </h7>
				</div>
				<div class="col-4">
					<div class="input-group mb-3">
						<input type="text" class="form-control"
							placeholder="Recipient's username"
							aria-label="Recipient's username"
							aria-describedby="button-addon2">
						<div class="input-group-append">
							<button class="btn btn-outline-secondary" type="button"
								id="button-addon2">Rechercher</button>
						</div>
					</div>
				</div>

				<div class="col-4">
					<input class="form-check-input" type="checkbox" value=""
						id="defaultCheck1"> <label class="form-check-label"
						for="defaultCheck1"> Voir les collaborateurs par défault </label>
				</div>
			</div>

			<div class="row">
				<div class="col-4">
					<h7>Filtrer par département </h7>
				</div>

				<div class="col-4">
					<select class="custom-select">
						<option selected>Tous.</option>
						<%
							List<Departement> listDepartements = (List<Departement>) request.getAttribute("listeDepartements");
							for (Departement departement : listDepartements) {
						%>
						<option value="<%=departement.getId()%>"><%=departement.getNom()%></option>
						<%
							}
						%>
						<%--
           		<option value="1">Comptabilité</option>
            	<option value="2">Ressources Humaines</option>
            	<option value="3">Informatique</option>
                       --%>
					</select>
				</div>
			</div>

			<!-- Debut modif -->
			<%
				List<Collaborateur> listCollaborateurs = (List<Collaborateur>) request.getAttribute("listeCollaborateurs");

				// Afficher 3 entetes de nom et prenom
				for (nbrCollaborateur = 0; nbrCollaborateur < listCollaborateurs.size();) {
					collaborateur = listCollaborateurs.get(nbrCollaborateur);
					System.out.println("nbrCollaborateur : " + nbrCollaborateur);
			%>
			<div class="row">
				<%
					for (int j = 0; j < 3; j++) {
							collaborateur = listCollaborateurs.get(nbrCollaborateur + j);
				%>
				<div class="col-4">
					<span class="d-block p-2 bg-primary text-white"><%=collaborateur.getNom() + " " + collaborateur.getPrenom()%></span>
				</div>
				<%
					}
				%>
			</div>



			<div class="row">
				<%
					for (int j = 0; j < 3; j++) {
						collaborateur = listCollaborateurs.get(nbrCollaborateur + j);
				%>
				<div class="col-1" class="border border-dark">
					<img src="<%=collaborateur.getPhoto()%>" alt="Photo"
						class="img-thumbnail">
				</div>

				<div class="col-1">
					<p class="text-left">Fonction</p>
					<p class="text-left">Département</p>
					<p class="text-left">Email</p>
					<p class="text-left">Téléphone</p>
				</div>

				<div class="col-2">
					<p class="text-left"><%=collaborateur.getIntitulePoste()%></p>
					<p class="text-left"><%=collaborateur.getDepartement()%></p>
					<p class="text-left"><%=collaborateur.getEmailPro()%></p>
					<p class="text-left"><%=collaborateur.getTelephone()%></p>
					<a href="editer.html" class="btn btn-primary btn-lg active"
						role="button" aria-pressed="true">Editer</a>
				</div>
				<%
					}
					nbrCollaborateur = nbrCollaborateur + 3;
				%>
			</div>

			<%
				}
			%>
				










			<!-- Fin modif -->

			<!-- Avant modif


			<div class="row">
				<div class="col-4">
					<span class="d-block p-2 bg-primary text-white">%=collaborateur.getNom() + " " + collaborateur.getPrenom()%</span>
				</div>
				<div class="col-4">
					<span class="d-block p-2 bg-primary text-white">%=collaborateur.getNom() + " " + collaborateur.getPrenom()%</span>
				</div>
				<div class="col-4">
					<span class="d-block p-2 bg-primary text-white">%=collaborateur.getNom() + " " + collaborateur.getPrenom()%</span>
				</div>
			</div>

			<div class="row">

				<div class="col-1" class="border border-dark">
					<img src="PhotoJp.jpg" alt="Photo" class="img-thumbnail">
				</div>

				<div class="col-1">
					<p class="text-left">Fonction</p>
					<p class="text-left">Département</p>
					<p class="text-left">Email</p>
					<p class="text-left">Téléphone</p>
				</div>

				<div class="col-2">
					<p class="text-left">Ing dev</p>
					<p class="text-left">Hérault</p>
					<p class="text-left">jproux343@gmail.com</p>
					<p class="text-left">06-04-43-16-23</p>
					<a href="editer.html" class="btn btn-primary btn-lg active"
						role="button" aria-pressed="true">Editer</a>
				</div>

				<div class="col-1" class="border border-dark">
					<img src="PhotoJp.jpg" alt="Photo" class="img-thumbnail">
				</div>

				<div class="col-1">
					<p class="text-left">Fonction</p>
					<p class="text-left">Département</p>
					<p class="text-left">Email</p>
					<p class="text-left">Téléphone</p>
				</div>

				<div class="col-2">
					<p class="text-left">Ing dev</p>
					<p class="text-left">Hérault</p>
					<p class="text-left">jproux343@gmail.com</p>
					<p class="text-left">06-04-43-16-23</p>
					<a href="editer.html" class="btn btn-primary btn-lg active"
						role="button" aria-pressed="true">Editer</a>
				</div>

				<div class="col-1" class="border border-dark">
					<img src="PhotoJp.jpg" alt="Photo" class="img-thumbnail">
				</div>

				<div class="col-1">
					<p class="text-left">Fonction</p>
					<p class="text-left">Département</p>
					<p class="text-left">Email</p>
					<p class="text-left">Téléphone</p>
				</div>

				<div class="col-2">
					<p class="text-left">Ing dev</p>
					<p class="text-left">Hérault</p>
					<p class="text-left">jproux343@gmail.com</p>
					<p class="text-left">06-04-43-16-23</p>
					<a href="editer.html" class="btn btn-primary btn-lg active"
						role="button" aria-pressed="true">Editer</a>
				</div>
			</div>

			<div class="row">
				<div class="col-4">
					<span class="d-block p-2 bg-primary text-white">Nom Prénom<</span>
				</div>
				<div class="col-4">
					<span class="d-block p-2 bg-primary text-white">Nom Prénom<</span>
				</div>
				<div class="col-4">
					<span class="d-block p-2 bg-primary text-white">Nom Prénom<</span>
				</div>
			</div>

			<div class="row">
				<div class="col-1" class="border border-dark">
					<img src="PhotoJp.jpg" alt="Photo" class="img-thumbnail">
				</div>

				<div class="col-1">
					<p class="text-left">Fonction</p>
					<p class="text-left">Département</p>
					<p class="text-left">Email</p>
					<p class="text-left">Téléphone</p>
				</div>

				<div class="col-2">
					<p class="text-left">Ing dev</p>
					<p class="text-left">Hérault</p>
					<p class="text-left">jproux343@gmail.com</p>
					<p class="text-left">06-04-43-16-23</p>
					<a href="editer.html" class="btn btn-primary btn-lg active"
						role="button" aria-pressed="true">Editer</a>
				</div>

				<div class="col-1" class="border border-dark">
					<img src="PhotoJp.jpg" alt="Photo" class="img-thumbnail">
				</div>

				<div class="col-1">
					<p class="text-left">Fonction</p>
					<p class="text-left">Département</p>
					<p class="text-left">Email</p>
					<p class="text-left">Téléphone</p>
				</div>

				<div class="col-2">
					<p class="text-left">Ing dev</p>
					<p class="text-left">Hérault</p>
					<p class="text-left">jproux343@gmail.com</p>
					<p class="text-left">06-04-43-16-23</p>
					<button type="button" class="btn btn-light">Editer</button>
				</div>

				<div class="col-1" class="border border-dark">
					<img src="PhotoJp.jpg" alt="Photo" class="img-thumbnail">
				</div>

				<div class="col-1">
					<p class="text-left">Fonction</p>
					<p class="text-left">Département</p>
					<p class="text-left">Email</p>
					<p class="text-left">Téléphone</p>
				</div>

				<div class="col-2">
					<p class="text-left">Ing dev</p>
					<p class="text-left">Hérault</p>
					<p class="text-left">jproux343@gmail.com</p>
					<p class="text-left">06-04-43-16-23</p>
					<a href="editer.html" class="btn btn-primary btn-lg active"
						role="button" aria-pressed="true">Editer</a>

				</div>

			</div>

-->

		</div>

	</main>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-
J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

</body>
</html>
