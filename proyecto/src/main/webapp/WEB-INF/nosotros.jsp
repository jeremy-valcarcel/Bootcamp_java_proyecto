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
/* Estilos personalizados */
header, footer {
	background-color: #82e462;
	display: flex;
	justify-content: space-between;
	padding: 5px 10px;
	align-items: center;
}

.header-green {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: -50px;
	font-family: 'Source Sans Pro', sans-serif;
}

header img, footer img {
	height: 80px;
}

.swiper {
	width: 100%;
	padding-top: 50px;
	padding-bottom: 50px;
}

.swiper-slide {
	background-position: center;
	background-size: cover;
	width: 300px;
	height: 300px;
	border: 2px solid #181212;
}

.swiper-slide img {
	display: block;
	width: 100%;
}

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

/* Estilos para los enlaces del menú */
.dropdown-content a {
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.content {
	padding: 0px;
	text-align:;
	color: black;
	margin: 0px;
}

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

.content p {
	margin-bottom: 20px;
}

.reciclaje {
	height: 250px;
	display: flex;
	color: white;
	justify-content: center;
	align-items: center;
	margin: 0;
	background-image: url('imgs/fondo-compost.jpg');
	background-size: cover;
	background-position: center;
	font-size: 50px;
}

.btn-custom {
	background-color: #007fffa1;
	color: white;
	border: none;
}

.btn-custom:hover {
	background-color: #0056b3;
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

.rounded-image {
	border-radius: 20px;
}

.socios-container {
	background-color: #4d897c; /* Color de fondo para el contenedor */
	padding: 20px; /* Espaciado interno para el contenedor */
	text-align: center;
	/* Centra el contenido del contenedor horizontalmente */
	color: white; /* Color de texto blanco para el párrafo */
}

.socios-row {
	display: flex; /* Crea una fila horizontal */
	justify-content: space-around;
	/* Distribuye el espacio entre los socios */
	align-items: center;
	/* Centra verticalmente las imágenes y los textos */
}

.socio {
	text-align: center; /* Centra el texto dentro de cada socio */
}

.socio:hover {
	transform: scale(1.1);
	/* Aumenta el tamaño del socio al pasar el mouse por encima */
}

.socio img {
	max-width: 170px; /* Establece el tamaño máximo para las imágenes */
}
</style>
</head>
<body
	style="background-color: #white; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">

	<header class="header-green">
		<div>
			<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
				class="d-inline-block" style="height: 85px">
		</div>
		<nav class="navbar navbar-expand-lg">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/">Inicio</a></li>
				<li class="nav-item"><a class="nav-link" href="/publicaciones">Publicaciones</a></li>
				<li class="nav-item"><a class="nav-link" href="/empresa">Empresas</a></li>
			</ul>
			<div class="dropdown nav-item">
				<span>Nosotros</span>
				<div class="dropdown-content">
					<a href="/nosotros">¿Quienes somos?</a> <a href="/reciclaje">Reciclaje
						orgánico</a> <a href="/preguntasFrecuentes">Preguntas frecuentes</a>
				</div>
			</div>
		</nav>
		<div>
			<a href="/sesion" class="btn btn">Iniciar Sesión</a> <a
				href="/registro" class="btn btn">Unirse</a>
		</div>
	</header>

	<div class="content">
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
		style="background-color: #152C49; display: flex; justify-content: space-between; align-items: center; padding: 10px; margin: 0;">
		<div style="display: flex; align-items: center;">
			<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
				class="d-inline-block" style="height: 100px;">
			<p class="text-white ml-2 mb-0">EcoRescate</p>
		</div>

		<div class="my-auto">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link active text-white"
					aria-current="page" href="#">Inicio</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="#">Publicaciones</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="#">Empresas</a></li>
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