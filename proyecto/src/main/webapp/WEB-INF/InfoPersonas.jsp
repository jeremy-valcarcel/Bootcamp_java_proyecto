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
<title>ECORESCATE-Personas</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<style>
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

.header-green {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: -50px;
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
}

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

.rounded-image {
	border-radius: 50%;
	/* Establece el radio para hacer la imagen redonda */
	width: 400px; /* Establece el ancho de la imagen */
	height: 400px; /* Establece la altura de la imagen */
}
</style>
</head>
<body
	style="background-color: #ffffff; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">


	<header class="header-green">

		<div>
			<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
				class="d-inline-block" style="height: 85px">
		</div>
		<nav class="navbar navbar-expand-lg">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active text-white"
					aria-current="page" href="/">Inicio</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="/publicaciones">Publicaciones</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="/empresas">Empresas</a></li>

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
			<a href="/sesion" class="btn btn text-white">Iniciar Sesión</a> <a
				href="/registro" class="btn btn text-white">Unirse</a>
		</div>
	</header>

	<div class="container mt-5">
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
							<img src="imgs/basuraOrgánica.webp" alt="Imagen 1"
								style="height: 400px" class="rounded-image">
							<h3 class="m-2">Importancia de tu residuo</h3>
							<p>¿Sabías que con la cantidad de residuos que genera una
								persona es escencial que forme parte en este proceso?</p>
							<a href="#masInformacion" class="btn btn-primary">Ver más</a>
						</div>
						<div class="col-md-6 text-center">
							<img src="imgs/personasManos.avif" alt="Imagen 2"
								style="height: 400px" class="rounded-image">
							<h3 class="m-2">Roles</h3>
							<p>¿Sabías los roles puede tener una persona?</p>
							<a href="#masInformacion2" class="btn btn-primary">Ver más</a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="row">
						<div class="col-md-6 text-center">
							<img src="imgs/basuraOrgánica2.jpg" alt="Imagen 3"
								style="height: 400px" class="rounded-image">
							<h3 class="m-2">Título 3</h3>
							<p>Descripción o párrafo corto sobre la imagen 3.</p>
							<a href="#masInformacion3" class="btn btn-primary">Ver más</a>
						</div>
						<div class="col-md-6 text-center">
							<img src="imgs/basuraOrgánica.webp" alt="Imagen 4"
								style="height: 400px" class="rounded-image">
							<h3 class="m-2">Título 4</h3>
							<p>Descripción o párrafo corto sobre la imagen 4.</p>
							<a href="#masInformacion4" class="btn btn-primary">Ver más</a>
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
	<div id="masInformacion" class=" row featurette mt-5">
		<div class="col-md-7 border border-light border-2 rounded">
			<h2 class="featurette-heading">
				Encabezado del primer reportaje. <span class="text-muted">Te
					dejará boquiabierto.</span>
			</h2>
			<p class="lead">Aquí puedes encontrar más información sobre las
				imágenes.</p>
		</div>
		<div class="col-md-5">
			<img alt="scsc" src="imgs/contenedores.jpg">
		</div>
	</div>

	<hr class="featurette-divider">
	<div id="masInformacion2" class="row featurette">
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
			<img alt="c" src="imgs/cocacola.png">
		</div>
	</div>

	<hr class="featurette-divider">
	<div id="masInformacion3" class="row featurette "
		style="margin-botton: 10%">
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
			<img alt="cc" src="imgs/amazon.png">
		</div>
	</div>

	<hr class="featurette-divider">
	<div id="masInformacion4" class="row featurette">
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