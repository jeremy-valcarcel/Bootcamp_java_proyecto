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
<title>Reciclaje org�nico</title>
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

/* ESTILOS HEADER/FOOTER */
header, footer {
	background-color: #82e462;
	display: flex;
	justify-content: space-between;
	padding: 5px 10px;
	align-items: center;
}
/* ESTILOS HEADER/FOOTER */

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

/* ESTILOS CONTENIDO */
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
/* ESTILOS CONTENIDO */

/* PROCESO DE RECICLAJE */
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
/* PROCESO DE RECICLAJE */
.rounded-image {
	border-radius: 20px;
}

/* ESTILOS BODY */
body {
	background-color: #f5f6f7;
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

.rounded-box {
	border-radius: 70px;
	padding: 20px;
	background-color: #ffffff;
	text-align: center;
	width: 70%; /* Ajusta el ancho del bloque seg�n tus necesidades */
	height: 150px; /* Ajusta la altura del bloque seg�n tus necesidades */
	margin: 0 auto; /* Centra horizontalmente el bloque */
	display: flex;
	flex-direction: column;
	justify-content: center;
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
	transition: color 0.3s; /* Animaci�n de cambio de color */
	font-weight: bold;
	/* Puedes cambiar el peso de la fuente seg�n tus preferencias */
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
<body style="background-color: #f5f6f7">
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
										<h2>
											�Hola,
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
										<h2>
											�Hola,
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
										Sesi�n</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</nav>
		</header>
	</div>

	<div class="content" style="margin-top: 140px">
		<h2 class="text-center mt-5" style="color: #2faa4c; font-size: 50px;">RECICLAJE
			DE RESIDUOS ORG�NICOS</h2>
		<div class="rounded-box col p-3"
			style="margin-top: 30px; margin-bottom: 20px;">
			<h2 class="display-2 my-3 text-center"
				style="text-align: left; color: #5a5a5a; font-size: 30px;">�Qu�
				son los residuos org�nicos?</h2>
			<p class="text-center" style="text-align: left;">Son todo desecho
				o residuo de origen vegetal y/o animal, que alguna vez estuvo vivo o
				fue parte de un ser vivo y que es susceptible de degradarse
				biol�gicamente.</p>
		</div>
		<div class="row border-top-bottom m-3">
			<div class="col-md-6 p-4 ">
				<h2 class="display-2 my-3"
					style="text-align: left; color: #5a5a5a; font-size: 30px;">�Por
					qu� reciclar?</h2>
				<p style="text-align: left;">Reciclar conlleva ahorrar materias
					primas, energ�a, agua y reducir las emisiones de gases de efecto
					invernadero. Reciclando evitas que los productos y materiales se
					conviertan en residuos, transform�ndolos en otros completamente
					nuevos, alargando su vida �til y ayudando a la preservaci�n de los
					recursos naturales del planeta.</p>
			</div>
			<div class="col-md-6">
				<img alt="reciclar" src="imgs/reciclaje-cartel.jpg"
					class="d-inline-block rounded-image">
			</div>
		</div>

		<div class="reciclaje" style="background-color: #44b15e;">
			<h3 class="text-white display-5" style="font-weight: bold;">Nuestro
				proceso de reciclaje</h3>
		</div>

		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-8 text-center">
					<p class="m-5">Este es el proceso que siguen nuestros desechos
						desde que se publican hasta su reciclaje.</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-8 text-center">
					<img alt="logo" src="imgs/proceso_de_reciclaje.png"
						class="img-fluid" style="max-width: 100%;">
				</div>
			</div>
		</div>


		<!-- BENEFICIOS DE RECICLAJE -->

		<div class="container mt-5">
			<h2 class="text-center mb-4">Beneficios del Reciclaje</h2>
			<div class="row">
				<!-- BENEFICIO 1 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/planta-removebg-preview.png" alt="Imagen 1"
							class="card-img-top mt-5">
						<div class="card-body">
							<h5 class="card-title mt-5">Conservaci�n de Recursos</h5>
							<p class="card-text">Reduce la demanda de recursos naturales
								al reciclar materiales org�nicos.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 2 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/pulmones-removebg-preview.png" alt="Imagen 2"
							class="card-img-top mt-5">
						<div class="card-body">
							<h5 class="card-title mt-5">Mejora del Medio Ambiente</h5>
							<p class="card-text">La gesti�n adecuada de residuos
								org�nicos mejora la calidad del aire y del agua.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 3 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/organic-removebg-preview.png" alt="Imagen 3"
							class="card-img-top">
						<div class="card-body">
							<h5 class="card-title">Generaci�n de Ingresos</h5>
							<p class="card-text">La venta de productos reciclados puede
								generar ingresos adicionales.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 4 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/economiaCircular2-removebg-preview.png"
							alt="Imagen 4" class="card-img-top">
						<div class="card-body">
							<h5 class="card-title">Econom�a Circular</h5>
							<p class="card-text">Promueve la creaci�n de empresas que
								utilizan materiales reciclados de manera efectiva.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 5 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/contenedores-removebg-preview.png" alt="Imagen 5"
							class="card-img-top mt-5">
						<div class="card-body">
							<h5 class="card-title mt-5">Reducci�n de Residuos</h5>
							<p class="card-text">El reciclaje org�nico reduce la cantidad
								de residuos en vertederos y mitiga el cambio clim�tico.</p>
						</div>
					</div>
				</div>

				<!-- BENEFICIO 6 -->
				<div class="col-md-4 mb-4">
					<div class="card h-100 text-center">
						<img src="imgs/personasTierra-removebg-preview.png" alt="Imagen 6"
							class="card-img-top mt-5">
						<div class="card-body">
							<h5 class="card-title mt-5">Educaci�n y Concienciaci�n</h5>
							<p class="card-text">El reciclaje org�nico fomenta la
								educaci�n ambiental y la concienciaci�n sobre la importancia de
								reducir, reutilizar y reciclar, lo que puede llevar a una mayor
								participaci�n en pr�cticas sostenibles en general.</p>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-3">
					<h6>Acerca</h6>
					<p class="text-justify">
						<i>ECORESCATE</i> gestiona el reciclaje de los residuos org�nicos
						generados por empresas y/o personas individuales. Queremos
						impulsar la conciencia medioambiental hasta convertir el reciclaje
						en un h�bito diario para la poblaci�n, contribuyendo a hacer de
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
						<li><a class="nav-link text-white" href="/nosotros">�Quienes
								s�mos?</a></li>
						<li><a class="nav-link text-white" href="/reciclaje">Reciclaje
								Org�nico</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-md-3">
					<h6>Preguntas frecuentes</h6>
					<ul class="footer-links">
						<li><a class="nav-link text-white"
							href="/preguntasFrecuentes">�Puedo aportar otro residuo que
								no sea org�nico?</a></li>
						<li><a class="nav-link text-white"
							href="/preguntasFrecuentes">�Cu�les son los errores comunes
								que debemos evitar al reciclar org�nicos?</a></li>
						<li><a class="nav-link text-white"
							href="/preguntasFrecuentes">�Tengo alguna manera de
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

		// Cerrar el modal al hacer clic fuera de �l
		window.addEventListener("click", function(event) {
			if (event.target === perfilModal) {
				perfilModal.style.display = "none";
			}
		});
	</script>
</body>
</html>