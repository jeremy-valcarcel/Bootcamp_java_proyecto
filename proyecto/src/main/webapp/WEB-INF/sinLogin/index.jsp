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
/* PUBLICACIONES DESTACADAS */
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
	display: inline-block;
	/* Hace que los elementos se muestren en línea */
	width: 30%;
	/* Ajusta el ancho de cada elemento según tus necesidades */
	margin: 10px;
}

.swiper-slide img {
	display: block;
	width: 100%;
}
/* PUBLICACIONES DESTACADAS */
.titulo-destacado {
	text-align: center;
	font-weight: bold;
	margin-bottom: 20px;
}

/* BACKGROUND DEGRADADO */
.header-blue {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: 80px;
	font-family: 'Source Sans Pro', sans-serif;
}
/* BACKGROUND DEGRADADO */

/* ECORESCATE */
.header-blue .navbar .navbar-brand {
	color: #fff;
	font-weight: bold;
}
/* ECORESCATE */

/* PADDING A LA PAGINA ENTERA */
@media ( min-width :768px) {
	.header-blue .navbar {
		padding-top: 1rem;
		padding-bottom: 1rem;
	}
}
/* PADDING A LA PAGINA ENTERA */
.header-blue .navbar .navbar-collapse {
	border-top: 1px solid rgba(255, 255, 255, 0.3);
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

/* COLOR A LOS LINKS */
.header-blue .navbar.navbar-light .navbar-nav .nav-link {
	color: #fff;
}
/* COLOR A LOS LINKS */

/* ESTILO A LOS BOTONES */
.header-blue .action-button, .header-blue .action-button:not(.disabled):active
	{
	border: 1px solid rgb(255, 255, 255);
	border-radius: 40px;
	color: #fff;
	padding: .3rem .8rem;
	background: transparent;
}
/* ESTILO A LOS BOTONES */

/* ESTILOS PARA SEARCH */
/* .header-blue .navbar .form-inline .search-field { */
/* 	display: inline-block; */
/* 	width: 80%; */
/* 	background: none; */
/* 	border: none; */
/* 	border-bottom: 1px solid transparent; */
/* 	border-radius: 0; */
/* 	color: #fff; */
/* 	box-shadow: none; */
/* 	color: inherit; */
/* 	transition: border-bottom-color 0.3s; */
/* } */
/* ESTILOS PARA SEARCH */

/* ESTILOS PARA <H1> */
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
/* ESTILOS PARA <H1> */

/* ESTILOS PARA <P> */
.header-blue .hero p {
	color: rgba(255, 255, 255, 0.8);
	font-size: 20px;
	margin-bottom: 30px;
	font-weight: 300;
}
/* ESTILOS PARA <P> */

/* ESTILO IMAGEN MAPACHE COMIENDO */
.header-blue .mapache {
	text-align: right;
}

.header-blue div.mapache-comiendo {
	position: relative;
	max-width: 390px;
	margin-top: 132px;
	display: inline-block;
}

.header-blue .mapache-comiendo img.device {
	width: 100%;
	height: auto;
}
/* ESTILO IMAGEN MAPACHE COMIENDO */

/* DESPLIEGE HEADER */
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
/* DESPLIEGE HEADER */

/* BOTÓN DE REGISTRO */
.register {
	position: absolute;
	right: 20px;
}
/* BOTÓN DE REGISTRO */


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
									<a href="/Login">Publicaciones de personas</a> 
									<a href="/Login">Publicaciones de empresas</a>
								</div></li>

							<li class="nav-item" role="presentation"><a class="nav-link"
								href="/Login">Empresas</a></li>
							<li class="dropdown nav-item"><a class="nav-link" href="#" >Nosotros</a>
								<div class="dropdown-content">
									<a href="nosotrosSinSesion">¿Quienes somos?</a> <a href="reciclajeSinSesion">Reciclaje
										orgánico</a> <a href="preguntasFrecuentesSinSesion">Preguntas
										frecuentes</a>
								</div></li>
						</ul>
						<%-- 						<form class="form-inline mr-auto" target="_self"> --%>
						<!-- 							<div class="form-group"> -->
						<!-- 								<label for="search-field"><i -->
						<!-- 									class="fa fa-search text-white"></i></label><input -->
						<!-- 									class="form-control search-field" type="search" -->
						<!-- 									id="search-field" name="search"> -->
						<!-- 							</div> -->
						<%-- 						</form> --%>
						<div class="register">
							<span class="navbar-text"></span> <a class="btn btn-light action-button" role="button" href="/Login">Iniciar Sesión</a>
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
						<a href="nosotrosSinSesion" class="btn btn-light btn-lg action-button"
							role="button"> Conoce más <i
							class="fa fa-long-arrow-right ml-2"></i>
						</a>
					</div>
					<div
						class="col-md-5 col-lg-5 offset-lg-1 offset-xl-0 d-none d-lg-block mapache">
						<div class="mapache-comiendo">
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


				<section style="display: flex;" class="text-center p-4 my-4">
					<article class="p-4 border border-dark">

						<h3>Personas</h3>

						<p>
							Las personas desempeñan un papel crucial en la construcción de un
							mundo más sostenible. Como generadores de residuos orgánicos,
							cada uno de ustedes es esencial en este proceso. <br>
							!Enterate cómo!
						</p>

						<a href="/personasSinSesion" class="btn btn-dark">Ver más</a>

					</article>


					<article class="p-4 border border-dark">

						<h3>Empresas</h3>

						<p>
							Las empresas tienen un papel vital en nuestra plataforma de
							reciclaje orgánico. Tanto como recolectores de residuos
							orgánicos, como de generadores de residuos. Ustedes son la
							columna vertebral de esta comunidad. <br> !Enterate cómo!
						</p>

						<a href="/infoEmpresasSinSesion" class="btn btn-dark">Ver más</a>

					</article>
				</section>

			</main>
		</div>
	</div>

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
					aria-current="page" href="Login">Inicio</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="Login">Publicaciones</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="Login">Empresas</a></li>
				<li class="nav-item"><a class="nav-link disabled text-white" href="Login">Nosotros</a></li>
			</ul>
		</div>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

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