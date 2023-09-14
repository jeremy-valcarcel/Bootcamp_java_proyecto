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
<title>Perfil</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script type="text/javascript" src="/js/app.js"></script>
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
</style>
</head>
<body
	style="background-color: #e7f4fc; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">


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
									<a class="dropdown-item" href="/publicacionesPersonas">Publicaciones
										de personas</a> <a class="dropdown-item"
										href="/publicacionesEmpresas">Publicaciones de empresas</a>

								</div></li>

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

			<aside class="col-4 text-center">
				<h2>Nombre del negocio</h2>

				<p class="btn btn-success d-block col-6 mx-auto">Editar Perfil</p>
				<p class="btn btn-success d-block col-6 mx-auto">Nuevo Aviso</p>
				<p class="btn btn-success d-block col-6 mx-auto">Cancelar Aviso</p>
				<p class="btn btn-success d-block col-6 mx-auto">Privacidad</p>
				<p class="btn btn-success d-block col-6 mx-auto">Cerrar Sesion</p>
			</aside>
			<section class="col-8">
				<article style="border: solid; 1px;">

					<h2 style="background-color: #12a903" class="text-center">Nueva
						Publicacion</h2>

					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Optio numquam, saepe repellat perspiciatis rerum magnam, sapiente
						vel molestiae cum beatae error corporis eum atque eveniet!</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Facere mollitia vero odio quos error dolorem numquam, nemo
						explicabo modi similique! Eveniet porro exercitationem autem
						ratione.</p>
				</article>
			</section>
		</div>
	</main>

	<footer
		style="background-color: #152C49; display: flex; justify-content: space-between;">
		<div>
			<img alt="logo" src="img/logo-removebg-preview.png"
				class="d-inline-block" style="height: 100px;">
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


</body>
</html>