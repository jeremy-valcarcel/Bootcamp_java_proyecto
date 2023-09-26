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
<title>ECORESCATE</title>
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
.swiper {
	width: 100%;
	padding-top: 50px;
	padding-bottom: 50px;
}

.swiper-slide {
	background-position: center;
	background-size: cover;
	width: 280px;
	height: 280px;
	border: 2px solid #181212;
	display: inline-block;
	width: 30%;
	margin: 10px;
}

.swiper-slide img {
	display: block;
	width: 100%;
}

.titulo-destacado {
	text-align: center;
	font-weight: bold;
	margin-bottom: 20px;
}

.header-blue {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: 80px;
	font-family: 'Source Sans Pro', sans-serif;
}

@media ( min-width :768px) {
	.header-blue {
		padding-bottom: 120px;
	}
}

.header-blue .navbar {
	background: transparent;
	padding-top: .75rem;
	padding-bottom: .75rem;
	color: #fff;
	border-radius: 0;
	box-shadow: none;
	border: none;
}

@media ( min-width :768px) {
	.header-blue .navbar {
		padding-top: 1rem;
		padding-bottom: 1rem;
	}
}

.header-blue .navbar .navbar-brand {
	font-weight: bold;
	color: inherit;
}

.header-blue .navbar .navbar-brand:hover {
	color: #f0f0f0;
}

.header-blue .navbar .navbar-collapse {
	border-top: 1px solid rgba(255, 255, 255, 0.3);
	margin-top: .5rem;
}

@media ( min-width :768px) {
	.header-blue .navbar .navbar-collapse {
		border-color: transparent;
		margin: 0;
	}
}

.header-blue .navbar .navbar-collapse span .login {
	color: #fff;
	margin-right: .5rem;
	text-decoration: none;
}

.header-blue .navbar .navbar-collapse span .login:hover {
	color: #fff;
}

.header-blue .navbar .navbar-toggler {
	border-color: rgba(255, 255, 255, 0.3);
}

.header-blue .navbar .navbar-toggler:hover, .header-blue .navbar-toggler:focus
	{
	background: none;
}

@media ( min-width : 768px) {
	.header-blue .navbar-nav .nav-link {
		padding-left: .7rem;
		padding-right: .7rem;
	}
}

@media ( min-width : 992px) {
	.header-blue .navbar-nav .nav-link {
		padding-left: 1.2rem;
		padding-right: 1.2rem;
	}
}

.header-blue .navbar.navbar-light .navbar-nav .nav-link {
	color: #fff;
}

.header-blue .navbar.navbar-light .navbar-nav .nav-link:focus,
	.header-blue .navbar.navbar-light .navbar-nav .nav-link:hover {
	color: #fcfeff !important;
	background-color: transparent;
}

.header-blue .navbar .navbar-nav>li>.dropdown-menu {
	margin-top: -5px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, .1);
	background-color: #fff;
	border-radius: 2px;
}

.header-blue .navbar .dropdown-menu .dropdown-item:focus, .header-blue .navbar .dropdown-menu .dropdown-item
	{
	line-height: 2;
	color: #37434d;
}

.header-blue .navbar .dropdown-menu .dropdown-item:focus, .header-blue .navbar .dropdown-menu .dropdown-item:hover
	{
	background: #ebeff1;
}

.header-blue .action-button, .header-blue .action-button:not(.disabled):active
	{
	border: 1px solid rgb(255, 255, 255);
	border-radius: 40px;
	color: #fff;
	box-shadow: none;
	text-shadow: none;
	padding: .3rem .8rem;
	background: transparent;
	transition: background-color 0.25s;
	outline: none;
}

.header-blue .action-button:hover {
	color: #fff;
}

.header-blue .navbar .form-inline label {
	color: #d9d9d9;
}

.header-blue .navbar .form-inline .search-field {
	display: inline-block;
	width: 80%;
	background: none;
	border: none;
	border-bottom: 1px solid transparent;
	border-radius: 0;
	color: #fff;
	box-shadow: none;
	color: inherit;
	transition: border-bottom-color 0.3s;
}

.header-blue .navbar .form-inline .search-field:focus {
	border-bottom: 1px solid #ccc;
}

