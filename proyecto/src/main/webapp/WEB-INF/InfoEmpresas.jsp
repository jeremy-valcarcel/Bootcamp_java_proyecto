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
/* Estilo del modal */
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

.container {
	display: flex; /* Usamos flexbox para colocar los bloques en una fila */
	justify-content: space-between;
	margin-top: 50px;
	/* Distribuye los bloques uniformemente en la fila */
}

.block {
	width: 230px;
	height: 160px;
	margin-right: 20px;
	text-align: center;
	/* Agregamos margen a la derecha para separar los bloques */
}

.hola {
	position: relative;
	max-width: 100%; /* Cambiamos el ancho máximo al 100% */
	margin: 0 auto;
	text-align: center;
}

.rounded-image {
	position: relative;
	right: 150px;
	width: 110%; /* La imagen ocupa todo el ancho del contenedor */
	max-height: 100%;
	/* Opcional: limita la altura al 100% para mantener la proporción */
	height: auto;
	/* Opcional: ajusta automáticamente la altura para mantener la proporción */
	border-radius: 20px; /* Aplica esquinas curvas a la imagen */
}

.text-block {
	width: 70%; /* Ajusta el ancho del bloque de texto al 80% */
	position: absolute;
	bottom: -100px;
	right: 20px;
	left: 450px;
	/* Eliminamos la propiedad left para centrar el bloque en la esquina derecha */
	background-color: white;
	padding: 10px;
	border-radius: 20px; /* Aplica esquinas curvas al bloque de texto */
}

.rounded-image1 {
	position: relative;
	left: 200px;
	width: 130%;
	max-height: 100%;
	height: auto;
	border-radius: 20px;
}

.rounded-image4 {
	position: relative;
	right: 100px;
	width: 140%;
	max-height: 100%;
	height: auto;
	border-radius: 20px;
}

.text-block1 {
	width: 90%;
	position: absolute;
	bottom: 350px;
	left: -250px;
	/* Cambiamos "right" a "left" para posicionarlo en la esquina inferior izquierda */
	background-color: white;
	padding: 10px;
	border-radius: 20px;
}

.text-block4 {
	width: 90%;
	position: absolute;
	bottom: -220px;
	left: 60px;
	/* Cambiamos "right" a "left" para posicionarlo en la esquina inferior izquierda */
	background-color: white;
	padding: 10px;
	border-radius: 20px;
}

.con {
	position: relative;
	width: 100%;
	max-width: 800px;
	margin: 0 auto;
	text-align: center;
}

.1erBlock {
	width: 0;
	height: 0;
	border-left: 100px solid transparent; /* Ancho izquierdo */
	border-right: 100px solid transparent; /* Ancho derecho */
	margin: 0 auto;
}

.2doBlock {
	position: absolute;
	right: 2000px;
	width: 0;
	height: 0;
	border-left: 100px solid transparent; /* Ancho izquierdo */
	border-right: 100px solid transparent; /* Ancho derecho */
	margin: 0 auto;
	width: 0;
	width: 0;
}

.3erBlock {
	width: 0;
	height: 0;
	border-left: 100px solid transparent; /* Ancho izquierdo */
	border-right: 100px solid transparent; /* Ancho derecho */
	margin: 0 auto;
}

.bloc {
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	position: relative;
	z-index: 2;
}

.bloc1 {
	width: 70%;
	background-color: white;
	padding: 20px;
	border-radius: 20px;
	position: relative;
	bottom: 150px;
	right: -550px;
	z-index: 3;
}

.bloc2 {
	width: 70%;
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	position: relative;
	bottom: 400px;
	right: 250px;
	z-index: 2;
}

.image1 {
	position: relative;
	top: -100px;
	right: 400px;
	z-index: 1;
	max-width: 50%;
}

