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
<link rel="stylesheet" href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script type="text/javascript" src="/js/app.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

</head>
<body
	style="background-color: #e7f4fc; display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">


	<header
		style="background-color: #007fffa1; display: flex; justify-content: space-between;">

		<div>
			<a href="/"><img alt="logo" src="img/logo-removebg-preview.png"
				class="d-inline-block" style="height: 100px;"></a>
		</div>

		<nav class="my-auto">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link active text-white"
					aria-current="page" href="/">Inicio</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/publicaciones">Publicaciones</a>
				</li>
				<li class="nav-item "><a class="nav-link text-white" href="/empresa">Empresas</a>
				</li>
				<li class="nav-item"><a class="nav-link text-white" href="/nosotros">Nosotros</a></li>
			</ul>

		</nav>

		<div class="my-auto">
			<p class="d-inline-block my-auto">
				<a href="/sesion" class="btn btn-outline-light">Inicio Sesion</a>
			</p>
			<p class="d-inline-block my-auto me-3">
				<a href="/registro" class="btn btn-outline-light">Registrarse</a>
			</p>
		</div>
	</header>


	<main class="container">
		<img alt="fondo" src="img/fondo-perfil.png" style="width: 100%;">
		<img alt="foto perfil" src="img/perfil.jpeg"
			style="border-radius: 300px; height: 13em; position: relative; top: -10em">

		<div class="row">

			<aside class="col-4 text-center">
				<h2>Nombre del negocio</h2>

				<p class="btn btn-success d-block col-6 mx-auto" >Editar Perfil</p>
				<p class="btn btn-success d-block col-6 mx-auto" >Nuevo Aviso</p>
				<p class="btn btn-success d-block col-6 mx-auto" >Cancelar Aviso</p>
				<p class="btn btn-success d-block col-6 mx-auto" >Privacidad</p>
				<p class="btn btn-success d-block col-6 mx-auto" >Cerrar Sesion</p>
			</aside>
			<section class="col-8">
				<article style="border: solid; 1px;">
				
				<h2 style="background-color: #12a903" class="text-center">Nueva Publicacion</h2>

					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Optio numquam, saepe repellat perspiciatis rerum magnam, sapiente
						vel molestiae cum beatae error corporis eum atque eveniet!</p>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Facere mollitia vero odio quos error dolorem numquam, nemo
						explicabo modi similique! Eveniet porro exercitationem autem
						ratione.</p>
				</article>
</section>
</div>
</main>

 <footer style="background-color: #152C49; display: flex; justify-content: space-between; " > 
		<div>
		<img alt="logo" src="img/logo-removebg-preview.png"
				class="d-inline-block" style="height: 100px;">
		</div>
		
		<div class="my-1 mx-auto ">
				<ul class="nav">
				<li class="nav-item"> 
					<a class="nav-link  text-white"aria-current="page" href="#">Ir arriba</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
				</li>
				<li class="nav-item">
					<a class="nav-link text-white" href="#">Publicaciones</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
				</li>
				<li class="nav-item ">
					<a class="nav-link text-white" href="#">Empresas</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
				</li>
				<li class="nav-item">
					<a class="nav-link disabled text-white" aria-disabled="true">Nosotros</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
					<a class="nav-link text-white" href="#">¿Cómo son sus vidas?</a>
				</li>
			</ul>
		</div>
	</footer>


</body>
</html>