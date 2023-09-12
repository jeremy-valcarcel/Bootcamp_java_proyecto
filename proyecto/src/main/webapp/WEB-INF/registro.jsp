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
<title>Registro</title>

<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

<link rel="stylesheet" type="text/css" href="css/styleRegistro.css">


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


</head>
<body>
<section class="vh-100" style="background-color: #99b317;">
		<article class="card-body mx-auto border border-dark bg-light " style="max-width: 400px;">
			<h4 class="card-title mt-3 text-center">¡Crea tu cuenta de <span class="logo-font text-success">Eco</span>Rescate!</h4>
			<p class="text-center">Comience con su cuenta gratuita</p>			
			<form:form method="POST" action="/registro" modelAttribute="usuario">
			
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-user"></i> </span>
					</div>
					<form:input path="nombre" class="form-control" placeholder="Nombre de persona o empresa" type="text"/>
				</div>
				
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
					</div>
					<form:input path="email" class="form-control" placeholder="Email" type="email"/>
				</div>
				
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-phone"></i> </span>
					</div>
					<form:select path="prefijo" class="custom-select" style="max-width: 120px;">
						<option selected="" value="54">+54</option>
						<option value="598">+598</option>
					</form:select> 
					<form:input path="numero" class="form-control" placeholder="numero de telefono" type="number"/>
				</div>
				
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-building"></i> </span>
					</div>
					<form:select  path="categoria" class="form-control">
						<option selected="">Selecciona tipo de cuenta</option>
						<option value="persona">Persona</option>
						<option value="empresa">Empresa</option>
					</form:select>
				</div>
				
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-lock"></i> </span>
					</div>
					<form:input path="contraseña" class="form-control" placeholder="Crea una contraseña" type="password"/>
				</div>
				
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-lock"></i> </span>
					</div>
					<form:input path="confirmarContraseña" class="form-control" placeholder="Repita la contraseña" type="password"/>
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-success btn-block"> Crear cuenta</button>
				</div>
				
				<p class="text-center"> Ya tienes una cuenta? <a href="../sesion">Inicia sesión</a> </p>
				
			</form:form>
		</article>
</section>
</body>
</html>