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

<c:if test="${usuario.id == usuario.id }">
<div class="container mx-auto col-3">
		<h1>Nueva publicacion</h1>
		<form:form action="/crear/publicacion" method="POST" modelAttribute="publicacion">
			<div class="form-group">
				<form:input type="hidden" path="emisor" value="${usuario.id}" />
				<form:input type="hidden" path="empresaEmisora" value="${empresa.id}" />
				<div class="form-group">
						<form:label path="categoria" class="col-lg-4 control-label" >Categoria:</form:label>
						<form:select path="categoria" type="text" class="col-lg-4 form-control" items="${titulo}" itemLabel="categoria"  >
						</form:select>

					</div>
				<div class="form-group">
					<form:label class="form-label" path="descripcion">Descripcion: </form:label>
					<form:errors class="text-danger" path="descripcion" />
					<form:input type="text" class="form-control" path="descripcion" />

				</div>
					<div>
						<form:label class="form-label" path="tamano">Tamaño en KL del desecho: </form:label>
						<form:errors class="form-control" path="tamano" />
						<form:input path="tamano" type="number" class="form-control" />

					</div>

				</div>
			<div class="my-2">
				<button class="btn btn-success">Publicar</button>
				<a href="/perfil" class="btn btn-danger">Cancel</a>
			</div>

		</form:form>
	</div>
</c:if>
	
</body>
</html>