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
</head>
<body>

	<div class="text-end">
		<a href="/logout">Cerrar sesion</a>
	</div>
	<div class="text-end">
		<a href="/perfil">Volver a perfil</a>
	</div>
	<div class="text-end">
		<a href="/Inicio">Volver a perfil</a>
	</div>

	<div class="container">

		<h3>Editar perfil</h3>
		<div class="col-6">
			<form:form method="POST" action="/perfil/${usuario.id}/edit"
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
				<div class="form-group">

					<form:label path="rol" class="col-lg-4 control-label">Rol:</form:label>
					<form:select path="rol" type="text" class="col-lg-4 form-control"
						items="${roles}" itemLabel="name">

					</form:select>

				</div>
				<input type="submit" value="Editar perfil" />
			</form:form>
		</div>
	</div>



</body>
</html>