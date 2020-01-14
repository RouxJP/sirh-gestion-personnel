<%@page import="dev.sgp.entite.Departement"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>

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
		<div class="container">
			<div class="row">
				<div class="col-4">
					<h2>Les collaborateurs</h2>
				</div>
				<div class="col-4">
					<p></p>
				</div>
				<div class="col-4" style="margin-bottom:20px">
					<a href="creer.html" class="btn btn-primary btn-lg active" style="height:50px; width:330px; background-color: #00bfff"
						role="button" aria-pressed="true"><p style="height:20px; width:300px">Ajouter un nouveau
						collaborateur</p></a>
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
					<select class="custom-select" style="margin-bottom:50px">
						<option selected>Tous.</option>
						<%
							List<Departement> listDepartements = (List<Departement>) request.getAttribute("listeDepartements");
							for (Departement departement : listDepartements) {
						%>
						<option value="<%=departement.getId()%>"><%=departement.getNom()%></option>
						<%
							}
						%>
					</select>
				</div>
			</div>


			<!-- Afficher 3 entetes de nom et prenom ${ listCollaborateurs.size()}-->
			<c:set var="nbrBoucle" value="0" />
			<c:forEach items="${listeCollaborateurs }" step="3"
				var="collaborateur" varStatus="status">
				
				<c:set var="beginIndex" value="${status.index  }" />
				<c:set var="endIndex" 	value="${status.index + 2}" />
				
				<!--  Entete nom-prenom -->
				<div class="row">
					<c:forEach items="${listeCollaborateurs }" begin="${beginIndex }"
						end="${endIndex }" var="collaborateur" varStatus="status">

						<div class="col-4" style="background-color: #87ceeb;">
							<span text-white">
								${collaborateur.nom} ${collaborateur.prenom}</span>
						</div>
					</c:forEach>
				</div>

				<!--  Corps informations sur identité collaborateur  -->
				<div class="row">
					<c:forEach items="${listeCollaborateurs }" begin="${beginIndex }"
						end="${endIndex }" var="collaborateur" varStatus="status">


						<div class="col-1" class="border border-dark" style="background-color: #ddd;">
							<img src="${collaborateur.photo}" alt="Photo"
								class="img-thumbnail">
						</div>

						<div class="col-1" class="w-50 p-3" style="background-color: #aaa;">
							<p class="text-left">Fonction</p>
							<p class="text-left">Département</p>
							<p class="text-left">Email</p>
							<p class="text-left">Téléphone</p>
						</div>

						<div class="col-2" class="w-50 p-3" style="background-color: #ddd; ">
							<p class="text-left" >${collaborateur.intitulePoste}</p>
							<p class="text-left">${collaborateur.departement.nom}</p>
							<p class="text-left">${collaborateur.emailPro}</p>
							<p class="text-left">${collaborateur.telephone}</p>
					  		<a href="/sgp/collaborateurs/editerJstl/" type="button" class="btn btn-primary" style="background-color: #00bfff;">Editer</a>
					<!--		<button type="button"  href="/sgp/collaborateurs/editerJstl/" class="btn btn-primary" style="background-color: #00bfff;">Editer</button>
					 -->
							<p></p>
						</div>
					</c:forEach>

				</div>

			</c:forEach>
			
			


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