.header-blue .hero {
	margin-top: 20px;
	text-align: center;
}

@media ( min-width :768px) {
	.header-blue .hero {
		margin-top: 60px;
		text-align: left;
	}
}

.header-blue .hero h1 {
	color: #fff;
	font-size: 40px;
	margin-top: 0;
	margin-bottom: 15px;
	font-weight: 300;
	line-height: 1.4;
}

@media ( min-width :992px) {
	.header-blue .hero h1 {
		margin-top: 190px;
		margin-bottom: 24px;
		line-height: 1.2;
	}
}

.header-blue .hero p {
	color: rgba(255, 255, 255, 0.8);
	font-size: 20px;
	margin-bottom: 30px;
	font-weight: 300;
}

.header-blue .phone-holder {
	text-align: right;
}

.header-blue div.iphone-mockup {
	position: relative;
	max-width: 300px;
	margin-top: 172px;
	display: inline-block;
}

.header-blue .iphone-mockup img.device {
	width: 100%;
	height: auto;
}

.header-blue .iphone-mockup .screen {
	position: absolute;
	width: 88%;
	height: 77%;
	top: 12%;
	border-radius: 2px;
	left: 6%;
	border: 1px solid #444;
	background-color: #aaa;
	overflow: hidden;
	background: url(../../assets/img/screen-content-iphone-6.jpg);
	background-size: cover;
	background-position: center;
}

