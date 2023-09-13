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
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<style>
header, footer {
	background-color: #82e462;
	display: flex;
	justify-content: space-between;
	padding: 5px 10px;
	align-items: center;
}
.header-green {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: -50px;
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
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
</style>
</head>
<body
	style="background-color: #e3f3e4; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">

	<header class="header-green">

		<div>
			<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
				class="d-inline-block" style="height: 85px">
		</div>
		<nav class="navbar navbar-expand-lg">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active text-white"
					aria-current="page" href="/">Inicio</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/publicaciones">Publicaciones</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/empresa">Empresas</a></li>

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
	<div class="col-12 m-3">
		<h3 class="text-left">Preguntas Frecuentes</h3>

		<div class="accordion" id="faqAccordion">
			<!-- PREGUNTA UNO -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading1">
					<button class="accordion-button" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse1"
						aria-expanded="true" aria-controls="faqCollapse1">�Puedo
						aportar otro residuo que no sea org�nico?</button>
				</h2>
				<div id="faqCollapse1" class="accordion-collapse collapse show"
					aria-labelledby="faqHeading1" data-bs-parent="#faqAccordion">
					<div class="accordion-body">No, nuestra organizaci�n solo
						trabaja con residuos org�nicos.</div>
				</div>
			</div>

			<!-- PREGUNTA DOS -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading2">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse2"
						aria-expanded="false" aria-controls="faqCollapse2">�La
						organizaci�n tiene fines de lucro?</button>
				</h2>
				<div id="faqCollapse2" class="accordion-collapse collapse"
					aria-labelledby="faqHeading2" data-bs-parent="#faqAccordion">
					<div class="accordion-body">No tenemos fines lucrativos,
						cualquier persona puede recibir y otorgar los desechos de manera
						gratuita.</div>
				</div>
			</div>

			<!-- PREGUNTA TRES -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading3">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse3"
						aria-expanded="false" aria-controls="faqCollapse3">�Tengo
						alguna manera de publicitar mis productos creados a base de los
						residuos?</button>
				</h2>
				<div id="faqCollapse3" class="accordion-collapse collapse"
					aria-labelledby="faqHeading3" data-bs-parent="#faqAccordion">
					<div class="accordion-body">S�, tenemos un espacio de
						publicidad, donde cualquier interesado puede publicitar sus
						productos; esta opci�n lleva un costo.</div>
				</div>
			</div>

			<!-- PREGUNTA CUATRO -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading4">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse4"
						aria-expanded="false" aria-controls="faqCollapse4">�Qu�
						diferencia hay entre compostaje y reciclaje de materiales
						org�nicos?</button>
				</h2>
				<div id="faqCollapse4" class="accordion-collapse collapse"
					aria-labelledby="faqHeading4" data-bs-parent="#faqAccordion">
					<div class="accordion-body">El compostaje produce compost,
						mientras que el reciclaje de materiales org�nicos busca utilizar
						estos materiales de manera m�s eficiente para obtener energ�a o
						productos �tiles.</div>
				</div>
			</div>

			<!-- PREGUNTA CINCO -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading5">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse5"
						aria-expanded="false" aria-controls="faqCollapse5">�Cu�les
						son los errores comunes que debemos evitar al reciclar org�nicos?</button>
				</h2>
				<div id="faqCollapse5" class="accordion-collapse collapse"
					aria-labelledby="faqHeading5" data-bs-parent="#faqAccordion">
					<div class="accordion-body">Algunos errores comunes a evitar
						incluyen la inclusi�n de materiales no org�nicos, falta de
						aireaci�n adecuada, y mantener un equilibrio de humedad
						incorrecto.</div>
				</div>
			</div>

			<!-- PREGUNTA SEIS -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading6">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse6"
						aria-expanded="false" aria-controls="faqCollapse6">�C�mo
						puedo promover el reciclaje org�nico en mi empresa o lugar de
						trabajo?</button>
				</h2>
				<div id="faqCollapse6" class="accordion-collapse collapse"
					aria-labelledby="faqHeading6" data-bs-parent="#faqAccordion">
					<div class="accordion-body">Para promover el reciclaje
						org�nico en tu empresa, puedes asegurarte de que haya contenedores
						espec�ficos para materiales org�nicos en �reas de almuerzo y
						cocina, fomentar la reducci�n de desperdicios org�nicos y
						considerar implementar un sistema de recompensas o reconocimiento
						para motivar a los empleados a participar activamente en el
						reciclaje org�nico.</div>
				</div>
			</div>

			<!-- PREGUNTA SEIS -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading6">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse6"
						aria-expanded="false" aria-controls="faqCollapse6">�C�mo
						puedo promover el reciclaje org�nico en mi empresa o lugar de
						trabajo?</button>
				</h2>
				<div id="faqCollapse6" class="accordion-collapse collapse"
					aria-labelledby="faqHeading6" data-bs-parent="#faqAccordion">
					<div class="accordion-body">Para promover el reciclaje
						org�nico en tu empresa, puedes asegurarte de que haya contenedores
						espec�ficos para materiales org�nicos en �reas de almuerzo y
						cocina, fomentar la reducci�n de desperdicios org�nicos y
						considerar implementar un sistema de recompensas o reconocimiento
						para motivar a los empleados a participar activamente en el
						reciclaje org�nico.</div>
				</div>
			</div>

			<!-- PREGUNTA SEIS -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading6">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse6"
						aria-expanded="false" aria-controls="faqCollapse6">�C�mo
						puedo promover el reciclaje org�nico en mi empresa o lugar de
						trabajo?</button>
				</h2>
				<div id="faqCollapse6" class="accordion-collapse collapse"
					aria-labelledby="faqHeading6" data-bs-parent="#faqAccordion">
					<div class="accordion-body">Para promover el reciclaje
						org�nico en tu empresa, puedes asegurarte de que haya contenedores
						espec�ficos para materiales org�nicos en �reas de almuerzo y
						cocina, fomentar la reducci�n de desperdicios org�nicos y
						considerar implementar un sistema de recompensas o reconocimiento
						para motivar a los empleados a participar activamente en el
						reciclaje org�nico.</div>
				</div>
			</div>

			<!-- PREGUNTA SEIS -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading6">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse6"
						aria-expanded="false" aria-controls="faqCollapse6">�C�mo
						puedo promover el reciclaje org�nico en mi empresa o lugar de
						trabajo?</button>
				</h2>
				<div id="faqCollapse6" class="accordion-collapse collapse"
					aria-labelledby="faqHeading6" data-bs-parent="#faqAccordion">
					<div class="accordion-body">Para promover el reciclaje
						org�nico en tu empresa, puedes asegurarte de que haya contenedores
						espec�ficos para materiales org�nicos en �reas de almuerzo y
						cocina, fomentar la reducci�n de desperdicios org�nicos y
						considerar implementar un sistema de recompensas o reconocimiento
						para motivar a los empleados a participar activamente en el
						reciclaje org�nico.</div>
				</div>
			</div>
		</div>
	</div>

	<footer
		style="background-color: #152C49; display: flex; justify-content: space-between; align-items: center; padding: 10px; margin: 0;">
		<div style="display: flex; align-items: center;">
			<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
				class="d-inline-block" style="height: 100px;">
			<p class="text-white ml-2 mb-0">EcoRescate</p>
		</div>

		<div class="my-auto">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link active text-white"
					aria-current="page" href="/">Inicio</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="/publicaciones">Publicaciones</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="/empresa">Empresas</a></li>
				<li class="nav-item"><a class="nav-link disabled text-white"
					aria-disabled="true">Nosotros</a></li>
			</ul>
		</div>
	</footer>

</body>
</html>