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
<title>Empresas</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script type="text/javascript" src="/js/app.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="StyleMuestra.css">
</head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="StyleMuestra.css">
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

.contenedor {
	font-family: Poppins;
	height: 30vh;
	padding: 32px;
	display: grid;
	place-items: center;
	background-color: #e3f3e4;
}

.header-green {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: -50px;
	font-family: 'Source Sans Pro', sans-serif;
}
</style>

<body
	style="background-color: #e3f3e4; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">


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
					<a href="/nosotros">¿Quienes somos?</a> <a href="/nosotros">Reciclaje
						orgánico</a> <a href="/preguntasFrecuentes">Preguntas frecuentes</a>
				</div>
			</div>
		</nav>
		<div class="register">
			<a class="btn btn-light action-button" role="button" href="/logout">Cerrar
				sesión</a> <a href="/perfil" class="d-inline-block my-auto me-2"> <img
				alt="Usuario" src="img/usuario.png" class="d-inline-block"
				style="height: 60px;">
			</a>

		</div>
	</header>

	<h1 class="text-center">Empresas que estan con nosotros</h1>

	<div class="contenedor">
		<div class="gallery">
			<article class="card">
				<figure>
					<a href="/Primera/Empresa" title="empresas"><img
						src="images/forest.jpg" alt="Winter Forest"></a>
					<figcaption>
						<h3>Primera Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Segunda/Empresa" title="empresas"><img
						src="images/lavender-field.jpg" alt="Lavender Field"></a>
					<figcaption>
						<h3>Segunda Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Tercera/Empresa" title="empresas"><img
						src="images/wooden-bridge.jpg" alt="Wooden Bridge"></a>
					<figcaption>
						<h3>Tercera Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Primera/Empresa" title="empresas"><img
						src="images/forest.jpg" alt="Winter Forest"></a>
					<figcaption>
						<h3>Primera Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Segunda/Empresa" title="empresas"><img
						src="images/lavender-field.jpg" alt="Lavender Field"></a>
					<figcaption>
						<h3>Segunda Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Tercera/Empresa" title="empresas"><img
						src="images/wooden-bridge.jpg" alt="Wooden Bridge"></a>
					<figcaption>
						<h3>Tercera Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<!-- Pictures from Freepik -->
		</div>

	</div>

	<div class="contenedor">
		<div class="gallery">
			<article class="card">
				<figure>
					<a href="/Primera/Empresa" title="empresas"><img
						src="images/forest.jpg" alt="Winter Forest"></a>
					<figcaption>
						<h3>Primera Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Segunda/Empresa" title="empresas"><img
						src="images/lavender-field.jpg" alt="Lavender Field"></a>
					<figcaption>
						<h3>Segunda Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Tercera/Empresa" title="empresas"><img
						src="images/wooden-bridge.jpg" alt="Wooden Bridge"></a>
					<figcaption>
						<h3>Tercera Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Primera/Empresa" title="empresas"><img
						src="images/forest.jpg" alt="Winter Forest"></a>
					<figcaption>
						<h3>Primera Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Segunda/Empresa" title="empresas"><img
						src="images/lavender-field.jpg" alt="Lavender Field"></a>
					<figcaption>
						<h3>Segunda Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Tercera/Empresa" title="empresas"><img
						src="images/wooden-bridge.jpg" alt="Wooden Bridge"></a>
					<figcaption>
						<h3>Tercera Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<!-- Pictures from Freepik -->
		</div>

	</div>

	<div class="contenedor">
		<div class="gallery">
			<article class="card">
				<figure>
					<a href="/Primera/Empresa" title="empresas"><img
						src="images/forest.jpg" alt="Winter Forest"></a>
					<figcaption>
						<h3>Primera Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Segunda/Empresa" title="empresas"><img
						src="images/lavender-field.jpg" alt="Lavender Field"></a>
					<figcaption>
						<h3>Segunda Empresa</h3>
					</figcaption>
				</figure>
			</article>
			<article class="card">
				<figure>
					<a href="/Tercera/Empresa" title="empresas"><img
						src="images/wooden-bridge.jpg" alt="Wooden Bridge"></a>
					<figcaption>
						<h3>Tercera Empresa</h3>
					</figcaption>
				</figure>
			</article>

			<!-- Pictures from Freepik -->
		</div>

	</div>


	<footer
		style="background-color: #104724; display: flex; justify-content: space-between; align-items: center; padding: 10px; margin: 0;">
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


</body>
</html>