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
<title>Reciclaje orgánico</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script type="text/javascript" src="/js/app.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<!-- Link Swiper's CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<style>

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
	text-align: center;
	color: black;
	margin: 0;
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

.border-top-bottom {
	border-top: 2px solid #ccc;
	border-bottom: 2px solid #ccc;
	padding: 20px 0;
}

.rounded-image {
	border-radius: 20px;
}

body {
	margin: 0;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, sans-serif;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	background-color: #f7f7f7;
}

.navbar {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	-ms-flex-align: center;
	align-items: center;
	-ms-flex-pack: justify;
	justify-content: space-between;
	padding: 5px;
}

/*
headeer top
*/
.topbar {
	background-color: rgb(16, 71, 36);
	padding: 0;
}

.topbar .container .row {
	margin: -7px;
	padding: 0;
}

.topbar .container .row .col-md-12 {
	padding: 0;
}

.topbar p {
	margin: 0;
	display: inline-block;
	font-size: 13px;
	color: #f1f6ff;
}

.topbar p>i {
	margin-right: 5px;
}

.topbar p:last-child {
	text-align: right;
}

header .navbar {
	margin-bottom: 0;
}

.topbar li.topbar {
	display: inline;
	padding-right: 18px;
	line-height: 52px;
	transition: all .3s linear;
}

.topbar li.topbar:hover {
	color: #1bbde8;
}

.topbar ul.info i {
	color: #131313;
	font-style: normal;
	margin-right: 8px;
	display: inline-block;
	position: relative;
	top: 4px;
}

.topbar ul.info li {
	float: right;
	padding-left: 30px;
	color: #ffffff;
	font-size: 13px;
	line-height: 44px;
}

.topbar ul.info i span {
	color: #aaa;
	font-size: 13px;
	font-weight: 400;
	line-height: 50px;
	padding-left: 18px;
}

ul.social-network {
	border: none;
	margin: 0;
	padding: 0;
}

ul.social-network li {
	border: none;
	margin: 0;
}

ul.social-network li i {
	margin: 0;
}

ul.social-network li {
	display: inline;
	margin: 0 5px;
	border: 0px solid #2D2D2D;
	padding: 5px 0 0;
	width: 32px;
	display: inline-block;
	text-align: center;
	height: 32px;
	vertical-align: baseline;
	color: #000;
}

ul.social-network {
	list-style: none;
	margin: 5px 0 10px -25px;
	float: right;
}

.waves-effect {
	position: relative;
	cursor: pointer;
	display: inline-block;
	overflow: hidden;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-tap-highlight-color: transparent;
	vertical-align: middle;
	z-index: 1;
	will-change: opacity, transform;
	transition: .3s ease-out;
	color: #fff;
}

a {
	color: #0a0a0a;
	text-decoration: none;
}

li {
	list-style-type: none;
}

.bg-image-full {
	background-position: center center;
	background-repeat: no-repeat;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
	-o-background-size: cover;
}

.bg-dark {
	background-color: #222 !important;
}

