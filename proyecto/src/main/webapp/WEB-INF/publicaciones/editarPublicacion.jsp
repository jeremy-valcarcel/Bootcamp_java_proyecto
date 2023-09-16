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

<body>

<c:if test="${usuario.id == usuario.id }">
	<div class="container">
	<h1> <c:out value="${evento.nombre }"> </c:out> </h1>
	<br />
	<h3> Edit event</h3>
		<div class="col-6">
			<form:form method="POST" action="/Publicacion/${publicacion.id}/edicion"
				modelAttribute="publicacion">
				<input type="hidden" name="_method" value="put" />
				<form:input type="hidden" path="emisor" value="${usuario.id}" />
				<div>
					<form:label path="descripcion">Descripcion:</form:label>
					<form:input type="text" path="descripcion" />
					<form:errors class="text-danger" path="descripcion" />
				</div>
				<div>
					<form:label path="tamano">Cantidad:</form:label>
					<form:input type="number" path="tamano" />
					<form:errors class="text-danger" path="tamano" />
				</div>
				<input type="submit" value="Edit Event!" />
			</form:form>
		</div>
	</div>
	</c:if>
	
	
<%-- 	<c:if test="${empresa.id == empresa.id }"> --%>
<!-- 		<div class="container"> -->
<%-- 	<h1> <c:out value="${evento.nombre }"> </c:out> </h1> --%>
<!-- 	<br /> -->
<!-- 	<h3> Edit event</h3> -->
<!-- 		<div class="col-6"> -->
<%-- 			<form:form method="POST" action="/publicacion/${publicacion.id}/edicion" --%>
<%-- 				modelAttribute="publicacion"> --%>
<!-- 				<input type="hidden" name="_method" value="put" /> -->
<%-- 				<form:input type="hidden" path="empresaEmisora" value="${empresa.id}" /> --%>
<!-- 				<div> -->
<%-- 					<form:label path="descripcion">Descripcion:</form:label> --%>
<%-- 					<form:input type="text" path="descripcion" /> --%>
<%-- 					<form:errors class="text-danger" path="descripcion" /> --%>
<!-- 				</div> -->
<!-- 				<div> -->
<%-- 					<form:label path="tamano">Cantidad:</form:label> --%>
<%-- 					<form:input type="number" path="tamano" /> --%>
<%-- 					<form:errors class="text-danger" path="tamano" /> --%>
<!-- 				</div> -->
<!-- 				<input type="submit" value="Edit Event!" /> -->
<%-- 			</form:form> --%>
<!-- 		</div> -->
<!-- 	</div> -->
<%-- 	</c:if> --%>

</body>
	
</body>
</html>