<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-4.4.1-dist/css/bootstrap.css">
<title>Créer collaborateur</title>
</head>
</head>
<body>
	<main>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1>Nouveau Collaborateur</h1>
				</div>

			</div>

			<form method="POST"action"#"">

				<div class="row">
					<div class="col-6">
						<h7>Nom</h7>
					</div>
					<div class="col-6">
						<input type="text" class="form-control" placeholder="Username"
							aria-label="Nom" aria-describedby="basic-addon1">
					</div>

					<div class="col-6">
						<h7>Prénom</h7>
					</div>

					<div class="col-6">
						<input type="text" class="form-control" placeholder="Username"
							aria-label="Prenom" aria-describedby="basic-addon1">
					</div>

				</div>

				<div class="row">
					<div class="col-6">
						<h7>Date de naissance</h7>
					</div>

					<div class="col-6">
						<input type="date" class="form-control" placeholder="Username"
							aria-label="Date de naissance" aria-describedby="basic-addon1">
					</div>
				</div>



				<div class="row">
					<div class="col-6">
						<label for="validationTextarea">Adresse</label>
					</div>
					<div class="col-6">
						<textarea class="form-control is-invalid" id="validationTextarea"
							placeholder="Required example textarea" required></textarea>
					</div>
				</div>

				<div class="row">
					<div class="col-6">
						<h7>Numéro de sécurité sociale</h7>
					</div>

					<div class="col-6">
						<input type="text" class="form-control" placeholder="Username"
							aria-label="Num de sec soc" aria-describedby="basic-addon1">
					</div>
				</div>

				<a href="creer_errors.html">Afficher erreurs formulaires</a>

				<div class="row" align="right">
					<div class="col-12">
						<!-- <button type="button" class="btn btn-light">Créer</button> -->
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#exampleModal">Launch demo modal</button>

					</div>
				</div>

			</form>

		</div>

	</main>

</body>
</html>