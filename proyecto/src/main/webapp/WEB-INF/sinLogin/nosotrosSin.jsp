<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formateo fechas (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Formulario form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- para errores de renderizado en rutas PUT -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EcoRescate- Nosotros</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<style>

/* ESTILO HEADER/FOOTER */
header, footer {
	background-color: #82e462;
	display: flex;
	justify-content: space-between;
	padding: 5px 10px;
	align-items: center;
}
/* ESTILO HEADER/FOOTER */

/* ESTILO DESPLIEGE HEADER */
.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 200px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown-content a {
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}
/* ESTILO DESPLIEGE HEADER */
.content h1 {
	height: 300px;
	display: flex;
	color: white;
	justify-content: center;
	align-items: center;
	margin: 0;
	background-size: cover;
	background-position: center;
	font-size: 50px;
}

.content h2 {
	font-size: 24px;
	margin-top: 20px;
}

.mission, .vision {
	display: inline-block;
	width: 48%;
	vertical-align: top;
	margin: 10px;
}

.carousel-item {
	background-size: cover;
	background-position: center;
	height: 300px;
}

/* ESTILO PARA SOCIOS */
.socios-container {
	background-color: #1047247a;
	padding: 20px;
	text-align: center;
	color: white;
}

.socios-row {
	display: flex;
	justify-content: space-around;
	align-items: center;
}

.socio {
	text-align: center;
}

.socio:hover {
	transform: scale(1.1);
	/* Aumenta el tamaño del socio al pasar el mouse por encima */
}

.socio img {
	max-width: 170px
}
/* ESTILO PARA SOCIOS */

/* ESTILOS BODY */
body {
	background-color: #white;
	display: grid;
	min-height: 100vh;
	grid-template-row: auto 1fr auto;
}
/* ESTILOS BODY */

/* ESTILO HEADER */
.navbar {
	padding: 5px;
}

.topbar {
	background-color: rgb(16, 71, 36);
	padding: 0;
}

.mx-background-top-linear {
	background: -webkit-linear-gradient(45deg, #54d400 48%, #1b1e21 48%);
	background: linear-gradient(45deg, #44b15e 48%, rgb(16 71 36) 48%);
}

.logo-image {
	max-height: 65px;
	width: auto;
}
/* ESTILO HEADER */

/* ESTILO ECORESCATE */
.topbar p {
	margin: 0;
	display: inline-block;
	font-size: 13px;
	color: #f1f6ff;
}
/* ESTILO ECORESCATE */

/* BOTÓN DE REGISTRO */
.register .action-button {
	position: absolute;
	right: -400px;
	bottom: 20px; 
	background : transparent;
	border: 1px solid rgb(255, 255, 255);
	border-radius: 40px;
	color: #fff;
	padding: .3rem .8rem;
	background: transparent;
}
/* BOTÓN DE REGISTRO */
</style>
</head>
<body
	style="background-color: #white; display: grid; grid-template-row: auto 1fr auto;">

	<div class="fixed-top">
		<header class="topbar">
			<nav
				class="navbar navbar-expand-lg navbar-dark mx-background-top-linear"
				style="background-color: #104724d1;">
				<div class="container mt-1">
					<div class="d-flex align-items-center">
						<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
							class="d-inline-block logo-image">
						<p style="font-size: 20px;">
							<strong>ECORESCATE</strong>
						</p>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarResponsive" aria-controls="navbarResponsive"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarResponsive"
						style="margin-left: 500px">

						<ul class="navbar-nav ml-auto">

							<li class="nav-item active"><a class="nav-link" href="/">Inicio</a></li>

							<li class="dropdown nav-item"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Publicaciones</a>
								<div class="dropdown-content" style="color: black;"
									aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="/Login">Publicaciones de
										personas</a> <a class="dropdown-item" href="/Login">Publicaciones
										de empresas</a>

								</div></li>

							<li class="nav-item"><a class="nav-link" href="/Login">Empresas</a>
							</li>


							<li class="dropdown nav-item"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Nosotros </a>
								<div class="dropdown-content" style="color: black;"
									aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="/nosotrosSinSesion">¿Quienes
										somos?</a> <a class="dropdown-item" href="/reciclajeSinSesion">Reciclaje
										orgánico</a> <a class="dropdown-item"
										href="preguntasFrecuentesSinSesion">Preguntas frecuentes</a>
								</div></li>
						</ul>
						<div class="register">
							<span class="navbar-text"></span> <a
								class="btn btn-light action-button" role="button" href="/Login">Iniciar
								Sesión</a>
						</div>
					</div>
				</div>
			</nav>
		</header>
	</div>

	<div class="content" style="margin-top: 75px;">
		<div id="carouselExample" class="carousel slide"
			data-bs-ride="carousel">
			<ol class="carousel-indicators">
				<li data-bs-target="#carouselExample" data-bs-slide-to="0"
					class="active"></li>
				<li data-bs-target="#carouselExample" data-bs-slide-to="1"></li>
				<li data-bs-target="#carouselExample" data-bs-slide-to="2"></li>
				<li data-bs-target="#carouselExample" data-bs-slide-to="3"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active"
					style="background-image: url('imgs/contenedores.jpg');">
					<h1>NOSOTROS</h1>
				</div>
				<div class="carousel-item"
					style="background-image: url('imgs/fondo-compost.jpg');">
					<h1>NUESTRO PROPÓSITO</h1>
				</div>
				<div class="carousel-item"
					style="background-image: url('imgs/diapo1.jpg');">
					<h1>NUESTRA MISIÓN</h1>
				</div>
				<div class="carousel-item"
					style="background-image: url('imgs/diapo3.jpg');">
					<h1>NUESTRO VISIÓN</h1>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExample"
				role="button" data-bs-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Anterior</span>
			</a> <a class="carousel-control-next" href="#carouselExample"
				role="button" data-bs-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Siguiente</span>
			</a>
		</div>



		<div class="col">
			<h2 class="text-center">
				<span style="color: #2faa4c"><strong>¿Qué es
						ECORESCATE?</strong></span>
			</h2>
			<p class="my-4 text-center">
				Somos una <strong>empresa que gestiona el reciclaje de los
					residuos orgánicos</strong> generados por empresas y/o personas
				individuales, <strong>trabajando como intermediarios.</strong> <br>
				Trabajamos junto a ciudadanos y empresas, para que el reciclaje
				orgánico se vuelva una realidad.<br> Queremos impulsar la <strong>conciencia
					medioambiental</strong> hasta convertir el reciclaje en un hábito diario
				para la población, contribuyendo a hacer de este<strong>
					mundo un lugar mejor donde vivir.</strong>
			</p>
		</div>


		<div class="row ms-5">
			<div class="col-md-6">
				<h2>
					<span style="color: #2faa4c"><strong>Nuestro
							propósito</strong></span>
				</h2>
				<p>Contribuir al cuidado del medioambiente promoviendo la
					circularidad de todos los productos orgánicos mediante su
					reciclaje.</p>
			</div>
			<div class="col-md-6">
				<img src="imgs/organico.jpg" alt="organico" class="img-fluid"
					style="height: 200px">
			</div>
		</div>
	</div>

	<div class="ms-5">

		<h2>
			<span style="color: #2faa4c"><strong>Misión</strong></span>
		</h2>
		<p>Gestionar, desarrollar e intermediar en el sistema de reciclaje
			de residuos orgánicos de forma eficiente, transparente e innovadora
			trabajando para los ciudadanos y empresas en colaboración con los
			mismos.</p>
	</div>

	<div class="m-5">

		<h2>
			<span style="color: #2faa4c"><strong>Visión</strong></span>
		</h2>
		<p>Consolidar una economía circular eficiente, cercana e
			involucrativa que priorice el cuidado del medioambiente gracias a una
			sociedad activa, unas empresas responsables y ciudadanos
			comprometidos con el reciclaje.</p>
	</div>

	<div class="socios-container">
		<h3 class="my-4 mb-5">Socios</h3>
		<div class="socios-row">
			<div class="socio">
				<img src="imgs/socio1.jpg" alt="Socio 1">
				<p style="background-color: white; color: #626262;">Jeremy
					Valcarcel</p>
			</div>
			<div class="socio">
				<img src="imgs/socio2.jpg" alt="Socio 2">
				<p style="background-color: white; color: #626262;">Maria
					Alderetes</p>
			</div>
			<div class="socio">
				<img src="imgs/socio3.jpg" alt="Socio 3">
				<p style="background-color: white; color: #626262;">Thiago
					Acosta</p>
			</div>
			<div class="socio">
				<img src="imgs/socio4.jpg" alt="Socio 4">
				<p style="background-color: white; color: #626262;">Romina
					Carbajal</p>
			</div>
			<div class="socio">
				<img src="imgs/socio5.jpg" alt="Socio 5">
				<p style="background-color: white; color: #626262;">Alvaro
					Cardozo</p>
			</div>
		</div>
	</div>


	<footer
		style="background-color: #104724; display: flex; justify-content: space-between; align-items: center; padding: 10px;">
		<div style="display: flex; align-items: center;">
			<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
				class="d-inline-block" style="height: 100px;">
			<p class="text-white ml-2 mb-0">EcoRescate</p>
		</div>

		<div class="my-auto">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link active text-white"
					aria-current="page" href="/">Inicio</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="#">Publicaciones</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="/Login">Empresas</a></li>
				<li class="nav-item"><a class="nav-link disabled text-white"
					aria-disabled="true">Nosotros</a></li>
			</ul>
		</div>
	</footer>


	<script>
		$(document).ready(function() {
			// Inicializa el carrusel
			$('#carouselExample').carousel();
		});
	</script>
</body>
</html>