.mx-background-top-linear {
	background: -webkit-linear-gradient(45deg, #54d400 48%, #1b1e21 48%);
	/* 	background: -webkit-linear-gradient(left, #208946 48%, #208946 48%); */
	background: linear-gradient(45deg, #44b15e 48%, rgb(16 71 36) 48%);
}

.logo-image {
	max-height: 65px; /* Establece una altura máxima para la imagen */
	width: auto; /* Permite que el ancho se ajuste automáticamente */
}
</style>
</head>
<body>
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

							<li class="nav-item"><a class="nav-link"
								href="/publicaciones">Publicaciones</a></li>

							<li class="nav-item"><a class="nav-link" href="/empresas">Empresas</a>
							</li>


							<li class="dropdown nav-item"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Nosotros </a>
								<div class="dropdown-content" style="color: black;" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="/nosotros">¿Quienes somos?</a> <a
										class="dropdown-item" href="/reciclaje">Reciclaje orgánico</a>
									<a class="dropdown-item" href="/preguntasFrecuentes">Preguntas
										frecuentes</a>
								</div></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	</div>

	<div class="content" style="margin-top: 150px">
		<h2 class="text-center mt-5" style="color: #2faa4c; font-size: 50px;">RECICLAJE
			DE RESIDUOS ORGÁNICOS</h2>
		<div class="col p-3">
			<h2 class="display-2 my-3 text-center"
				style="text-align: left; color: #5a5a5a; font-size: 30px;">¿Qué
				son los residuos orgánicos?</h2>
			<p class="text-center" style="text-align: left;">Son todo desecho
				o residuo de origen vegetal y/o animal, que alguna vez estuvo vivo o
				fue parte de un ser vivo y que es susceptible de degradarse
				biológicamente.</p>
		</div>
		<div class="row border-top-bottom m-3">
			<div class="col-md-6 p-4 ">
				<h2 class="display-2 my-3"
					style="text-align: left; color: #5a5a5a; font-size: 30px;">¿Por
					qué reciclar?</h2>
				<p style="text-align: left;">Reciclar conlleva ahorrar materias
					primas, energía, agua y reducir las emisiones de gases de efecto
					invernadero. Reciclando evitas que los productos y materiales se
					conviertan en residuos, transformándolos en otros completamente
					nuevos, alargando su vida útil y ayudando a la preservación de los
					recursos naturales del planeta.</p>
			</div>
			<div class="col-md-6">
				<img alt="reciclar" src="imgs/reciclaje-cartel.jpg"
					class="d-inline-block rounded-image">
			</div>
		</div>

		<div class="reciclaje" style="background-color: #1047247a;">
			<h3 class="text-white display-5" style="font-weight: bold;">Nuestro
				proceso de reciclaje</h3>
		</div>

		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-8 text-center">
					<p class="m-5">Este es el proceso que siguen nuestros desechos
						desde que se publican hasta su reciclaje.</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-8 text-center">
					<img alt="logo"
						src="imgs/proceso_de_reciclaje-removebg-preview.png"
						class="img-fluid" style="max-width: 100%;">
				</div>
			</div>
		</div>


		<!-- BENEFICIOS DE RECICLAJE -->

		<div class="container mt-5">
			<h2 class="text-center mb-4">Beneficios del Reciclaje</h2>
			<div class="row">
				<!-- BENEFICIO 1 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/planta-removebg-preview.png" alt="Imagen 1"
							class="card-img-top mt-5">
						<div class="card-body">
							<h5 class="card-title mt-5">Conservación de Recursos</h5>
							<p class="card-text">Reduce la demanda de recursos naturales
								al reciclar materiales orgánicos.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 2 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/pulmones-removebg-preview.png" alt="Imagen 2"
							class="card-img-top mt-5">
						<div class="card-body">
							<h5 class="card-title mt-5">Mejora del Medio Ambiente</h5>
							<p class="card-text">La gestión adecuada de residuos
								orgánicos mejora la calidad del aire y del agua.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 3 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/organic-removebg-preview.png" alt="Imagen 3"
							class="card-img-top">
						<div class="card-body">
							<h5 class="card-title">Generación de Ingresos</h5>
							<p class="card-text">La venta de productos reciclados puede
								generar ingresos adicionales.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 4 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/economiaCircular2-removebg-preview.png"
							alt="Imagen 4" class="card-img-top">
						<div class="card-body">
							<h5 class="card-title">Economía Circular</h5>
							<p class="card-text">Promueve la creación de empresas que
								utilizan materiales reciclados de manera efectiva.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 5 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/contenedores-removebg-preview.png" alt="Imagen 5"
							class="card-img-top mt-5">
						<div class="card-body">
							<h5 class="card-title mt-5">Reducción de Residuos</h5>
							<p class="card-text">El reciclaje orgánico reduce la cantidad
								de residuos en vertederos y mitiga el cambio climático.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 6 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/personasTierra-removebg-preview.png" alt="Imagen 6"
							class="card-img-top mt-5">
						<div class="card-body">
							<h5 class="card-title mt-5">Educación y Concienciación</h5>
							<p class="card-text">El reciclaje orgánico fomenta la
								educación ambiental y la concienciación sobre la importancia de
								reducir, reutilizar y reciclar, lo que puede llevar a una mayor
								participación en prácticas sostenibles en general.</p>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<footer
		style="background-color: #104724; display: flex; justify-content: space-between; align-items: center; padding: 10px; margin: 0;">
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

</body>
</html>