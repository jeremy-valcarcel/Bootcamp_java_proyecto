<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio de sesión</title>

<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

<link rel="stylesheet" type="text/css" href="style.css">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
.header-green {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: 80px;
	font-family: 'Source Sans Pro', sans-serif;
}
/* BOTÓN DE REGISTRO */
.inicio .action-button {
 	background : transparent; 
	border: 1px solid rgb(255, 255, 255);
	border-radius: 40px; 
	color: #fff;
}
/* BOTÓN DE REGISTRO */
</style>
</head>
<body>
	<section class="vh-100 header-green" style="background-color: #99f5f8;">
		<div class="inicio text-end m-3">
			<span class="navbar-text"></span> <a
				class="btn btn-light action-button" role="button" href="/">Volver a inicio</a>
		</div>
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">
					<div class="card" style="border-radius: 1rem;">
						<div class="row g-0">
							<div class="col-md-6 col-lg-5 d-none d-md-block">
								<img src="/img/imagen_sesion.jpg" alt="imagen sesion"
									class="img-fluid mt-5 ml-4"
									style="border-radius: 1rem 0 0 2rem; height: 400px" />
							</div>
							<div class="col-md-6 col-lg-7 d-flex align-items-center">
								<div class="card-body p-4 p-lg-5 text-black">

									<form:form method="POST" action="/Login" modelAttribute="login">

										<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">
											¡Bienvenido a <span class="text-success">ECO</span>RESCATE!
										</h5>

										<div class="form-outline mb-4">
											<form:errors class="text-danger form-control is-invalid"
												path="email" />
											<form:label path="email" class="form-label"
												for="form2Example17">Email:</form:label>
											<form:input type="email" path="email" id="form2Example17"
												class="form-control form-control-lg"
												placeholder="Ingresa tu email" />
										</div>

										<div class="form-outline mb-4">
											<form:errors class="text-danger form-control is-invalid"
												path="password" />
											<form:label path="password" class="form-label"
												for="form2Example27">Contraseña:</form:label>
											<form:password path="password" id="form2Example27"
												class="form-control form-control-lg"
												placeholder="ingresa tu contraseña" />
										</div>

										<div class="mb-4">
											<input class="btn btn-success w-100" type="submit"
												value="Iniciar sesión" />
										</div>

										<p class="text">
											Sino tiene una cuenta aún <a href="/Registro/Usuario">Registrese
												como usuario</a>
										</p>
										<p class="text">
											Sino tiene una cuenta aún <a href="/Registro/Empresa">Registrese
												como empresa</a>
										</p>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>