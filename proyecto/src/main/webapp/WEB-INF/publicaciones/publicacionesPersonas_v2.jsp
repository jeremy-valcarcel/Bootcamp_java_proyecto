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
<title>Publicaciones personas</title>
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

.register {
	position: absolute;
	right: -35%;
}
/* Estilo del modal */
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 65%;
	width: auto;
	max-width: 80%;
	height: auto;
	max-height: 80%;
	background-color: transparent; /* Cambiamos el fondo a transparente */
	overflow-x: hidden;
	padding-top: 45px;
	transition: 0.5s;
}

/* Contenido del modal */
.modal-content {
	background-color: #fff;
	margin: 10% auto;
	padding: 20px;
	text-align: center;
	border-radius: 5px;
	max-height: 100%;
	overflow-y: auto;
}
/* Estilo para cerrar el modal */
.cerrar {
	color: #aaa;
	position: absolute;
	top: 10px;
	right: 10px;
	font-size: 28px;
	font-weight: bold;
	cursor: pointer;
}

/* Estilo para la imagen de perfil (ajustar el tamaño según lo deseado) */
.perfil-imagen {
	height: 200px;
	border-radius: 500%;
}

#comentarios-container {
	display: none;
}

/*ESTILOS PARA FOOTER*/
.site-footer {
	background-color: #104724;
	padding: 45px 0 20px;
	font-size: 15px;
	line-height: 24px;
	color: #737373;
}

.site-footer hr {
	border-top-color: #bbb;
	opacity: 0.5
}

.site-footer h6 {
	color: #fff;
	font-size: 16px;
	text-transform: uppercase;
	margin-top: 5px;
	letter-spacing: 2px
}