.header-blue .iphone-mockup .screen:before {
	content: '';
	background-color: #fff;
	position: absolute;
	width: 70%;
	height: 140%;
	top: -12%;
	right: -60%;
	transform: rotate(-19deg);
	opacity: 0.2;
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

.register {
	position: absolute;
	right: 5%;
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
	padding-top: 60px;
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
</style>
</head>
<body
	style="background-color: #e3f3e4; display: grid; grid-template-row: auto 1fr auto;">
	<div>
		<div class="header-blue">
			<nav
				class="navbar navbar-light navbar-expand-md navigation-clean-search">
				<div class="container-fluid">
					<div>
						<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
							class="d-inline-block" style="height: 95px">
					</div>
					<a class="navbar-brand" href="/">ECORESCATE</a>
					<button data-toggle="collapse" class="navbar-toggler"
						data-target="#navcol-1">
						<span class="sr-only">Toggle navigation</span><span
							class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navcol-1">
						<ul class="nav navbar-nav">

							<li class="dropdown nav-item"><a class="nav-link" href="#">Publicaciones</a>

								<div class="dropdown-content">
									<a href="/publicacionesPersonas">Publicaciones de personas</a>
									<a href="/publicacionesEmpresas">Publicaciones de empresas</a>
								</div></li>

							<li class="nav-item" role="presentation"><a class="nav-link"
								href="/empresas">Empresas</a></li>
							<li class="dropdown nav-item"><a class="nav-link" href="#">Nosotros</a>
								<div class="dropdown-content">
									<a href="/nosotros">¿Quienes somos?</a> <a href="/reciclaje">Reciclaje
										orgánico</a> <a href="/preguntasFrecuentes">Preguntas
										frecuentes</a>
								</div></li>
						</ul>
						<form class="form-inline mr-auto" target="_self">
							<div class="form-group">
								<label for="search-field"><i
									class="fa fa-search text-white"></i></label><input
									class="form-control search-field" type="search"
									id="search-field" name="search">
							</div>
						</form>
						<div class="register">
							<a href="#" id="mostrarPerfil"> <c:if
									test="${usuario.id == usuario.id && empresa.id == null }">
									<img alt="foto perfil" src="/imagen/usuario/${usuario.id}"
										style="height: 60px; width: 60px; border-radius: 50%;">
								</c:if> <c:if test="${empresa.id == empresa.id && usuario.id == null}">
									<img alt="foto perfil" src="/imagen/empresa/${empresa.id}"
										style="height: 60px; width: 60px; border-radius: 50%;">
								</c:if>
							</a>

							<div id="perfilModal" class="modal" style="width: 370px;">
								<div class="modal-content">
									<c:if test="${usuario.id == usuario.id && empresa.id == null }">
										<p class="text-black my-2">
											<c:out value="${usuario.email}"></c:out>
										</p>
										<span class="cerrar" id="cerrarPerfil">&times;</span>
										<img alt="Usuario" src="imagen/usuario/${usuario.id }"
											style="height: 150px; width: 150px; margin-left: 85px;"
											class="perfil-imagen">
										<div>
											<h2 class="text-black">
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
										<img alt="Usuario" src="imagen/empresa/${empresa.id }"
											style="height: 150px; width: 150px; margin-left: 90px;"
											class="perfil-imagen">
										<div>
											<h2 class="text-black">
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
				</div>
			</nav>
			<div class="container hero" style="margin-top: -20px;">
				<div class="row">
					<div class="col-12 col-lg-6 col-xl-5 offset-xl-1">
						<h1>Un mundo de posibilidades en tus manos, con los residuos
							orgánicos como recurso.</h1>
						<p>
							Desbloquea el potencial de los residuos orgánicos.<br>
						</p>
						<a href="/nosotros" class="btn btn-light btn-lg action-button"
							role="button"> Conoce más <i
							class="fa fa-long-arrow-right ml-2"></i>
						</a>
					</div>
					<div
						class="col-md-5 col-lg-5 offset-lg-1 offset-xl-0 d-none d-lg-block phone-holder">
						<div class="iphone-mockup">
							<img class="device"
								src="imgs/mapache_comiendo-removebg-preview.png" style="">

						</div>
					</div>
				</div>
			</div>
			<main class="container row mx-auto">


				<section class="row text-center my-5"
					style="display: flex; justify-content: space-around; align-items: center; color: white;">
					<p></p>
					<img alt="logo empresas" src="imgs/cocacola.png"
						style="height: 50px; width: auto;"> <img alt="logo empresas"
						src="imgs/amazon.png" style="height: 120px; width: auto;"> <img
						alt="logo empresas" src="imgs/starbucks.png"
						style="height: 50px; width: auto;"> <img alt="logo empresas"
						src="imgs/nestle.png" style="height: 50px; width: auto;"> <img
						alt="logo empresas" src="imgs/mcdonalds.png"
						style="height: 50px; width: auto;">
				</section>


				<div class="swiper mySwiper">
					<h4 class="titulo-destacado">Publicaciones Destacadas</h4>
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img alt="Conaprole" src="imgs/ConaproleDestacada.png" style="height: 276px; width: 385px;">
						</div>
						<div class="swiper-slide">
							<img alt="restFood" src="imgs/restFoodDestacada.png" style="height: 276px; width: 385px;">
						</div>
						<div class="swiper-slide">
							<img alt="Andrea" src="imgs/AndreaDestacada.png"  style="height: 276px; width: 385px;">
						</div>
					</div>
					<div class="swiper-pagination"></div>
				</div>


				<section style="display: flex;" class="text-center p-4 my-4">
					<article class="p-4 border border-dark">

						<h3>Personas</h3>

						<p>
							Las personas desempeñan un papel crucial en la construcción de un
							mundo más sostenible. Como generadores de residuos orgánicos,
							cada uno de ustedes es esencial en este proceso. <br>
							¡Enterate cómo!
						</p>

						<a href="/personas" class="btn btn-dark">Ver más</a>

					</article>


					<article class="p-4 border border-dark">

						<h3>Empresas</h3>

						<p>
							Las empresas tienen un papel vital en nuestra plataforma de
							reciclaje orgánico. Tanto como recolectores de residuos
							orgánicos, como de generadores de residuos. Ustedes son la
							columna vertebral de esta comunidad. <br> ¡Enterate cómo!
						</p>

						<a href="/empresa" class="btn btn-dark">Ver más</a>

					</article>
				</section>

			</main>
		</div>
	</div>

	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-3">
					<h6>Acerca</h6>
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
							href="/preguntasFrecuentes">¿Puedo aportar otro residuo que
								no sea orgánico?</a></li>
						<li><a class="nav-link text-white"
							href="/preguntasFrecuentes">¿Cuáles son los errores comunes
								que debemos evitar al reciclar orgánicos?</a></li>
						<li><a class="nav-link text-white"
							href="/preguntasFrecuentes">¿Tengo alguna manera de
								publicitar mis productos creados a base de los residuos?</a></li>
					</ul>
				</div>
			</div>
			<hr>
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