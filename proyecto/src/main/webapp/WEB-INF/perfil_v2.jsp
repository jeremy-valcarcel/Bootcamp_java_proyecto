<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil</title>

<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script type="text/javascript" src="/js/app.js"></script>

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

/* Estilo del modal */
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 1100px;
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

/* Estilo para la imagen de perfil (ajustar el tamaño según lo deseado) */
.perfil-imagen {
	height: 200px;
	border-radius: 500%;
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
					<div class="register">
						<a href="#" id="mostrarPerfil"> <img alt="Usuario"
							src="img/usuario.png" class="d-inline-block"
							style="height: 60px;">
						</a>

						<div id="perfilModal" class="modal">
							<div class="modal-content">
								<p class="text-black">
									<c:out value="${usuario.email}"></c:out>
								</p>
								<span class="cerrar" id="cerrarPerfil">&times;</span> <img
									alt="Usuario" src="img/usuario.png" style="weight: 1000px"
									class="perfil-imagen">
								<h2>
									¡Hola,
									<c:out value="${usuario.nombre} ${usuario.apellido}"></c:out>
									!
								</h2>
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

	<main class="container" style="margin-top: 100px;">
		<div class="row mt-4">
			<div class="col-sm-3">
				<img alt="foto perfil" src="img/perfil.jpeg"
					style="border-radius: 300px; height: 13em; position: relative;">
			</div>
			<c:if test="${usuario.id == usuario.id && empresa.id == null }">
				<div class="col mt-5 ml-2">
					<h2 class="text-secondary">
						Hola
						<c:out value="${usuario.nombre}"></c:out>
						<c:out value="${usuario.apellido}"></c:out>
					</h2>
					<p class="text-secondary">
						Email:
						<c:out value="${usuario.email}"></c:out>
					</p>
					<p class="text-secondary">
						Contacto:
						<c:out value="${usuario.telefono}"></c:out>
					</p>
					<p class="text-secondary">
						Tipo de cuenta:
						<c:out value="${usuario.rol.name}"></c:out>
					</p>
				</div>
			</c:if>
			<c:if test="${empresa.id == empresa.id && usuario.id == null}">
				<div class="col mt-5 ml-2">
					<h2 class="text-secondary">
						Hola
						<c:out value="${empresa.nombre}"></c:out>
					</h2>
					<p class="text-secondary">
						Email:
						<c:out value="${empresa.email}"></c:out>
					</p>
					<p class="text-secondary">
						Contacto:
						<c:out value="${empresa.telefono}"></c:out>
					</p>
					<p class="text-secondary">
						Direccion:
						<c:out value="${empresa.direccion}"></c:out>
					</p>
					<p class="text-secondary">
						Razon social:
						<c:out value="${empresa.razonSocial}"></c:out>
					</p>
					<p class="text-secondary">
						Tipo de cuenta:
						<c:out value="${empresa.rol.name}"></c:out>
					</p>
				</div>
			</c:if>
		</div>


		<div class="row mb-4">
			<div class="col-sm-3 mt-4">
				<aside class="col">
					<a href="#" class="btn btn-success d-block col-6 mb-2"
						style="width: 210px">Editar Perfil</a> <a
						href="/crear/publicacion"
						class="btn btn-success d-block col-6 mt-2 mb-2"
						style="width: 210px">Nuevo publicaion</a> <a href="/logout"
						class="btn btn-success d-block col-6 mt-2" style="width: 210px">Cerrar
						Sesion</a>
				</aside>
			</div>
			<div class="col mt-4">
				<section style="height: 400px">
					<h3 class="text-center text-secondary">Tus Publicaciones:</h3>
					<article
						class="border border-dark p-4 overflow-auto position-absolute"
						style="height: 320px; width: 880px">
						<div class="row">
							<h4 class="text-secondary col-4">Title</h4>
							<p class=" col mx-2 text-end">00/00/00 00:00</p>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged. It was popularised in the 1960s with the release of
								Letraset sheets containing Lorem Ipsum passages, and more
								recently with desktop publishing software like Aldus PageMaker
								including versions of Lorem Ipsum.</p>
						</div>
						<hr>
						<div class="row">
							<h4 class="text-secondary col-4">Title</h4>
							<p class=" col mx-2 text-end">00/00/00 00:00</p>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged. It was popularised in the 1960s with the release of
								Letraset sheets containing Lorem Ipsum passages, and more
								recently with desktop publishing software like Aldus PageMaker
								including versions of Lorem Ipsum.</p>
						</div>
						<hr>
						<div class="row">
							<h4 class="text-secondary col-4">Title</h4>
							<p class=" col mx-2 text-end">00/00/00 00:00</p>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries, but also
								the leap into electronic typesetting, remaining essentially
								unchanged. It was popularised in the 1960s with the release of
								Letraset sheets containing Lorem Ipsum passages, and more
								recently with desktop publishing software like Aldus PageMaker
								including versions of Lorem Ipsum.</p>
						</div>
					</article>
				</section>
			</div>
		</div>
	</main>

	<footer
		style="background-color: #104724; display: flex; justify-content: space-between; align-items: center; padding: 10px; margin: 0;">
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

		// Cerrar el modal al hacer clic fuera de él
		window.addEventListener("click", function(event) {
			if (event.target === perfilModal) {
				perfilModal.style.display = "none";
			}
		});
	</script>
</body>
</html>