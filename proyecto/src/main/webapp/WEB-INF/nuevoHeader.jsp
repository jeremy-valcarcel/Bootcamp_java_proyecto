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
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Bootstrap JS -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
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

.titulo-destacado {
	text-align: center; /* Centra el texto horizontalmente */
	font-weight: bold; /* Hace que el texto sea negrita */
	margin-bottom: 20px;
	/* Agrega espacio inferior para separar del contenido */
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
</style>
</head>
<body
	style="background-color: #e3f3e4; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">
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
							<li class="nav-item" role="presentation"><a class="nav-link"
								href="/">Inicio</a></li>
							<li class="nav-item" role="presentation"><a class="nav-link"
								href="/publicaciones">Publicaciones</a></li>
							<li class="nav-item" role="presentation"><a class="nav-link"
								href="/empresas">Empresas</a></li>
							<li class="nav-item dropdown"><a
								class="dropdown-toggle nav-link" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">Nosotros</a>
								<div class="dropdown-menu" role="menu">
									<a class="dropdown-item" role="presentation" href="/nosotros">¿Quienes
										somos?</a> <a class="dropdown-item" role="presentation"
										href="/reciclaje">Reciclaje orgánico</a> <a
										class="dropdown-item" role="presentation"
										href="/preguntasFrecuentes">Preguntas frecuentes</a>
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
						<span class="navbar-text"> <a class="login"
							href="/registro">Registrarse</a></span> <a
							class="btn btn-light action-button" role="button" href="/sesion">Iniciar
							Sesión</a>
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

						<p>Las personas desempeñan un papel crucial en la construcción
							de un mundo más sostenible. Como generadores de residuos
							orgánicos, cada uno de ustedes es esencial en este proceso. Cada
							vez que separas tus desechos orgánicos y los publicas en nuestra
							plataforma, estás dando un paso importante hacia la reducción de
							residuos y la creación de compost de alta calidad. Tus acciones
							no solo ayudan a disminuir la cantidad de desechos en vertederos,
							sino que también contribuyen a la generación de recursos valiosos
							para la agricultura y la jardinería. Juntos, como comunidad
							comprometida con el medio ambiente, están marcando la diferencia
							y trabajando para un futuro más limpio y sostenible..</p>

						<a href="/info/personas" class="btn btn-dark">Ver más</a>

					</article>


					<article class="p-4 border border-dark">

						<h3>Empresas</h3>

						<p>Las empresas tienen un papel vital en nuestra plataforma de
							reciclaje orgánico. Como recolectores de residuos orgánicos,
							ustedes son la columna vertebral de esta comunidad. Al recoger
							los desechos orgánicos de los generadores y darles un destino
							adecuado, están contribuyendo al ciclo sostenible de reciclaje
							orgánico. Su labor no solo beneficia al medio ambiente, sino que
							también fomenta la economía circular al crear oportunidades de
							negocio en torno al reciclaje orgánico. Cada empresa, ya sea una
							especializada en recolección o una que busca reducir su huella
							ecológica, desempeña un papel esencial en la preservación del
							planeta y en la construcción de un futuro más verde y saludable
							para todos. ¡Gracias por ser parte de esta comunidad comprometida
							con la sostenibilidad!</p>

						<a href="/info/empresas" class="btn btn-dark">Ver más</a>

					</article>
				</section>

			</main>
		</div>
	</div>

	<footer
		style="background-color: #152C49; display: flex; justify-content: space-between; align-items: center; padding: 10px; margin: 0;">
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