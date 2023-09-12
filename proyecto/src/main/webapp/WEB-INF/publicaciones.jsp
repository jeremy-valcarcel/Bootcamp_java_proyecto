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
</style>
</head>
<body
	style="background-color: #e7f4fc; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">


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
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/nosotros"
					id="nosotrosDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false">Nosotros</a>
					<ul class="dropdown-menu" aria-labelledby="nosotrosDropdown">

						<li><a class="dropdown-item"
							href="/nosotros/preguntasFrecuentes">Preguntas frecuentes</a></li>
					</ul></li>
			</ul>
		</nav>
		<div>
			<a href="/sesion" class="btn btn">Iniciar Sesión</a> <a
				href="/registro" class="btn btn">Unirse</a>
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
				
				<h2 style="background-color: #12a903" class="text-center">publicaciones De Empresas</h2>

					<p class="border">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Optio numquam, saepe repellat perspiciatis rerum magnam, sapiente
						vel molestiae cum beatae error corporis eum atque eveniet!</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Facere mollitia vero odio quos error dolorem numquam, nemo
						explicabo modi similique! Eveniet porro exercitationem autem
						ratione.</p>
				</article>

				<article style="border: solid; 1px; margin: 4em 0em">
				
				<h2 style="background-color: #12a903" class="text-center">publicaciones De Personas</h2>

					<p class="border">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
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


	 <footer style="background-color: #152C49; display: flex; justify-content: space-between; align-items: center; padding: 10px; margin: 0;">
		<div style="display: flex; align-items: center;">
			<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
				class="d-inline-block" style="height: 100px;">
			<p class="text-white ml-2 mb-0">EcoRescate</p>
		</div>
		
		<div class="my-1 mx-auto ">
				<ul class="nav">
				<li class="nav-item"> 
					<a class="nav-link  text-white"aria-current="page" href="#">Ir arriba</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
				</li>
				<li class="nav-item">
					<a class="nav-link text-white" href="#">Publicaciones</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
				</li>
				<li class="nav-item ">
					<a class="nav-link text-white" href="#">Empresas</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
				</li>
				<li class="nav-item">
					<a class="nav-link disabled text-white" aria-disabled="true">Nosotros</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
				</li>
			</ul>
		</div>
	</footer>


</body>
</html>