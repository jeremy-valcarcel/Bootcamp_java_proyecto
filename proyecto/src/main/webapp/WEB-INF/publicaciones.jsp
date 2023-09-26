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
<title>AQUI EL TITULO DE TU PLNATILLA</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script type="text/javascript" src="/js/app.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<style>
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

.header-green {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: -50px;
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
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
<body
	style="background-color: #e7f4fc; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">


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
							<div class="dropdown-content" style="color: black;"
								aria-labelledby="navbarDropdown">
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


	<main class="container">
		<img alt="fondo" src="img/fondo-perfil.png" style="width: 100%;">
		<img alt="foto perfil" src="img/perfil.jpeg"
			style="border-radius: 300px; height: 13em; position: relative; top: -10em">

		<div class="row">

			<aside class="col-4">
				<h2>Nombre del negocio</h2>

				<h4>Donde estamos</h4>
				<img alt="locacion" src="img/locacion.jpg" style="width: 20em">
			</aside>
			<section class="col-8">
				<article style="border: solid; 1px;">

					<h2 style="background-color: #12a903" class="text-center">publicaciones
						De Empresas</h2>

					<p class="border">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Optio numquam, saepe repellat perspiciatis rerum
						magnam, sapiente vel molestiae cum beatae error corporis eum atque
						eveniet!</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Facere mollitia vero odio quos error dolorem numquam, nemo
						explicabo modi similique! Eveniet porro exercitationem autem
						ratione.</p>
				</article>

				<article style="border: solid; 1 px; margin: 4em 0em">

					<h2 style="background-color: #12a903" class="text-center">publicaciones
						De Personas</h2>

					<p class="border">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Optio numquam, saepe repellat perspiciatis rerum
						magnam, sapiente vel molestiae cum beatae error corporis eum atque
						eveniet!</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Facere mollitia vero odio quos error dolorem numquam, nemo
						explicabo modi similique! Eveniet porro exercitationem autem
						ratione.</p>
				</article>
			</section>


		</div>
	</main>


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
				<li class="nav-item"><a class="nav-link text-white" href="#">Publicaciones</a>
				</li>
				<li class="nav-item "><a class="nav-link text-white" href="#">Empresas</a>
				</li>
				<li class="nav-item"><a class="nav-link disabled text-white"
					aria-disabled="true">Nosotros</a></li>
			</ul>
		</div>
	</footer>


</body>
</html>