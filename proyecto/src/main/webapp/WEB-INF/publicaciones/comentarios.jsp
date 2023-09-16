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

	<div class="container row">

		<a href="/perfil"> Go back</a>
		
		<h3>
				Publicador:
				<c:out value="${publicacion.emisor.nombre }"></c:out>
				<c:out value="${publicacion.empresaEmisora.nombre }"></c:out>
		</h3>
		<h1>
			<c:out value="${publicacion.descripcion }"></c:out>
		</h1>
		
		<div class="col-6">
			<h3>Message wall</h3>
<!-- 			<div> -->
<%-- 			<c:foreach items=> --%>
<%-- 			</c:foreach> --%>
<!-- 			</div> -->
			
			<form action="/publicaciones/${publicacion.id }/comentario" method="post"> 
			<div class="form-group">
					<label> Agregar comentario</label>
					<textarea name="comment" class="form-control"> </textarea>
					<button> Enviar Comentario</button>
				</div>
			</form>

		</div>
		
		<div class="col-6">
		<c:forEach items="${publicacion.comentarios }" var="comenta">
		<p> <c:out value="${comenta.contenido }"></c:out> </p>
		</c:forEach>
		</div>


	</div>

</body>
</html>