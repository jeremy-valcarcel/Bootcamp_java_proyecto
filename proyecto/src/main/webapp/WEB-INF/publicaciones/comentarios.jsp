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
<title>Agregar Titulo</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<style>
.container {
	max-width: 800px;
	margin: 20px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
}

.post-container {
	margin-top: 20px;
}

.post {
	background-color: #fff;
	padding: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-bottom: 20px;
}

h2 {
	margin: 0;
	color: #333;
}

p {
	margin: 10px 0;
}

.comment-button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 5px 10px;
	border-radius: 5px;
	cursor: pointer;
}

.comments {
	margin-top: 10px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #f9f9f9;
}

.comment {
	background-color: #fff;
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 10px;
	margin-bottom: 10px;
}

.comment h3 {
	margin: 0;
	color: #555;
}
</style>
</head>
<body>



	<div class="container row">
		<a href="/perfil"> Go back</a>
	</div>
	<div class="container">
		<div class="post-container">
			<!-- Publicación 1 -->
			<div class="post">
				<h2>
					<c:out
						value="${publicacion.emisor.nombre } ${publicacion.emisor.apellido }"></c:out>
					ha publicado:
					<c:out value="${publicacion.empresaEmisora.nombre }"></c:out>
				</h2>
				<h1 class="my-2">
					<c:out value="${publicacion.descripcion }"></c:out>
					.
				</h1>
				<!-- Comentarios de la Publicación 1 -->
				<div class="comments">
					<div class="comment">
						<c:forEach items="${publicacion.comentarios }" var="comenta">
							<h5>
								<c:out value="${comenta.usuarioCreador.nombre }"></c:out>
								<c:out value="${comenta.empresaCreador.nombre }"></c:out>
								ha comentado:
							</h5>
							<p>
								<c:out value="${comenta.contenido }"></c:out>
							</p>
						</c:forEach>
					</div>
				</div>
				<div class="col-7">

					<form action="/publicaciones-${publicacion.id }-comentario"
						method="post">
						<div class="form-group my-3">
							<label> Agregar un comentario...</label>
							<p class="text-danger">
								<c:out value="${error }"></c:out>
							</p>
							<textarea name="comment" class="form-control"> </textarea>
							<button class="my-2">Enviar Comentario</button>
						</div>
					</form>

				</div>

			</div>
		</div>
	</div>

</body>
</html>