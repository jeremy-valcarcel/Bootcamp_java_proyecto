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
<title>Eco Rescate</title>
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
header, footer {
	background-color: #31aa4d;
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
	min-width: 160px;
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

</style>
</head>
<body
	style="background-color: #e3f3e4; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">


	<header>
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
					<a href="/nosotros">¿Quienes somos?</a> 
					<a href="/preguntasFrecuentes">Preguntas frecuentes</a>
				</div>
			</div>
		</nav>
		<div>
			<a href="/sesion" class="btn btn">Iniciar Sesión</a> <a
				href="/registro" class="btn btn">Unirse</a>
		</div>
	</header>

	<br>
	<br>



	<main class="container row mx-auto">


		<div class="col-2"></div>
		<h1 class="mt-5 col-8 text-center">UNA MEJOR MANERA DE CONECTAR
			CON AMANTES DEL RECICLAJE</h1>
		<div class="col-2"></div>
		<p class="text-center">La basura de unos es el tesoro de otros</p>
		<a class="btn btn-success col-1 mx-auto my-1" href="/registro">Unete</a>

		<div class="m-5"></div>

		<section class="row text-center my-3"
			style="height: 100px; display: flex; justify-content: space-around;">
			<p>Quienes trabajan con nosotros</p>
			<img alt="logo empresas" src="img/logo-e1.png"
				style="height: 100px; width: auto;"> <img alt="logo empresas"
				src="img/logo-e2.png" style="height: 100px; width: auto;"> <img
				alt="logo empresas" src="img/logo-e3.png"
				style="height: 100px; width: auto;"> <img alt="logo empresas"
				src="img/logo-e4.png" style="height: 100px; width: auto;"> <img
				alt="logo empresas" src="img/logo-e1.png"
				style="height: 100px; width: auto;">
		</section>


		<div class="swiper mySwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<h3>titulo de la publicacion</h3>
					<p>contenido de la publicación</p>
				</div>
				<div class="swiper-slide">
					<h3>titulo de la publicacion</h3>
					<p>contenido de la publicación</p>
				</div>
				<div class="swiper-slide">
					<h3>titulo de la publicacion</h3>
					<p>contenido de la publicación</p>
				</div>
			</div>
			<div class="swiper-pagination"></div>
		</div>


		<section style="display: flex;" class="text-center p-4">
			<article class="p-4 border border-primary">

				<h3>Personas o grupos</h3>

				<p>En Uruguay existen muchos esfuerzos destinados a la
					recuperación de residuos sólidos para su revalorización,
					tratamiento o disposición final adecuados. Sin embargo la
					diversidad de programas y el desconocimiento de cada uno de ellos,
					redunda en que muchas personas crean que en Uruguay no se reciclan
					ni se recuperan los residuos, o que hacerlo es muy difícil.</p>

				<a href="/info/personas" class="btn btn-primary">Personas</a>

			</article>


			<article class="p-4 border border-primary">

				<h3>Empresas</h3>

				<p>En Uruguay existen muchos esfuerzos destinados a la
					recuperación de residuos sólidos para su revalorización,
					tratamiento o disposición final adecuados. Sin embargo la
					diversidad de programas y el desconocimiento de cada uno de ellos,
					redunda en que muchas personas crean que en Uruguay no se reciclan
					ni se recuperan los residuos, o que hacerlo es muy difícil.</p>

				<a href="/info/empresas" class="btn btn-primary">Empresas</a>

			</article>
		</section>

	</main>




	<footer
		style="background-color: #152C49; display: flex; justify-content: space-between; align-items: center; padding: 10px; margin: 0;">
		<div style="display: flex; align-items: center;">
			<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
				class="d-inline-block" style="height: 100px;">
			<p class="text-white ml-2 mb-0">EcoRescate</p>
		</div>

		<div class="my-1 mx-auto ">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link  text-white"
					aria-current="page" href="#">Ir arriba</a> <a
					class="nav-link text-white" href="#">¿Cómo son sus vidas?</a> <a
					class="nav-link text-white" href="#">¿Cómo son sus vidas?</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="#">Publicaciones</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a> <a
					class="nav-link text-white" href="#">¿Cómo son sus vidas?</a></li>
				<li class="nav-item "><a class="nav-link text-white" href="#">Empresas</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a> <a
					class="nav-link text-white" href="#">¿Cómo son sus vidas?</a></li>
				<li class="nav-item"><a class="nav-link disabled text-white"
					aria-disabled="true">Nosotros</a> <a class="nav-link text-white"
					href="#">¿Cómo son sus vidas?</a> <a class="nav-link text-white"
					href="#">¿Cómo son sus vidas?</a></li>
			</ul>
		</div>
	</footer>




	<script
		src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper(".mySwiper", {
			effect : "coverflow",
			grabCursor : true,
			centeredSlides : true,
			slidesPerView : "auto",
			coverflowEffect : {
				rotate : 50,
				stretch : 0,
				depth : 100,
				modifier : 1,
				slideShadows : true,
			},
			pagination : {
				el : ".swiper-pagination",
			},
		});
	</script>





</body>
</html>