.footer-links {
	padding-left: 0;
	list-style: none
}
/*ESTILOS PARA FOOTER*/
.link-container {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.link-style {
	color: #6c757d; /* Color del texto del enlace */
	text-decoration: none; /* Quita el subrayado del enlace */
	transition: color 0.3s; /* Animación de cambio de color */
	font-weight: bold;
	/* Puedes cambiar el peso de la fuente según tus preferencias */
}

.link-container:hover {
	background-color: #e74c3c;
	/* Cambio de color de fondo al pasar el mouse */
}

.link-container:hover .link-style {
	color: #fff; /* Cambio de color del texto al pasar el mouse */
}

.rounded-box {
	border-radius: 70px;
	padding: 20px;
	background-color: #ffffff;
	text-align: center;
	width: 70%; /* Ajusta el ancho del bloque según tus necesidades */
	height: 150px; /* Ajusta la altura del bloque según tus necesidades */
	margin: 0 auto; /* Centra horizontalmente el bloque */
	display: flex;
	flex-direction: column;
	justify-content: center;
}
.borde-curvo {
    border-radius: 100px; /* Puedes ajustar el valor para controlar el radio de los bordes */
}
</style>
</head>
<body
	style="display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">

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

							<li class="nav-item active"><a class="nav-link"
								href="/Inicio">Inicio</a></li>

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
						<a href="#" id="mostrarPerfil"> <img alt="Usuario"
							src="img/usuario.png" class="d-inline-block"
							style="height: 60px;">
						</a>

						<div id="perfilModal" class="modal" style="width: 370px;">
							<div class="modal-content">
								<c:if test="${usuario.id == usuario.id && empresa.id == null }">
									<p class="text-black my-2">
										<c:out value="${usuario.email}"></c:out>
									</p>
									<span class="cerrar" id="cerrarPerfil">&times;</span>
									<img alt="Usuario" src="img/usuario.png"
										style="height: 150px; width: 150px; margin-left: 85px;"
										class="perfil-imagen">
									<div>
										<h2>
											¡Hola,
											<c:out value="${usuario.nombre} ${usuario.apellido}!"></c:out>
										</h2>
									</div>
								</c:if>
								<c:if test="${empresa.id == empresa.id && usuario.id == null}">
									<p class="text-black my-2">
										<c:out value="${empresa.email}"></c:out>
									</p>
									<span class="cerrar" id="cerrarPerfil">&times;</span>
									<img alt="Usuario" src="img/usuario.png"
										style="height: 150px; width: 150px; margin-left: 90px;"
										class="perfil-imagen">
									<div>
										<h2>
											¡Hola,
											<c:out value="${empresa.nombre}!"></c:out>
										</h2>
									</div>
								</c:if>

								<div style="margin-left: -230px" class="mb-2 mt-3">
									<img src="imgs/profile.png" alt="Logo 1"
										style="height: 20px; width: 20px; margin-right: 10px;">
									<a href="/perfil" class="text-decoration-none link-style">Ir
										a perfil</a>
								</div>
								<div style="margin-left: -200px">
									<img src="imgs/cerrar.png" alt="Logo 3"
										style="height: 20px; width: 20px; margin-right: 10px;">
									<a href="/logout" class="text-decoration-none link-style">Cerrar
										Sesión</a>
								</div>
							</div>
						</div>

					</div>

				</div>
			</nav>
		</header>
	</div>

	<main class="container" style="margin-top: 100px;">
		<div class="row p-2" style="margin-bottom: 10%">
			<div class="col" style="height: 80px">
				<img alt="publicidad-6-Kolibri" src="/img/Publicidad-6-Kolibri.jpg" style="width: 103%; height: 230%; margin-left: -16px">
			</div>
		</div>
		<div class="row">
			<div class="col m-2">
				<img alt="publicidad-5-Aborgama" src="/img/Publicidad-5-Aborgama.jpg" style="width: 128%; height: 100%; margin-left: -12px">
			</div>

			<div class="col-8 m-2">
				<section style="height: 100vh">
					<article class="border border-dark p-4 overflow-auto"
						style="height: 100vh;">
						<div class="row">
<!-- 							<div class="rounded-box"> -->
<!-- 								<h2 class="text-center mb-2 my-2"> -->
<!-- 									¡Haz una nueva publicacion!<a href="/crear-publicacion" -->
<!-- 										class="btn btn-success d-block col-6 mt-3 mb-2 borde-curvo" -->
<!-- 										style="width: 30%; margin-left:170px;">Publicar</a> -->
<!-- 								</h2> -->

<!-- 							</div> -->
							<div class="row mt-4 mb-4">
								<c:forEach items="${publicacionEmpresa}" var="publicacion">
									<div class="card mb-4">
										<div class="card-header">
											<img class="img-thumbnail  rounded-circle"
												src="img/perfil.jpeg" alt="foto perfil"
												style="width: 50px; height: 50px;">
											<div class="d-inline-block ml-3"
												style="vertical-align: middle;">
												<h5 class="card-title m-0 my-2">
													<c:out
														value="${publicacion.emisor.nombre} ${publicacion.emisor.apellido}"></c:out>
												</h5>
												<p class="card-subtitle text-muted">
													<fmt:formatDate value="${publicacion.createdAt}"
														pattern="MMMM dd, yyyy HH:mm" var="fechaFormateada" />
													<c:out value="${fechaFormateada}"></c:out>
												</p>
											</div>
										</div>
										<div class="card-body">
											<h6 class="card-subtitle mb-2 text-muted">
												<c:out value="${publicacion.categoria.categoria}"></c:out>
											</h6>
											<p class="card-text">
												<c:out value="${publicacion.descripcion}"></c:out>
											</p>
											<p class="card-text text-secondary">
												Cantidad:
												<c:out value="${publicacion.tamano}"></c:out>
												kg
											</p>
										</div>
										<div class="row mt-4 mb-4">
											<!-- ... (código anterior) ... -->
											<div class="card-footer">
												<a class="btn btn-white" style="width: 100%;"
													href="publicaciones-${publicacion.id}"> Agregar un
													comentario </a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</article>
				</section>
			</div>

			<div class="col m-2">
				<img alt="publicidad-2-Cempre" src="/img/Publicidad-2-Cempre.jpg" style="width: 128%; height: 100%; margin-left: -27px">
			</div>

		</div>

	</main>


	<footer class="site-footer mt-5">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-3">
					<h6>About</h6>
					<p class="text-justify">
						<i>ECORESCATE</i> gestiona el reciclaje de los residuos orgánicos
						generados por empresas y/o personas individuales. Queremos
						impulsar la conciencia medioambiental hasta convertir el reciclaje
						en un hábito diario para la población, contribuyendo a hacer de
						este mundo un lugar mejor donde vivir.
					</p>
				</div>

				<div class="col-xs-6 col-md-3">
					<h6>Publicaciones</h6>
					<ul class="footer-links">
						<li><a class="nav-link text-white"
							href="/publicacionesPersonas">Publicaciones de personas</a></li>
						<li><a class="nav-link text-white"
							href="/publicacionesEmpresas">Publicaciones de empresas</a></li>
					</ul>
				</div>

				<div class="col-xs-6 col-md-3">
					<h6>Nosotros</h6>
					<ul class="footer-links">
						<li><a class="nav-link text-white" href="/nosotros">¿Quienes
								sómos?</a></li>
						<li><a class="nav-link text-white" href="/reciclaje">Reciclaje
								Orgánico</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-md-3">
					<h6>Preguntas frecuentes</h6>
					<ul class="footer-links">
						<li><a class="nav-link text-white"
							href="/preguntasFrecuentea">¿Puedo aportar otro residuo que
								no sea orgánico?</a></li>
						<li><a class="nav-link text-white"
							href="/preguntasFrecuentea">¿Cuáles son los errores comunes
								que debemos evitar al reciclar orgánicos?</a></li>
						<li><a class="nav-link text-white"
							href="/preguntasFrecuentea">¿Tengo alguna manera de
								publicitar mis productos creados a base de los residuos?</a></li>
					</ul>
				</div>
			</div>
			<hr>
		</div>
	</footer>

	<script>
		// Obtener elementos del DOM
		var mostrarPerfil = document.getElementById("mostrarPerfil");
		var perfilModal = document.getElementById("perfilModal");
		var cerrarPerfil = document.getElementById("cerrarPerfil");

		// Mostrar el modal al hacer clic en la imagen
		mostrarPerfil.addEventListener("click", function() {
			perfilModal.style.display = "block";
		});

		// Cerrar el modal al hacer clic en la "X"
		cerrarPerfil.addEventListener("click", function() {
			perfilModal.style.display = "none";
		});

		// Cerrar el modal al hacer clic fuera de él
		window.addEventListener("click", function(event) {
			if (event.target === perfilModal) {
				perfilModal.style.display = "none";
			}
		});
	</script>
</body>
</html>