.image2 {
	position: relative;
	top: -965px;
	left: 400px;
	z-index: 1;
	max-width: 50%;
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

.imagenBlock {
	border-radius: 20px;
}

.custom-button {
	background-color: #44b15e; /* Color de fondo del botón */
	color: white; /* Color del texto del botón */
	border: none; /* Sin borde */
	border-radius: 50%; /* Forma redonda */
	width: 50px; /* Ancho del botón */
	height: 50px; /* Altura del botón */
	font-size: 24px; /* Tamaño del texto */
	text-align: center; /* Alinea el texto en el centro */
	line-height: 50px; /* Alinea verticalmente el texto en el centro */
	text-decoration: none; /* Quita el subrayado de enlace */
	display: inline-block;
	/* Hace que el botón se comporte como un bloque en línea */
	cursor: pointer; /* Cambia el cursor al pasar el ratón */
	transition: background-color 0.3s ease, color 0.3s ease;
	/* Transición suave del color de fondo y el color del texto */
}

.custom-button:hover {
	background-color: #238c40;
	/* Cambia el color de fondo al pasar el ratón */
	color: #fff; /* Cambia el color del texto al pasar el ratón */
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
</style>
</head>
<body
	style="background-color: #f5f6f7; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">
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
										¡Hola,
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
										¡Hola,
										<c:out value="${empresa.nombre}!"></c:out>
									</h2>
								</c:if>
								<a href="/perfil" class="btn btn-success d-block col-6 mb-2"
									style="width: 350px">Ir a perfil</a> <a href="/logout"
									class="btn btn-success d-block col-6 mb-2" style="width: 350px">Cerrar
									Sesión</a>

							</div>
						</div>

					</div>
				</div>
			</nav>
		</header>
	</div>


	<div class="content" style="margin-top: 150px; margin-bottom: 250px;">
		<div class="rounded-box">
			<h2>
				¿Qué tienes que saber sobre las <strong style="color: #2faa4c">empresas</strong>?
			</h2>
		</div>
		<div class="container">
			<div class="block">
				<img class="imagenBlock" alt="block"
					src="imgs/restauranteResiduo2.jpg"
					style="width: 230px; height: 160px;">
				<p class="text-center my-3" style="font-size: 20px; color: #3d4852;">
					<strong>Importancia</strong>
				</p>
				<p class="text-center">¿Qué tan importante es que una empresa se
					una a nuestro proceso de reciclaje?</p>
				<a href="#masInformacion" class="custom-button">+</a>
			</div>
			<div class="block">
				<img class="imagenBlock" alt="block" src="imgs/empresasResiduos.jpg"
					style="width: 230px; height: 160px;">
				<p class="text-center my-3" style="font-size: 20px; color: #3d4852;">
					<strong>Roles</strong>
				</p>
				<p class="text-center">
					¿Sabías los <strong style="color: rgb(88, 86, 86)">roles</strong>
					que puede tener una <strong style="color: rgb(88, 86, 86)">empresa</strong>?
				</p>
				<a href="#masInformacion2" class="custom-button">+</a>
			</div>
			<div class="block">
				<img class="imagenBlock" alt="block"
					src="imgs/restauranteResiduo.jpg"
					style="width: 230px; height: 160px;">
				<p class="text-center my-3" style="font-size: 20px; color: #3d4852;">
					<strong>Cantidad de desechos</strong>
				</p>
				<p class="text-center">
					¿Hasta <strong style="color: rgb(88, 86, 86)">cuántos</strong>
					desechos puedo <strong style="color: rgb(88, 86, 86)">pedir</strong>
					siendo <strong style="color: rgb(88, 86, 86)">empresa-recolector</strong>?
				</p>
				<a href="#masInformacion3" class="custom-button">+</a>
			</div>
			<div class="block">
				<img class="imagenBlock" alt="block"
					src="imgs/empresasResiduos2.jpg"
					style="width: 230px; height: 160px;">
				<p class="text-center my-3" style="font-size: 20px; color: #3d4852;">
					<strong>A quién ayudar</strong>
				</p>
				<p class="text-center">
					Siendo <strong style="color: rgb(88, 86, 86)">generador</strong> de
					residuos, ¿A qué <strong style="color: rgb(88, 86, 86)">entidades</strong>
					puedo <strong style="color: rgb(88, 86, 86)">ayudar</strong>?
				</p>
				<a href="#masInformacion4" class="custom-button">+</a>
			</div>
		</div>
	</div>

	<div class="hola " style="margin-bottom: 190px;">
		<img id="masInformacion" class="rounded-image"
			src="imgs/empresasResiduos2.jpg" alt="Imagen con esquinas curvas">
		<div class="text-block">
			<h2 class="featurette-heading mt-5">
				<span style="color: #2faa4c"><strong>IMPORTANCIA</strong></span><br>
				<span class="text-muted" style="font-size: 25px;">Importancia
					del reciclaje de una empresa</span>
			</h2>
			<p class="lead mt-4">
				Una empresa puede generar muchos kilográmos de desechos orgánicos en
				muy poco tiempo. <br>Sin el proceso de reciclaje, los residuos
				orgánicos se convertirían en una carga para nuestro planeta. Imagina
				el impacto que podemos lograr si todos nos unimos a esta causa.
			</p>
		</div>
	</div>

	<div id="masInformacion2" class="con">
		<div class="1erBlock">
			<div class="bloc">
				<h2 class="featurette-heading text-center">
					<span style="color: #2faa4c"><strong>ROLES</strong></span><br>
					<span class="text-muted" style="font-size: 25px;">¿Sabias
						que puedes formar parte como RECOLECTOR o GENEREADOR de residuos?</span>
				</h2>
			</div>
		</div>
		<img class="image1" src="imgs/deco.png" alt="Imagen 1">

		<div class="2doBlock">
			<div class="bloc1">
				<h2 style="color: #2faa4c">RECOLECTOR:</h2>
				<p>Se dedican a reunir una variedad de residuos orgánicos con el
					propósito de transformarlos en nuevos productos útiles. Su labor no
					solo reduce la cantidad de residuos que terminan en vertederos,
					sino que también contribuye a la creación de recursos valiosos.
					Desempeñan un rol invaluable en la promoción de la sostenibilidad y
					la gestión responsable de residuos orgánicos.</p>
			</div>
		</div>

		<div class="3erBlock">
			<div class="bloc2">
				<h2 style="color: #2faa4c">GENERADOR:</h2>
				<p>Son un componente esencial y un punto de partida clave. Son
					responsables de producir los residuos orgánicos que posteriormente
					se reciclan y transforman en nuevos recursos valiosos. Su papel en
					el ciclo de vida de los desechos es fundamental para fomentar
					prácticas de gestión sostenible y reducir el impacto ambiental.</p>
			</div>
			<img class="image2" src="imgs/deco.png" alt="Imagen 3">
		</div>
	</div>

	<div class="hola" style="margin-top: -700px;">
		<img id="masInformacion3" class="rounded-image1"
			src="imgs/bolsaBasura.png" alt="Imagen con esquinas curvas">
		<div class="text-block1">
			<h2 class="featurette-heading mt-5">

				<span style="color: #2faa4c"><strong>CANTIDAD MÁXIMA
						DE RESIDUOS PERMITIDOS </strong></span><br> <span class="text-muted"
					style="font-size: 25px;">¿Si soy recolector, puedo pedir
					tanta cantidad de residuos como quiera?</span>
			</h2>
			<p class="lead">
				Una <strong>empresa recolector</strong> puede demandar como <strong>mínimo
					7kg</strong> de desechos y no tiene un máximo específico.
			</p>
		</div>
	</div>

	<div class="hola" style="margin-top: -100px; margin-bottom: 320px;">
		<img id="masInformacion4" class="rounded-image4"
			src="imgs/chicos-de-reciclaje.jpg" alt="Imagen con esquinas curvas">
		<div class="text-block4">
			<h2 class="featurette-heading">
				<span style="color: #2faa4c"><strong>A QUIEN AYUDAR</strong></span><br>
				<span class="text-muted" style="font-size: 25px;">¿A que
					entidades recolectoras puedo ayudar siendo generador de residuos?</span>
			</h2>
			<p class="lead">
				Las <strong>empresas generadoras</strong> de residuos pueden ayudar
				a <strong>empresas recolectoras</strong>. Las empresas recolectoras
				reciben los desechos mediante los puntos de ubicación de las
				empresas generadoras.
			</p>
		</div>
	</div>



	<!-- Footer -->
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