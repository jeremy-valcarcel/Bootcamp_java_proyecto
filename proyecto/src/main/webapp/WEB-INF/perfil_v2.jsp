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
<title>Perfil</title>

<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script type="text/javascript" src="/js/app.js"></script>

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

.header-green {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: -50px;
	font-family: 'Source Sans Pro', sans-serif;
}

header img, footer img {
	height: 80px;
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
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/">Inicio</a></li>
				<li class="nav-item"><a class="nav-link" href="/publicaciones">Publicaciones</a></li>
				<li class="nav-item"><a class="nav-link" href="/empresas">Empresas</a></li>
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

	<main class="container">
		<div class="row mt-4">
			<div class="col-sm-3">
				<img alt="foto perfil" src="img/perfil.jpeg"
					style="border-radius: 300px; height: 13em; position: relative;">
			</div>
			<div class="col mt-5 ml-2">
				<h2 class="text-secondary">Usuario Usuario</h2>
				<p class="text-secondary">Empresa/recolector</p>
				<p class="text-secondary">Argentina/Uruguay</p>

			</div>

		</div>

		<div class="row mb-4">
			<div class="col-sm-3 mt-4">
				<aside class="col">
					<p class="btn btn-success d-block col-6" style="width: 210px">Editar
						Perfil</p>
					<p class="btn btn-success d-block col-6" style="width: 210px">Nuevo
						Aviso</p>
					<p class="btn btn-success d-block col-6" style="width: 210px">Cancelar
						Aviso</p>
					<p class="btn btn-success d-block col-6" style="width: 210px">Cerrar
						Sesion</p>
				</aside>
			</div>
			<div class="col mt-4">
				<section style="height: 400px">
					<h3 class="text-center text-secondary">Tus Publicaciones:</h3>
					<article
						class="border border-dark p-4 overflow-auto position-absolute"
						style="height: 320px; width: 880px">
						<div class="row">
							<h4 class="text-secondary col-4">Title</h4>
							<p class=" col mx-2 text-end">00/00/00 00:00</p>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged. It was popularised in the 1960s with the release of
								Letraset sheets containing Lorem Ipsum passages, and more
								recently with desktop publishing software like Aldus PageMaker
								including versions of Lorem Ipsum.</p>
						</div>
						<hr>
						<div class="row">
							<h4 class="text-secondary col-4">Title</h4>
							<p class=" col mx-2 text-end">00/00/00 00:00</p>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged. It was popularised in the 1960s with the release of
								Letraset sheets containing Lorem Ipsum passages, and more
								recently with desktop publishing software like Aldus PageMaker
								including versions of Lorem Ipsum.</p>
						</div>
						<hr>
						<div class="row">
							<h4 class="text-secondary col-4">Title</h4>
							<p class=" col mx-2 text-end">00/00/00 00:00</p>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged. It was popularised in the 1960s with the release of
								Letraset sheets containing Lorem Ipsum passages, and more
								recently with desktop publishing software like Aldus PageMaker
								including versions of Lorem Ipsum.</p>
						</div>
					</article>
				</section>
			</div>
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
				<li class="nav-item"><a class="nav-link text-white" href="#">Publicaciones</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="#">Empresas</a></li>
				<li class="nav-item"><a class="nav-link disabled text-white"
					aria-disabled="true">Nosotros</a></li>
			</ul>
		</div>
	</footer>
</body>
</html>