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
<title>AQUI EL TITULO DE TU PLNATILLA</title>
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
}

.swiper-slide img {
	display: block;
	width: 100%;
}

.header-green {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: -50px;
	font-family: 'Source Sans Pro', sans-serif;
}

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
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/">Inicio</a></li>
				<li class="nav-item"><a class="nav-link" href="/publicaciones">Publicaciones</a></li>
				<li class="nav-item"><a class="nav-link" href="/empresas">Empresas</a></li>
			</ul>
			<div class="dropdown nav-item">
				<span>Nosotros</span>
				<div class="dropdown-content">
					<a href="/nosotros">¿Quienes somos?</a> <a href="/reciclaje">Reciclaje
						orgánico</a> <a href="/preguntasFrecuentes">Preguntas frecuentes</a>
				</div>
			</div>
		</nav>
		<div class="register">
			<a class="btn btn-light action-button" role="button" href="/logout">Cerrar
				sesión</a> <a href="/perfil" class="d-inline-block my-auto me-2"> <img
				alt="Usuario" src="img/usuario.png" class="d-inline-block"
				style="height: 60px;">
			</a>

		</div>
	</header>


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

</body>
</html>