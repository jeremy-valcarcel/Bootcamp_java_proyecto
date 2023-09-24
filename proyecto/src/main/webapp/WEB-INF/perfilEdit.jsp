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
<title>Perfil edit</title>

<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script type="text/javascript" src="/js/app.js"></script>

<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
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

/* Estilo para la imagen de perfil (ajustar el tamaño según lo deseado) */
.perfil-imagen {
	height: 200px;
	border-radius: 500%;
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

	<div class="text-end">
		<a href="/perfil">Volver a perfil</a>
	</div>
	<div class="text-end">
		<a href="/Inicio">Volver a perfil</a>
	</div>
	<main class="container" style="margin-top: 100px;">
		<div class="row mt-4">
			<div class="col-sm-3">
				<img alt="foto perfil" src="img/perfil.jpeg"
					style="border-radius: 300px; height: 13em; position: relative;">
			</div>
			<c:if test="${usuario.id == usuario.id && empresa.id == null }">
				<div class="col mt-5 ml-2">
					<form:form method="POST" action="/perfil-${usuario.id}-edit"
						modelAttribute="usuario">
						<input type="hidden" name="_method" value="put" />
						<div>
							<form:errors class="text-danger form-control is-invalid"
								path="nombre" />
							<form:label path="nombre">Nombre:</form:label>
							<form:input type="text" path="nombre" />

						</div>
						<div>
							<form:errors class="text-danger form-control is-invalid"
								path="apellido" />
							<form:label path="apellido">Apellido:</form:label>
							<form:input type="text" path="apellido" />
						</div>
						<div>
							<form:errors class="text-danger form-control is-invalid"
								path="telefono" />
							<form:label path="telefono">Contacto:</form:label>
							<form:input type="text" path="telefono" />

						</div>
						<div>
							<form:label path="rol" class="col-lg-4 control-label">Rol:</form:label>
							<form:select path="rol" type="text" class="col-lg-8"
								items="${roles}" itemLabel="name">
							</form:select>

						</div>
						<input type="submit" value="Editar perfil" class="my-3" />
					</form:form>
				</div>
			</c:if>
			<c:if test="${empresa.id == empresa.id && usuario.id == null}">
				<div class="col mt-5 ml-2">
					<h2 class="text-secondary">
						¡Hola,
						<c:out value="${empresa.nombre}!"></c:out>
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
			<div class="col mt-4">
				<section style="border: 1px solid #000000; padding: 1em;">
					<h3 class="text-center text-secondary">Tus Publicaciones:</h3>
					<article>
						<div class="col mt-4">
							<c:forEach items="${publicaciones }" var="publicacion">

								<div class="row">
									<div class="row mt-4 mb-4">
										<%-- 								<c:forEach items="${publicacionEmpresa}" var="publicacion"> --%>
										<div class="row m-0 mb-2">
											<div class="col" style="height: 52px">
												<img class="mb-4" alt="foto perfil" src="img/perfil.jpeg"
													style="border-radius: 300px; height: 50px; width: 50px; margin-left: -10px; position: static">
												<p class="float-end p-2">
													<fmt:formatDate value="${publicacion.createdAt}"
														pattern="MMMM dd, yyyy HH:mm" var="fechaFormateada" />
													<c:out value="${fechaFormateada}"></c:out>
												</p>
												<div style="display: inline-block; margin-left: 10px">
													<h5 class="m-0">
														<c:out
															value="${publicacion.emisor.nombre} ${publicacion.emisor.apellido}"></c:out>
														<c:out value="${publicacion.empresaEmisora.nombre}"></c:out>
													</h5>
													<p class="text-secondary" style="margin-top: -3px">
														<c:out value="${publicacion.empresaEmisora.direccion}"></c:out>
													</p>
												</div>
											</div>
										</div>

										<div class="row">
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
										<div class="row mb-4" style="height: 40px">
											<div class="col mx-0 m-0" style="display: inline-block">
												<a class="p-2 btn btn-primary" style="width: 309px"
													href="publicaciones/${publicacion.id}">comentarios</a> <a
													class="p-2 btn btn-primary" style="width: 309px"
													href="publicaciones/${publicacion.id}">comentar</a>
											</div>
										</div>
									</div>
							</c:forEach>
						</div>

					</article>
				</section>
			</div>
		</div>
	</main>

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