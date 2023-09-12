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

	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<header class="card-header">
						<h4 class="card-title mt-2">Registro</h4>
					</header>
					<article class="card-body">
						<form>
							<div class="form-row">
								<div class="col form-group">
									<label>Nombres</label> <input type="text" class="form-control" placeholder="">
								</div>
								<div class="col form-group">
									<label>Apellidos</label> <input type="text" class="form-control" placeholder=" ">
								</div>
							</div>
							<div class="form-group">
								<label>Email</label> 
								<input type="email" class="form-control" placeholder="">
							</div>
							<div class="form-group">
								<label class="form-check form-check-inline"> 
									<input class="form-check-input" type="radio" name="gender" value="option1"> 
									<span class="form-check-label">Mujer</span>
								</label>
								
								<label class="form-check form-check-inline"> 
									<input class="form-check-input" type="radio" name="gender" value="option2"> 
									<span class="form-check-label">Hombre</span>
								</label>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Ciudad</label> <input type="text" class="form-control">
								</div>
								<div class="form-group col-md-6">
									<label>Pais</label> 
									<select id="inputState" class="form-control">
										<option>Chile</option>
										<option selected="">Argentina</option>
										<option>Uruguay</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label>Crear contraseña</label> <input class="form-control" type="password">
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-success btn-block">Registrate</button>
							</div>
							<small class="text-muted">Argentina-Chile-Uruguay</small>
						</form>
					</article>
					<div class="border-top card-body text-center">Ya tienes una cuenta? <a href="/sesion">inicia sesion aqui</a></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>