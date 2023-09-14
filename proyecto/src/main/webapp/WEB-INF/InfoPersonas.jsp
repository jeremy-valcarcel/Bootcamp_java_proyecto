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

/* Estilos para los enlaces del men� */
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
</style>
</head>
<body
	style="background-color: #e7f4fc; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">


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
					<a href="/nosotros">�Quienes somos?</a> <a href="/reciclaje">Reciclaje
						org�nico</a> <a href="/preguntasFrecuentes">Preguntas frecuentes</a>
				</div>
			</div>
		</nav>
		<div>
			<a href="/sesion" class="btn btn text-white">Iniciar Sesi�n</a> <a
				href="/registro" class="btn btn text-white">Unirse</a>
		</div>
	</header>



	<!-- Main -->
	<div class="carousel-item ">
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
					<a class="btn btn-lg btn-primary" href="#">M�s informaci�n</a>
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
				<h1>Uno m�s por si acaso.</h1>
				<p>Algo de contenido placeholder representativo para la tercera
					diapositiva de este carrusel.</p>
				<p>
					<a class="btn btn-lg btn-primary" href="#">Explorar galer�a</a>
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
				<p>Y, por �ltimo, esta, la tercera columna de
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
						dejar� boquiabierto.</span>
				</h2>
				<p class="lead">Excelente contenido de marcador de posici�n para
					el primer art�culo aqu�. Imagina algo de prosa emocionante aqu�.</p>
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
					Oh, s�, es tan bueno. <span class="text-muted">M�ralo t�
						mismo.</span>
				</h2>
				<p class="lead">�Otro reportaje? Por supuesto. M�s contenido de
					marcador de posici�n aqu� para darle una idea de c�mo funcionar�a
					este dise�o con alg�n contenido del mundo real en su lugar.</p>
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
					Y por �ltimo, este. <span class="text-muted">Jaque mate.</span>
				</h2>
				<p class="lead">Y s�, este es el �ltimo bloque de contenido de
					marcador de posici�n representativo. Una vez m�s, no est� destinado
					a ser le�do realmente, simplemente aqu� para darle una mejor vista
					de c�mo se ver�a esto con alg�n contenido real. Tu contenido.</p>
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