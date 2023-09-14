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
	text-align:;
	color: black;
	margin: 0px;
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


	<!-- Main -->
	<div class="carousel-item" style="margin-top: 200px;">
		<svg class="bd-placeholder-img" width="100%" height="100%"
			xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
			preserveAspectRatio="xMidYMid slice" focusable="false">
		<rect width="100%" height="100%" fill="#777" /></svg>
		<div class="container">
			<div class="carousel-caption">
				<h1>Otro titular de ejemplo.</h1>
				<p>Algo de contenido placeholder representativo para la segunda
					diapositiva del carrusel.</p>
				<p>
					<a class="btn btn-lg btn-primary" href="#">Más información</a>
				</p>
			</div>
		</div>
	</div>
	<div class="carousel-item bg-red">
		<svg class="bd-placeholder-img" width="100%" height="100%"
			xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
			preserveAspectRatio="xMidYMid slice" focusable="false">
		<rect width="100%" height="100%" fill="#777" /></svg>
		<div class="container">
			<div class="carousel-caption text-end">
				<h1>Uno más por si acaso.</h1>
				<p>Algo de contenido placeholder representativo para la tercera
					diapositiva de este carrusel.</p>
				<p>
					<a class="btn btn-lg btn-primary" href="#">Explorar galería</a>
				</p>
			</div>
		</div>
	</div>
	</div>
	<button class="carousel-control-prev" type="button"
		data-bs-target="#myCarousel" data-bs-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Anterior</span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#myCarousel" data-bs-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Siguiente</span>
	</button>
	</div>


	<div class="container marketing mt-3">

		<div class="row">
			<div class="col-lg-4 border border-light border-2 rounded">
				<svg class="bd-placeholder-img rounded-circle" width="140"
					height="140" xmlns="http://www.w3.org/2000/svg" role="img"
					aria-label="Placeholder: 140x140"
					preserveAspectRatio="xMidYMid slice" focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
						fill="#777" />
				<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
				<h2>Encabezado</h2>
				<p>Algo de contenidoplaceholder representativo para las tres
					columnas de texto debajo del carrusel. Esta es la primera columna.</p>
				<p>
					<a class="btn btn-secondary" href="#">Ver detalles &raquo;</a>
				</p>
			</div>
			<div class="col-lg-4 border border-light border-2 rounded">
				<svg class="bd-placeholder-img rounded-circle" width="140"
					height="140" xmlns="http://www.w3.org/2000/svg" role="img"
					aria-label="Placeholder: 140x140"
					preserveAspectRatio="xMidYMid slice" focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
						fill="#777" />
				<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
				<h2>Encabezado</h2>
				<p>Otro fragmento emocionante de contenidoplaceholder
					representativo. Esta vez, pasamos a la segunda columna.</p>
				<p>
					<a class="btn btn-secondary" href="#">Ver detalles &raquo;</a>
				</p>
			</div>
			<div class="col-lg-4 border border-light border-2 rounded">
				<svg class="bd-placeholder-img rounded-circle" width="140"
					height="140" xmlns="http://www.w3.org/2000/svg" role="img"
					aria-label="Placeholder: 140x140"
					preserveAspectRatio="xMidYMid slice" focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
						fill="#777" />
				<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
				<h2>Encabezado</h2>
				<p>Y, por último, esta, la tercera columna de
					contenidoplaceholder representativo.</p>
				<p>
					<a class="btn btn-secondary" href="#">Ver detalles &raquo;</a>
				</p>
			</div>
		</div>

		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-7 border border-light border-2 rounded">
				<h2 class="featurette-heading">
					Encabezado del primer reportaje. <span class="text-muted">Te
						dejará boquiabierto.</span>
				</h2>
				<p class="lead">Excelente contenido de marcador de posición para
					el primer artículo aquí. Imagina algo de prosa emocionante aquí.</p>
			</div>
			<div class="col-md-5">
				<svg
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto border border-light border-2 rounded"
					width="500" height="500" xmlns="http://www.w3.org/2000/svg"
					role="img" aria-label="Placeholder: 500x500"
					preserveAspectRatio="xMidYMid slice" focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
						fill="#eee" />
				<text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
			</div>
		</div>
		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-7 order-md-2 border border-light border-2 rounded">
				<h2 class="featurette-heading">
					Oh, sí, es tan bueno. <span class="text-muted">Míralo tú
						mismo.</span>
				</h2>
				<p class="lead">¿Otro reportaje? Por supuesto. Más contenido de
					marcador de posición aquí para darle una idea de cómo funcionaría
					este diseño con algún contenido del mundo real en su lugar.</p>
			</div>
			<div class="col-md-5 order-md-1">
				<svg
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto border border-light border-2 rounded"
					width="500" height="500" xmlns="http://www.w3.org/2000/svg"
					role="img" aria-label="Placeholder: 500x500"
					preserveAspectRatio="xMidYMid slice" focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
						fill="#eee" />
				<text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
			</div>
		</div>
		<hr class="featurette-divider">
		<div class="row featurette " style="margin-botton: 10%">
			<div class="col-md-7 border border-light border-2 rounded">
				<h2 class="featurette-heading">
					Y por último, este. <span class="text-muted">Jaque mate.</span>
				</h2>
				<p class="lead">Y sí, este es el último bloque de contenido de
					marcador de posición representativo. Una vez más, no está destinado
					a ser leído realmente, simplemente aquí para darle una mejor vista
					de cómo se vería esto con algún contenido real. Tu contenido.</p>
			</div>
			<div class="col-md-5 ">
				<svg
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto border border-light border-2 rounded"
					width="500" height="500" xmlns="http://www.w3.org/2000/svg"
					role="img" aria-label="Placeholder: 500x500"
					preserveAspectRatio="xMidYMid slice" focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
						fill="#eee" />
				<text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
			</div>
		</div>
		<hr class="featurette-divider">

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