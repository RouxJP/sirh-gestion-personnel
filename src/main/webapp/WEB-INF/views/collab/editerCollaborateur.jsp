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
	<!-- Barre de navigation -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<nav class="navbar navbar-light bg-light">
					<a class="navbar-brand" href="#"> <img
						src="sgp/logo-collaborateur.jpg" width="30" height="30" alt="">
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
			Collaborateur collaborateur = (Collaborateur) request.getAttribute("collaborateur");
		%>
		<form method="POST" action="#">

			<div class="container">

				<div class="accordion" id="accordionExample">
				
					<!-- Partie identité 1 -->
					<div class="card">
						<div class="card-header" id="headingOne">
							<h2 class="mb-0">
								<button class="btn btn-link" type="button"
									data-toggle="collapse" data-target="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne">
									Identité</button>
							</h2>
						</div>

						<div id="collapseOne" class="collapse show"
							aria-labelledby="headingOne" data-parent="#accordionExample">
							<div class="card-body">

								<div class="row">
									<div class="col-2" class="border border-dark">
										<img src="<%=collaborateur.getPhoto()%>" alt="Photo"
											class="img-thumbnail">
									</div>

									<div class="col-10">
										<div class="row">

											<div class="col-5">
												<h5>NOM Prénom - Matricule</h5>
											</div>

											<div class="col-5">
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="customCheck1"> <label
														class="custom-control-label" for="customCheck1">Désactiver</label>
												</div>
											</div>


											<div class="col-10">
												<h7>Identité</h7>
											</div>


											<div class="col-5">
												<h7>Civilité</h7>
											</div>

											<div class="col-5">
												<select class="custom-select" id="inputGroupSelect01">
													<option selected>Choose...</option>
													<option value="1">Mr</option>
													<option value="2">Mme</option>
													<option value="3">Melle</option>
												</select>
											</div>


											<div class="col-5">
												<h7>Nom</h7>
											</div>

											<div class="col-5">
												<input type="text" class="form-control"
													placeholder="<%=collaborateur.getNom()%>" aria-label="Nom"
													aria-describedby="basic-addon1">
											</div>

											<div class="col-5">
												<h7>Prénom</h7>
											</div>

											<div class="col-5">
												<input type="text" class="form-control"
													placeholder="<%=collaborateur.getPrenom()%>"
													aria-label="Prenom" aria-describedby="basic-addon1">
											</div>

											<div class="col-5">
												<h7>Date de naissance</h7>
											</div>

											<div class="col-5">
												<input type="date" class="form-control"
													placeholder="Username" aria-label="Date de naissance"
													aria-describedby="basic-addon1">
											</div>

											<div class="col-5">
												<label for="validationTextarea">Adresse</label>
											</div>

											<div class="col-5">
												<textarea class="form-control is-invalid"
													id="validationTextarea"
													placeholder="<%=collaborateur.getAdresse()%>" required></textarea>
											</div>

											<div class="col-5">
												<h7>Numéro de sécurité sociale</h7>
											</div>

											<div class="col-5">
												<input type="text" class="form-control"
													placeholder="<%=collaborateur.getNumSecuSocial()%>"
													aria-label="Num de sec soc" aria-describedby="basic-addon1">
											</div>

											<div class="col-5">
												<h7>Téléphone</h7>
											</div>

											<div class="col-5">
												<input type="tel" class="form-control"
													placeholder="<%=collaborateur.getTelephone()%>"
													aria-label="Téléphone" aria-describedby="basic-addon1">
											</div>


										</div>


									</div>

								</div>

								<div class="row" align="right">
									<div class="col-10">
										<button type="button" class="btn btn-light">Sauvegarder</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Partie identité 2-->
					<div class="card">
						<div class="card-header" id="headingTwo">
							<h2 class="mb-0">
								<button class="btn btn-link collapsed" type="button"
									data-toggle="collapse" data-target="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">
									Coordonnées bancaire</button>
							</h2>
						</div>
						
						<div id="collapseTwo" class="collapse"
							aria-labelledby="headingTwo" data-parent="#accordionExample">
							<div class="card-body">
								<div class="row">
									<div class="col-2" class="border border-dark">
										<img src="<%=collaborateur.getPhoto()%>" alt="Photo"
											class="img-thumbnail">
									</div>

									<div class="col-10">
										<div class="row">

											<div class="col-5">
												<h5>NOM Prénom - Matricule</h5>
											</div>

											<div class="col-5">
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="customCheck1"> <label
														class="custom-control-label" for="customCheck1">Désactiver</label>
												</div>
											</div>


											<div class="col-10">
												<h7>Identité</h7>
											</div>

											<div class="col-10">
												<h7>Poste</h7>
											</div>

											<div class="col-10">
												<h7>Coordonnées Bancaires</h7>
											</div>

											<div class="col-5">
												<h7>Banque</h7>
											</div>

											<div class="col-5">
												<input type="text" class="form-control"
													placeholder="<%=collaborateur.getBanque()%>"
													aria-label="Banque" aria-describedby="basic-addon1">
											</div>


											<div class="col-5">
												<h7>BIC</h7>
											</div>

											<div class="col-5">
												<input type="text" class="form-control"
													placeholder="<%=collaborateur.getBic()%>" aria-label="Bic"
													aria-describedby="basic-addon1">
											</div>


											<div class="col-5">
												<h7>IBAN</h7>
											</div>

											<div class="col-5">
												<input type="text" class="form-control"
													placeholder="<%=collaborateur.getIban()%>"
													aria-label="Iban" aria-describedby="basic-addon1">
											</div>
										</div>
									</div>

								</div>
								<div class="row" align="right">
									<div class="col-10">
										<button type="button" class="btn btn-light">Sauvegarder</button>
									</div>
								</div>

							</div>
						</div>
					</div>

					<!-- Partie identité 3 -->
					<div class="card">
						<div class="card-header" id="headingThree">
							<h2 class="mb-0">
								<button class="btn btn-link collapsed" type="button"
									data-toggle="collapse" data-target="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">
									Poste</button>
							</h2>
						</div>
						<div id="collapseThree" class="collapse"
							aria-labelledby="headingThree" data-parent="#accordionExample">
							<div class="card-body">

								<div class="row">
									<div class="col-2" class="border border-dark">
										<img src="<%=collaborateur.getPhoto()%>" alt="Photo"
											class="img-thumbnail">
									</div>

									<div class="col-10">
										<div class="row">

											<div class="col-5">
												<h5>NOM Prénom - Matricule</h5>
											</div>

											<div class="col-5">
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="customCheck1"> <label
														class="custom-control-label" for="customCheck1">Désactiver</label>
												</div>
											</div>


											<div class="col-10">
												<h7>Identité</h7>
											</div>

											<div class="col-10">
												<h7>Poste</h7>
											</div>

											<div class="col-5">
												<h7>Département</h7>
											</div>

											<div class="col-5">
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

											<div class="col-5">
												<h7>Poste</h7>
											</div>

											<div class="col-5">
												<input type="text" class="form-control"
													placeholder="<%=collaborateur.getIntitulePoste()%>"
													aria-label="Poste" aria-describedby="basic-addon1">
											</div>
										</div>
									</div>

								</div>
								<div class="row" align="right">
									<div class="col-10">
										<button type="button" class="btn btn-light">Sauvegarder</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>










			</div>

		</form>

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
