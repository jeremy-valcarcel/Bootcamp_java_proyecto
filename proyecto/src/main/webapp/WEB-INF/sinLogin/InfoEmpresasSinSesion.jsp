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
<title>ECORESCATE-Empresas</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<style>

/* DESPLIEGE HEADER*/
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

header, footer {
	background-color: #82e462;
	display: flex;
	justify-content: space-between;
	padding: 5px 10px;
	align-items: center;
}

/* IMAGEN REDONDA */
.rounded-image {
	border-radius: 5%;
	/* Establece el radio para hacer la imagen redonda */
	width: 400px; /* Establece el ancho de la imagen */
	height: 400px; /* Establece la altura de la imagen */
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
	style="background-color: #ffffff; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">
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
					<div class="register">
						<span class="navbar-text"></span> <a
							class="btn btn-light action-button" role="button" href="/Login">Iniciar
							Sesión</a>
					</div>
				</div>
			</nav>
		</header>
	</div>


	<div class="content" style="margin-top: 150px;">
		<h2></h2>
		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
			<!-- Indicadores -->
			<ol class="carousel-indicators">
				<li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
				<li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
				<!-- Agrega más indicadores según la cantidad de imágenes -->
			</ol>

			<!-- Imágenes del carrusel -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="row">
						<div class="col-md-6 text-center">
							<img src="imgs/restauranteResiduo2.jpg" alt="Imagen 1"
								style="height: 400px" class="rounded-image">
							<h3 class="m-2">Titulo 1</h3>
							<p>Parrafo 1</p>
							<a href="#masInformacion" class="btn"
								style="background-color: #44b15e; color: white;">Ver más</a>
						</div>
						<div class="col-md-6 text-center">
							<img src="imgs/empresasResiduos.jpg" alt="Imagen 2"
								style="height: 400px" class="rounded-image">
							<h3 class="m-2">Titulo 2</h3>
							<p>Parrafo 2</p>
							<a href="#masInformacion2" class="btn"
								style="background-color: #44b15e; color: white;">Ver más</a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="row">
						<div class="col-md-6 text-center">
							<img src="imgs/restauranteResiduo.jpg" alt="Imagen 3"
								style="height: 400px" class="rounded-image">
							<h3 class="m-2">Título 3</h3>
							<p>Descripción o párrafo corto sobre la imagen 3.</p>
							<a href="#masInformacion3" class="btn"
								style="background-color: #44b15e; color: white;">Ver más</a>
						</div>
						<div class="col-md-6 text-center">
							<img src="imgs/empresasResiduos2.jpg" alt="Imagen 4"
								style="height: 400px" class="rounded-image">
							<h3 class="m-2">Título 4</h3>
							<p>Descripción o párrafo corto sobre la imagen 4.</p>
							<a href="#masInformacion4" class="btn"
								style="background-color: #44b15e; color: white;">Ver más</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Controles de navegación -->
		<a class="carousel-control-prev" href="#myCarousel" role="button"
			data-bs-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="visually-hidden">Anterior</span>
		</a> <a class="carousel-control-next" href="#myCarousel" role="button"
			data-bs-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="visually-hidden">Siguiente</span>
		</a>
	</div>

	<!-- Sección de información "ver más" -->
	<div id="masInformacion" class=" row m-0 featurette mt-5">
		<div class="col border border-light border-2 rounded">
			<h2 class="featurette-heading">
				Encabezado del primer reportaje. <span class="text-muted">Te
					dejará boquiabierto.</span>
			</h2>
			<p class="lead">Aquí puedes encontrar más información sobre las
				imágenes.</p>
		</div>
		<div class="col">
			<img alt="scsc" src="imgs/contenedores.jpg">
		</div>
	</div>

	<hr class="featurette-divider">
	<div id="masInformacion2" class="row m-0 featurette">
		<div class="col order-md-2 border border-light border-2 rounded">
			<h2 class="featurette-heading">
				Oh, sí, es tan bueno. <span class="text-muted">Míralo tú
					mismo.</span>
			</h2>
			<p class="lead">¿Otro reportaje? Por supuesto. Más contenido de
				marcador de posición aquí para darle una idea de cómo funcionaría
				este diseño con algún contenido del mundo real en su lugar.</p>
		</div>
		<div class="col order-md-1">
			<img alt="c" src="imgs/cocacola.png">
		</div>
	</div>

	<hr class="featurette-divider">
	<div id="masInformacion3" class="row m-0 featurette "
		style="margin-botton: 10%">
		<div class="col border border-light border-2 rounded">
			<h2 class="featurette-heading">
				Y por último, este. <span class="text-muted">Jaque mate.</span>
			</h2>
			<p class="lead">Y sí, este es el último bloque de contenido de
				marcador de posición representativo. Una vez más, no está destinado
				a ser leído realmente, simplemente aquí para darle una mejor vista
				de cómo se vería esto con algún contenido real. Tu contenido.</p>
		</div>
		<div class="col ">
			<img alt="cc" src="imgs/amazon.png">
		</div>
	</div>

	<hr class="featurette-divider">
	<div id="masInformacion4" class="row m-0 featurette">
		<div class="col order-md-2 border border-light border-2 rounded">
			<h2 class="featurette-heading">
				Oh, sí, es tan bueno. <span class="text-muted">Míralo tú
					mismo.</span>
			</h2>
			<p class="lead">¿Otro reportaje? Por supuesto. Más contenido de
				marcador de posición aquí para darle una idea de cómo funcionaría
				este diseño con algún contenido del mundo real en su lugar.</p>
		</div>
		<div class="col order-md-1">
			<img alt="c" src="imgs/cocacola.png">
		</div>
	</div>


	<!-- Footer -->
	<footer
		style="background-color: #104724; display: flex; justify-content: space-between; align-items: center; padding: 10px; margin: 0;">
		<div style="display: flex; align-items: center;">
			<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
				class="d-inline-block" style="height: 120px;">
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