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

/* Estilos para los enlaces del men� */
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
</style>
</head>
<body
	style="background-color: #e7f4fc; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">


	<header class="header-green">

		<div>
			<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
				class="d-inline-block" style="height: 85px">
		</div>
		<nav class="navbar navbar-expand-lg">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active text-white"
					aria-current="page" href="/">Inicio</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="/publicaciones">Publicaciones</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="/empresas">Empresas</a></li>

			</ul>
			<div class="dropdown nav-item">
				<span>Nosotros</span>
				<div class="dropdown-content">
					<a href="/nosotros">�Quienes somos?</a> <a href="/reciclaje">Reciclaje
						org�nico</a> <a href="/preguntasFrecuentes">Preguntas frecuentes</a>
				</div>
			</div>
		</nav>
		<div>
			<a href="/sesion" class="btn btn text-white">Iniciar Sesi�n</a> <a
				href="/registro" class="btn btn text-white">Unirse</a>
		</div>
	</header>


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