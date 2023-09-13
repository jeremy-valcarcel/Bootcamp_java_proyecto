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
<title>Reciclaje org�nico</title>
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
/* Estilos personalizados */
header, footer {
	background-color: #82e462;
	display: flex;
	justify-content: space-between;
	padding: 5px 10px;
	align-items: center;
}

header img, footer img {
	height: 80px;
}

.header-green {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: -50px;
	font-family: 'Source Sans Pro', sans-serif;
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

/* Estilos para los enlaces del men� */
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

.border-top-bottom {
	border-top: 2px solid #ccc;
	border-bottom: 2px solid #ccc;
	padding: 20px 0;
}

.rounded-image {
	border-radius: 20px;
}
</style>
</head>
<body>
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
					<a href="/nosotros">�Quienes somos?</a> <a href="/nosotros">Reciclaje
						org�nico</a> <a href="/preguntasFrecuentes">Preguntas frecuentes</a>
				</div>
			</div>
		</nav>
		<div>
			<a href="/sesion" class="btn btn">Iniciar Sesi�n</a> <a
				href="/registro" class="btn btn">Unirse</a>
		</div>
	</header>

	<div class="content">
		<h2 class="text-center" style="color: #2faa4c; font-size: 50px;">RECICLAJE DE
			RESIDUOS ORG�NICOS</h2>
		<div class="col p-3">
			<h2 class="display-2 my-3 text-center"
				style="text-align: left; color: #5a5a5a; font-size: 30px;">�Qu�
				son los residuos org�nicos?</h2>
			<p class="text-center" style="text-align: left;">Son todo desecho o residuo de origen
				vegetal y/o animal, que alguna vez estuvo vivo o fue parte de un ser
				vivo y que es susceptible de degradarse biol�gicamente.</p>
		</div>
		<div class="row border-top-bottom m-3">
			<div class="col-md-6 p-4 ">
				<h2 class="display-2 my-3"
					style="text-align: left; color: #5a5a5a; font-size: 30px;">�Por
					qu� reciclar?</h2>
				<p style="text-align: left;">Reciclar conlleva ahorrar materias
					primas, energ�a, agua y reducir las emisiones de gases de efecto
					invernadero. Reciclando evitas que los productos y materiales se
					conviertan en residuos, transform�ndolos en otros completamente
					nuevos, alargando su vida �til y ayudando a la preservaci�n de los
					recursos naturales del planeta.</p>
			</div>
			<div class="col-md-6">
				<img alt="reciclar" src="imgs/reciclaje-cartel.jpg"
					class="d-inline-block rounded-image">
			</div>
		</div>

		<div class="reciclaje"
			style="background-image: url('imgs/Fondo-verde.jpg');">
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
							<h5 class="card-title mt-5">Conservaci�n de Recursos</h5>
							<p class="card-text">Reduce la demanda de recursos naturales
								al reciclar materiales org�nicos.</p>
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
							<p class="card-text">La gesti�n adecuada de residuos
								org�nicos mejora la calidad del aire y del agua.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 3 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/organic-removebg-preview.png" alt="Imagen 3"
							class="card-img-top">
						<div class="card-body">
							<h5 class="card-title">Generaci�n de Ingresos</h5>
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
							<h5 class="card-title">Econom�a Circular</h5>
							<p class="card-text">Promueve la creaci�n de empresas que
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
							<h5 class="card-title mt-5">Reducci�n de Residuos</h5>
							<p class="card-text">El reciclaje org�nico reduce la cantidad
								de residuos en vertederos y mitiga el cambio clim�tico.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 6 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/personasTierra-removebg-preview.png" alt="Imagen 6"
							class="card-img-top mt-5">
						<div class="card-body">
							<h5 class="card-title mt-5">Educaci�n y Concienciaci�n</h5>
							<p class="card-text">El reciclaje org�nico fomenta la
								educaci�n ambiental y la concienciaci�n sobre la importancia de
								reducir, reutilizar y reciclar, lo que puede llevar a una mayor
								participaci�n en pr�cticas sostenibles en general.</p>
						</div>
					</div>
				</div>
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

</body>
</html>