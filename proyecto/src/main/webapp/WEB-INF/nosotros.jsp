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
<title>EcoRescate- Nosotros</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<style>

/* ESTILO HEADER/FOOTER */
header, footer {
	background-color: #82e462;
	display: flex;
	justify-content: space-between;
	padding: 5px 10px;
	align-items: center;
}
/* ESTILO HEADER/FOOTER */

/* ESTILO DESPLIEGE HEADER */
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
/* ESTILO DESPLIEGE HEADER */
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

/* ESTILO PARA SOCIOS */
.socios-container {
	background-color: #1047247a;
	padding: 20px;
	text-align: center;
	color: white;
}

.socios-row {
	display: flex;
	justify-content: space-around;
	align-items: center;
}

.socio {
	text-align: center;
}

.socio:hover {
	transform: scale(1.1);
	/* Aumenta el tama�o del socio al pasar el mouse por encima */
}

.socio img {
	max-width: 170px
}
/* ESTILO PARA SOCIOS */

/* ESTILOS BODY */
body {
	background-color: #white;
	display: grid;
	min-height: 100vh;
	grid-template-row: auto 1fr auto;
}
/* ESTILOS BODY */

/* ESTILO HEADER */
.navbar {
	padding: 5px;
}

.topbar {
	background-color: rgb(16, 71, 36);
	padding: 0;
}

