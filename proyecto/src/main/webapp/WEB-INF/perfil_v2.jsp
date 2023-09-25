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
	border-radius: 550%;
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
							style="height: 60px; width: 60px;">
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
		<div class="row mt-4">
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="foto perfil" src="img/perfil.jpeg"
							style="border-radius: 50%; height: 150px;">
					</div>
					<div class="col p-4">
						<c:if test="${usuario.id == usuario.id && empresa.id == null }">
							<h4 class="text-secondary text-center mb-3">
								¡Hola,
								<c:out value="${usuario.nombre}"></c:out>
								<c:out value="${usuario.apellido}!"></c:out>
							</h4>
							<p class="text-secondary">
								<strong><img src="imgs/email.png"
									style="width: 25px; height: 25px;" alt="Logotipo" class="logo">
									<!-- Agrega tu logotipo aquí --> Email:</strong>
								<c:out value="${usuario.email}"></c:out>
							</p>
							<p class="text-secondary">
								<strong><img src="imgs/contacto.png"
									style="width: 25px; height: 25px;" alt="Logotipo" class="logo">
									Contacto:</strong>
								<c:out value="${usuario.telefono}"></c:out>
							</p>
							<p class="text-secondary">
								<strong> <img src="imgs/rol.png"
									style="width: 25px; height: 25px;" alt="Logotipo" class="logo">Tipo
									de cuenta:
								</strong>
								<c:out value="${usuario.rol.name}"></c:out>
							</p>
						</c:if>
						<c:if test="${empresa.id == empresa.id && usuario.id == null}">
							<h4 class="text-secondary text-center mb-3">
								¡Hola,
								<c:out value="${empresa.nombre}"></c:out>
							</h4>
							<p class="text-secondary">
								<strong> <img src="imgs/email.png"
									style="width: 25px; height: 25px;" alt="Logotipo" class="logo">
									<!-- Agrega tu logotipo aquí --> Email:
								</strong>
								<c:out value="${empresa.email}"></c:out>
							</p>
							<p class="text-secondary">
								<strong> <img src="imgs/contacto.png"
									style="width: 25px; height: 25px;" alt="Logotipo" class="logo">
									<!-- Agrega tu logotipo aquí --> Contacto:
								</strong>
								<c:out value="${empresa.telefono}"></c:out>
							</p>
							<p class="text-secondary">
								<strong> <img src="imgs/rol.png"
									style="width: 25px; height: 25px;" alt="Logotipo" class="logo">
									<!-- Agrega tu logotipo aquí --> Tipo de cuenta:
								</strong>
								<c:out value="${empresa.rol.name}"></c:out>
							</p>
							<p class="text-secondary">
								<strong> <img src="imgs/razon_social.png"
									style="width: 25px; height: 25px;" alt="Logotipo" class="logo">
									<!-- Agrega tu logotipo aquí --> Razón social:
								</strong>
								<c:out value="${empresa.razonSocial}"></c:out>
							</p>
							<p class="text-secondary">
								<strong> <img src="imgs/direccion.png"
									style="width: 25px; height: 25px;" alt="Logotipo" class="logo">
									<!-- Agrega tu logotipo aquí --> Dirección:
								</strong>
								<c:out value="${empresa.direccion}"></c:out>
							</p>
						</c:if>
					</div>
					<div class="card-footer text-center">
						<c:if test="${empresa.id == empresa.id && usuario.id == null}">
							<a href="/perfil-${empresa.id}-editar" class="btn btn-success"
								style="width: 100%">Editar Perfil</a>
							<a href="/crear-publicacion"
								class="btn btn-success d-block col-6 mt-2 mb-2"
								style="width: 100%">Nueva publicación</a>
							<a href="/logout" class="btn btn-success d-block col-6 mt-2"
								style="width: 100%">Cerrar Sesión</a>
						</c:if>
						<c:if test="${usuario.id == usuario.id && empresa.id == null }">
							<a href="/perfil-${usuario.id}-edit" class="btn btn-success"
								style="width: 100%">Editar Perfil</a>
							<a href="/crear-publicacion"
								class="btn btn-success d-block col-6 mt-2 mb-2"
								style="width: 100%">Nueva publicación</a>
							<a href="/logout" class="btn btn-success d-block col-6 mt-2"
								style="width: 100%">Cerrar Sesión</a>
						</c:if>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<section style="border: 1px solid #000000; padding: 1em;">
					<h3 class="text-center text-secondary">Tus Publicaciones:</h3>
					<div class="row mt-4">
						<c:forEach items="${publicaciones}" var="publicacion">
							<div class="col-md-12 mb-4">
								<div class="card">
									<div class="card-header">
										<img class="img-thumbnail rounded-circle"
											src="img/perfil.jpeg" alt="foto perfil"
											style="width: 50px; height: 50px;">
										<div class="d-inline-block ml-3"
											style="vertical-align: middle;">
											<h5 class="card-title m-0 my-2">
												<c:out
													value="${publicacion.emisor.nombre} ${publicacion.emisor.apellido}"></c:out>
												<c:out value="${publicacion.empresaEmisora.nombre}"></c:out>
											</h5>
											<p class="card-subtitle text-muted">
												<fmt:formatDate value="${publicacion.createdAt}"
													pattern="MMMM dd, yyyy HH:mm" var="fechaFormateada" />
												<c:out value="${fechaFormateada}"></c:out>
											</p>
										</div>
									</div>
									<div class="card-body">
										<h4 class="text-secondary mt-2">
											<c:out value="${publicacion.categoria.categoria}"></c:out>
										</h4>
										<p>
											<c:out value="${publicacion.descripcion}"></c:out>
										</p>
										<p>
											Cantidad:
											<c:out value="${publicacion.tamano}"></c:out>
											kg
										</p>
									</div>
									<div class="card-footer">
										<a class="btn btn-white" style="width: 100%;"
											href="publicaciones-${publicacion.id}">Agregar un
											comentario</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</section>
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