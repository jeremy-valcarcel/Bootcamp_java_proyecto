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
<title>Empresas</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script type="text/javascript" src="/js/app.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Red+Hat+Display:wght@500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">

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

.register {
	position: absolute;
	right: -420px;
}
</style>

</head>
<body>

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


	<main style="display: flex; justify-content: space-around;"
		class="container mt-3">






		<div class="container">
			<div class="profile-wrapper">
				<div class="profile">
					<div class="profile-image">
						<img src="/img/logo-removebg-preview.png" alt="Profile">
					</div>
					<ul class="social-icons">
						<li><a href="#instagram" title="Instagram"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="2" y="2" width="20"
										height="20" rx="5" ry="5"></rect>
                                    <path
										d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                    <line x1="17.5" y1="6.5" x2="17.51"
										y2="6.5"></line>
                                </svg>
						</a></li>
						<li><a href="#twitter" title="Twitter"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-twitter">
                                    <path
										d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 
                                            10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5
                                            4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z">
                                    </path>
                                </svg>
						</a></li>
						<li><a href="#threads" title="Threads"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M19 7.5c-1.333 -3 -3.667 -4.5 -7 -4.5c-5 0 -8 2.5 -8 9s3.5 9 8 9s7 -3 7
                                            -5s-1 -5 -7 -5c-2.5 0 -3 1.25 -3 2.5c0 1.5 1 2.5 2.5 2.5c2.5 0 3.5 -1.5 
                                            3.5 -5s-2 -4 -3 -4s-1.833 .333 -2.5 1">
                                    </path>
                                 </svg>
						</a></li>
						<li><a href="#linkedin" title="Linkedin"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M4 4m0 2a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-12a2 
                                             2 0 0 1 -2 -2z">
                                    </path>
                                    <path d="M8 11l0 5"></path>
                                    <path d="M8 8l0 .01"></path>
                                    <path d="M12 16l0 -5"></path>
                                    <path d="M16 16v-3a2 2 0 0 0 -4 0"></path>
                                 </svg>
						</a></li>
					</ul>
					<div class="profile-name">
						<h2>Jason Alexander</h2>
						<div class="profile-bio">
							I'm JavaScript full-stack engineer, love working with <em>React</em>
							and <em>Node.js</em>.
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="profile-wrapper">
				<div class="profile">
					<div class="profile-image">
						<img src="/img/logo-removebg-preview.png" alt="Profile">
					</div>
					<ul class="social-icons">
						<li><a href="#instagram" title="Instagram"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="2" y="2" width="20"
										height="20" rx="5" ry="5"></rect>
                                    <path
										d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                    <line x1="17.5" y1="6.5" x2="17.51"
										y2="6.5"></line>
                                </svg>
						</a></li>
						<li><a href="#twitter" title="Twitter"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-twitter">
                                    <path
										d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 
                                            10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5
                                            4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z">
                                    </path>
                                </svg>
						</a></li>
						<li><a href="#threads" title="Threads"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M19 7.5c-1.333 -3 -3.667 -4.5 -7 -4.5c-5 0 -8 2.5 -8 9s3.5 9 8 9s7 -3 7
                                            -5s-1 -5 -7 -5c-2.5 0 -3 1.25 -3 2.5c0 1.5 1 2.5 2.5 2.5c2.5 0 3.5 -1.5 
                                            3.5 -5s-2 -4 -3 -4s-1.833 .333 -2.5 1">
                                    </path>
                                 </svg>
						</a></li>
						<li><a href="#linkedin" title="Linkedin"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M4 4m0 2a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-12a2 
                                             2 0 0 1 -2 -2z">
                                    </path>
                                    <path d="M8 11l0 5"></path>
                                    <path d="M8 8l0 .01"></path>
                                    <path d="M12 16l0 -5"></path>
                                    <path d="M16 16v-3a2 2 0 0 0 -4 0"></path>
                                 </svg>
						</a></li>
					</ul>
					<div class="profile-name">
						<h2>Jason Alexander</h2>
						<div class="profile-bio">
							I'm JavaScript full-stack engineer, love working with <em>React</em>
							and <em>Node.js</em>.
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="profile-wrapper">
				<div class="profile">
					<div class="profile-image">
						<img src="/img/logo-removebg-preview.png" alt="Profile">
					</div>
					<ul class="social-icons">
						<li><a href="#instagram" title="Instagram"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="2" y="2" width="20"
										height="20" rx="5" ry="5"></rect>
                                    <path
										d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                    <line x1="17.5" y1="6.5" x2="17.51"
										y2="6.5"></line>
                                </svg>
						</a></li>
						<li><a href="#twitter" title="Twitter"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-twitter">
                                    <path
										d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 
                                            10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5
                                            4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z">
                                    </path>
                                </svg>
						</a></li>
						<li><a href="#threads" title="Threads"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M19 7.5c-1.333 -3 -3.667 -4.5 -7 -4.5c-5 0 -8 2.5 -8 9s3.5 9 8 9s7 -3 7
                                            -5s-1 -5 -7 -5c-2.5 0 -3 1.25 -3 2.5c0 1.5 1 2.5 2.5 2.5c2.5 0 3.5 -1.5 
                                            3.5 -5s-2 -4 -3 -4s-1.833 .333 -2.5 1">
                                    </path>
                                 </svg>
						</a></li>
						<li><a href="#linkedin" title="Linkedin"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M4 4m0 2a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-12a2 
                                             2 0 0 1 -2 -2z">
                                    </path>
                                    <path d="M8 11l0 5"></path>
                                    <path d="M8 8l0 .01"></path>
                                    <path d="M12 16l0 -5"></path>
                                    <path d="M16 16v-3a2 2 0 0 0 -4 0"></path>
                                 </svg>
						</a></li>
					</ul>
					<div class="profile-name">
						<h2>Jason Alexander</h2>
						<div class="profile-bio">
							I'm JavaScript full-stack engineer, love working with <em>React</em>
							and <em>Node.js</em>.
						</div>
					</div>
				</div>
			</div>
		</div>

	</main>

	<main style="display: flex; justify-content: space-around;"
		class="container my-3">






		<div class="container">
			<div class="profile-wrapper">
				<div class="profile">
					<div class="profile-image">
						<img src="/img/logo-removebg-preview.png" alt="Profile">
					</div>
					<ul class="social-icons">
						<li><a href="#instagram" title="Instagram"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="2" y="2" width="20"
										height="20" rx="5" ry="5"></rect>
                                    <path
										d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                    <line x1="17.5" y1="6.5" x2="17.51"
										y2="6.5"></line>
                                </svg>
						</a></li>
						<li><a href="#twitter" title="Twitter"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-twitter">
                                    <path
										d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 
                                            10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5
                                            4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z">
                                    </path>
                                </svg>
						</a></li>
						<li><a href="#threads" title="Threads"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M19 7.5c-1.333 -3 -3.667 -4.5 -7 -4.5c-5 0 -8 2.5 -8 9s3.5 9 8 9s7 -3 7
                                            -5s-1 -5 -7 -5c-2.5 0 -3 1.25 -3 2.5c0 1.5 1 2.5 2.5 2.5c2.5 0 3.5 -1.5 
                                            3.5 -5s-2 -4 -3 -4s-1.833 .333 -2.5 1">
                                    </path>
                                 </svg>
						</a></li>
						<li><a href="#linkedin" title="Linkedin"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M4 4m0 2a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-12a2 
                                             2 0 0 1 -2 -2z">
                                    </path>
                                    <path d="M8 11l0 5"></path>
                                    <path d="M8 8l0 .01"></path>
                                    <path d="M12 16l0 -5"></path>
                                    <path d="M16 16v-3a2 2 0 0 0 -4 0"></path>
                                 </svg>
						</a></li>
					</ul>
					<div class="profile-name">
						<h2>Jason Alexander</h2>
						<div class="profile-bio">
							I'm JavaScript full-stack engineer, love working with <em>React</em>
							and <em>Node.js</em>.
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="profile-wrapper">
				<div class="profile">
					<div class="profile-image">
						<img src="/img/logo-removebg-preview.png" alt="Profile">
					</div>
					<ul class="social-icons">
						<li><a href="#instagram" title="Instagram"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="2" y="2" width="20"
										height="20" rx="5" ry="5"></rect>
                                    <path
										d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                    <line x1="17.5" y1="6.5" x2="17.51"
										y2="6.5"></line>
                                </svg>
						</a></li>
						<li><a href="#twitter" title="Twitter"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-twitter">
                                    <path
										d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 
                                            10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5
                                            4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z">
                                    </path>
                                </svg>
						</a></li>
						<li><a href="#threads" title="Threads"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M19 7.5c-1.333 -3 -3.667 -4.5 -7 -4.5c-5 0 -8 2.5 -8 9s3.5 9 8 9s7 -3 7
                                            -5s-1 -5 -7 -5c-2.5 0 -3 1.25 -3 2.5c0 1.5 1 2.5 2.5 2.5c2.5 0 3.5 -1.5 
                                            3.5 -5s-2 -4 -3 -4s-1.833 .333 -2.5 1">
                                    </path>
                                 </svg>
						</a></li>
						<li><a href="#linkedin" title="Linkedin"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M4 4m0 2a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-12a2 
                                             2 0 0 1 -2 -2z">
                                    </path>
                                    <path d="M8 11l0 5"></path>
                                    <path d="M8 8l0 .01"></path>
                                    <path d="M12 16l0 -5"></path>
                                    <path d="M16 16v-3a2 2 0 0 0 -4 0"></path>
                                 </svg>
						</a></li>
					</ul>
					<div class="profile-name">
						<h2>Jason Alexander</h2>
						<div class="profile-bio">
							I'm JavaScript full-stack engineer, love working with <em>React</em>
							and <em>Node.js</em>.
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="profile-wrapper">
				<div class="profile">
					<div class="profile-image">
						<img src="/img/logo-removebg-preview.png" alt="Profile">
					</div>
					<ul class="social-icons">
						<li><a href="#instagram" title="Instagram"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="2" y="2" width="20"
										height="20" rx="5" ry="5"></rect>
                                    <path
										d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                    <line x1="17.5" y1="6.5" x2="17.51"
										y2="6.5"></line>
                                </svg>
						</a></li>
						<li><a href="#twitter" title="Twitter"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-twitter">
                                    <path
										d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 
                                            10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5
                                            4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z">
                                    </path>
                                </svg>
						</a></li>
						<li><a href="#threads" title="Threads"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M19 7.5c-1.333 -3 -3.667 -4.5 -7 -4.5c-5 0 -8 2.5 -8 9s3.5 9 8 9s7 -3 7
                                            -5s-1 -5 -7 -5c-2.5 0 -3 1.25 -3 2.5c0 1.5 1 2.5 2.5 2.5c2.5 0 3.5 -1.5 
                                            3.5 -5s-2 -4 -3 -4s-1.833 .333 -2.5 1">
                                    </path>
                                 </svg>
						</a></li>
						<li><a href="#linkedin" title="Linkedin"> <svg
									xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
									fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none"
										d="M0 0h24v24H0z" fill="none"></path>
                                    <path
										d="M4 4m0 2a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-12a2 
                                             2 0 0 1 -2 -2z">
                                    </path>
                                    <path d="M8 11l0 5"></path>
                                    <path d="M8 8l0 .01"></path>
                                    <path d="M12 16l0 -5"></path>
                                    <path d="M16 16v-3a2 2 0 0 0 -4 0"></path>
                                 </svg>
						</a></li>
					</ul>
					<div class="profile-name">
						<h2>Jason Alexander</h2>
						<div class="profile-bio">
							I'm JavaScript full-stack engineer, love working with <em>React</em>
							and <em>Node.js</em>.
						</div>
					</div>
				</div>
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
				<li class="nav-item"><a class="nav-link text-white" href="#">Publicaciones</a>
				</li>
				<li class="nav-item "><a class="nav-link text-white" href="#">Empresas</a>
				</li>
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