.mx-background-top-linear {
	background: -webkit-linear-gradient(45deg, #54d400 48%, #1b1e21 48%);
	background: linear-gradient(45deg, #44b15e 48%, rgb(16 71 36) 48%);
}

.logo-image {
	max-height: 65px;
	width: auto;
}
/* ESTILO HEADER */

/* ESTILO ECORESCATE */
.topbar p {
	margin: 0;
	display: inline-block;
	font-size: 13px;
	color: #f1f6ff;
}
/* ESTILO ECORESCATE */
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

/* Estilo para la imagen de perfil (ajustar el tama�o seg�n lo deseado) */
.perfil-imagen {
	height: 200px;
	border-radius: 500%;
}

.bloque {
	position: relative;
	max-width: 100%; /* Cambiamos el ancho m�ximo al 100% */
	margin: 0 auto;
	text-align: center;
}

.rounded-image1 {
	position: relative;
	right: 270px;
	width: 40%; /* La imagen ocupa todo el ancho del contenedor */
	max-height: 100%;
	/* Opcional: limita la altura al 100% para mantener la proporci�n */
	height: auto;
	/* Opcional: ajusta autom�ticamente la altura para mantener la proporci�n */
	border-radius: 20px; /* Aplica esquinas curvas a la imagen */
}

.text-block1 {
	width: 40%; /* Ajusta el ancho del bloque de texto al 80% */
	height: 70%;
	position: absolute;
	bottom: 50px;
	right: 90px;
	left: 750px;
	/* Eliminamos la propiedad left para centrar el bloque en la esquina derecha */
	background-color: white;
	padding: 10px;
	border-radius: 20px; /* Aplica esquinas curvas al bloque de texto */
}

.rounded-image2 {
	position: relative;
	left: 270px;
	width: 40%; /* La imagen ocupa todo el ancho del contenedor */
	max-height: 100%;
	/* Opcional: limita la altura al 100% para mantener la proporci�n */
	height: auto;
	/* Opcional: ajusta autom�ticamente la altura para mantener la proporci�n */
	border-radius: 20px; /* Aplica esquinas curvas a la imagen */
}

.text-block2 {
	width: 40%; /* Ajusta el ancho del bloque de texto al 80% */
	height: 70%;
	position: absolute;
	bottom: 50px;
	left: 150px;
	/* Eliminamos la propiedad left para centrar el bloque en la esquina derecha */
	background-color: white;
	padding: 10px;
	border-radius: 20px; /* Aplica esquinas curvas al bloque de texto */
}

.rounded-image3 {
	position: relative;
	left: -270px;
	width: 45%; /* La imagen ocupa todo el ancho del contenedor */
	height: 40%;
	max-height: 100%;
	/* Opcional: limita la altura al 100% para mantener la proporci�n */
	height: auto;
	/* Opcional: ajusta autom�ticamente la altura para mantener la proporci�n */
	border-radius: 20px; /* Aplica esquinas curvas a la imagen */
}
</style>
</head>
<body
	style="background-color: #f5f6f7; display: grid; grid-template-row: auto 1fr auto;">

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
									<a class="dropdown-item" href="/nosotros">�Quienes somos?</a> <a
										class="dropdown-item" href="/reciclaje">Reciclaje org�nico</a>
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

						<div id="perfilModal" class="modal">
							<div class="modal-content">
								<c:if test="${usuario.id == usuario.id && empresa.id == null }">
									<p class="text-black my-2">
										<c:out value="${usuario.email}"></c:out>
									</p>
									<span class="cerrar" id="cerrarPerfil">&times;</span>
									<img alt="Usuario" src="img/usuario.png" style="weight: 1000px"
										class="perfil-imagen">
									<h2>
										�Hola,
										<c:out value="${usuario.nombre} ${usuario.apellido}!"></c:out>
									</h2>
								</c:if>
								<c:if test="${empresa.id == empresa.id && usuario.id == null}">
									<p class="text-black my-2">
										<c:out value="${empresa.email}"></c:out>
									</p>
									<span class="cerrar" id="cerrarPerfil">&times;</span>
									<img alt="Usuario" src="img/usuario.png" style="weight: 1000px"
										class="perfil-imagen">
									<h2>
										�Hola,
										<c:out value="${empresa.nombre}!"></c:out>
									</h2>
								</c:if>
								<a href="/perfil" class="btn btn-success d-block col-6 mb-2"
									style="width: 350px">Ir a perfil</a> <a href="/logout"
									class="btn btn-success d-block col-6 mb-2" style="width: 350px">Cerrar
									Sesi�n</a>

							</div>
						</div>

					</div>
				</div>
			</nav>
		</header>
	</div>

	<div class="content" style="margin-top: 75px;">
		<div id="carouselExample" class="carousel slide"
			data-bs-ride="carousel">
			<ol class="carousel-indicators">
				<li data-bs-target="#carouselExample" data-bs-slide-to="0"
					class="active"></li>
				<li data-bs-target="#carouselExample" data-bs-slide-to="1"></li>
				<li data-bs-target="#carouselExample" data-bs-slide-to="2"></li>
				<li data-bs-target="#carouselExample" data-bs-slide-to="3"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active"
					style="background-image: url('imgs/contenedores.jpg');">
					<h1>NOSOTROS</h1>
				</div>
				<div class="carousel-item"
					style="background-image: url('imgs/fondo-compost.jpg');">
					<h1>NUESTRO PROP�SITO</h1>
				</div>
				<div class="carousel-item"
					style="background-image: url('imgs/diapo1.jpg');">
					<h1>NUESTRA MISI�N</h1>
				</div>
				<div class="carousel-item"
					style="background-image: url('imgs/diapo3.jpg');">
					<h1>NUESTRO VISI�N</h1>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExample"
				role="button" data-bs-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Anterior</span>
			</a> <a class="carousel-control-next" href="#carouselExample"
				role="button" data-bs-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Siguiente</span>
			</a>
		</div>



		<div class="col" style="margin-bottom: 100px; margin-top: 50px;">
			<h2 class="text-center">
				<span style="color: #2faa4c"><strong>�Qu� es
						ECORESCATE?</strong></span>
			</h2>
			<p class="my-4 text-center">
				Somos una <strong>empresa que gestiona el reciclaje de los
					residuos org�nicos</strong> generados por empresas y/o personas
				individuales, <strong>trabajando como intermediarios.</strong> <br>
				Trabajamos junto a ciudadanos y empresas, para que el reciclaje
				org�nico se vuelva una realidad.<br> Queremos impulsar la <strong>conciencia
					medioambiental</strong> hasta convertir el reciclaje en un h�bito diario
				para la poblaci�n, contribuyendo a hacer de este<strong>
					mundo un lugar mejor donde vivir.</strong>
			</p>
		</div>
		<div class="bloque" style="margin-bottom: 100px;">
			<img id="masInformacion" class="rounded-image1"
				src="imgs/cuidadoMedioAmbiente.jpg" alt="Imagen con esquinas curvas">
			<div class="text-block1">
				<h2 class="featurette-heading mt-5">
					<span style="color: #2faa4c"><strong>Nuestro
							prop�sito</strong></span><br>

				</h2>
				<p class="lead mt-4">
					Contribuir al <strong>cuidado del medioambiente</strong>
					promoviendo la circularidad de todos los <strong>productos
						org�nicos mediante su reciclaje</strong>.
				</p>
			</div>
		</div>
		<div class="bloque " style="margin-bottom: 100px;">
			<img id="masInformacion" class="rounded-image2" src="imgs/mision.jpg"
				alt="Imagen con esquinas curvas">
			<div class="text-block2">
				<h2 class="featurette-heading mt-5">
					<span style="color: #2faa4c"><strong>Nuestra misi�n</strong></span><br>

				</h2>
				<p class="lead mt-4">
					<strong>Gestionar, desarrollar e intermediar</strong> en el sistema
					de reciclaje de residuos org�nicos de forma eficiente, transparente
					e innovadora <strong>trabajando para los ciudadanos y
						empresas</strong> en colaboraci�n con los mismos.
				</p>
			</div>
		</div>
		<div class="bloque " style="margin-bottom: 100px;">
			<img id="masInformacion" class="rounded-image3"
				src="imgs/mundoCircular.png" alt="Imagen con esquinas curvas">
			<div class="text-block1">
				<h2 class="featurette-heading mt-5">
					<span style="color: #2faa4c"><strong>Nuestra visi�n</strong></span><br>

				</h2>
				<p class="lead mt-4">
					Consolidar una <strong>econom�a circular</strong> eficiente,
					cercana e involucrativa que priorice el cuidado del medioambiente
					gracias a una <strong>sociedad activa</strong>, unas empresas
					responsables y <strong>ciudadanos comprometidos con el
						reciclaje</strong>.
				</p>
			</div>
		</div>
	</div>


	<footer
		style="background-color: #104724; display: flex; justify-content: space-between; align-items: center; padding: 10px;">
		<div style="display: flex; align-items: center;">
			<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
				class="d-inline-block" style="height: 100px;">
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

		// Cerrar el modal al hacer clic fuera de �l
		window.addEventListener("click", function(event) {
			if (event.target === perfilModal) {
				perfilModal.style.display = "none";
			}
		});
	</script>
</body>
</html>