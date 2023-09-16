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
<title> Agregar Titulo </title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

</head>
<body>

<div class="container">

		<h1>
			Welcome,
			<c:out value="${usuario.nombre }"></c:out>
		</h1>
		<div class="text-end">
			<a href="/logout">Logout</a>
		</div>

		<hr>
		<h3>Here are some events in your state:</h3>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Name</th>
					<th>Date</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${publicacionEmpresa }" var="publicacion">
					<tr>
						<td><c:out value="${publicacion.tamano }"></c:out></td>
						<td><c:out value="${publicacion.descripcion }"></c:out></td>
						<td> <a href="publicaciones/${publicacion.id}">comentario</a> </td>

					</tr>

				</c:forEach>

			</tbody>
		</table>
</div>
	
</body>
</html>