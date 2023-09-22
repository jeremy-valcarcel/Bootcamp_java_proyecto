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
<title>ECORESCATE- crear publicación</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<style>
.header-green {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: 80px;
	font-family: 'Source Sans Pro', sans-serif;
}
/* BOTÓN DE REGISTRO */
.inicio .action-button {
	position: relative;
	top: -35px;
	left: 50px; background : transparent;
	border: 1px solid rgb(255, 255, 255);
	border-radius: 40px;
	color: #fff;
	background: transparent;
	background: transparent
}
/* BOTÓN DE REGISTRO */
</style>
</head>
<body class="header-green" style="padding: 77px;">

	<%-- 	<c:if test="${usuario.id == usuario.id }"> --%>
	<!-- 		<div class="container mx-auto col-3"> -->
	<!-- 			<h1>Nueva publicacion</h1> -->
	<%-- 			<form:form action="/crear/publicacion" method="POST" --%>
	<%-- 				modelAttribute="publicacion"> --%>
	<!-- 				<div class="form-group"> -->
	<%-- 					<form:input type="hidden" path="emisor" value="${usuario.id}" /> --%>
	<%-- 					<form:input type="hidden" path="empresaEmisora" --%>
	<%-- 						value="${empresa.id}" /> --%>
	<!-- 					<div class="form-group"> -->
	<%-- 						<form:label path="categoria" class="col-lg-4 control-label">Categoria:</form:label> --%>
	<%-- 						<form:select path="categoria" type="text" --%>
	<%-- 							class="col-lg-4 form-control" items="${titulo}" --%>
	<%-- 							itemLabel="categoria"> --%>
	<%-- 						</form:select> --%>

	<!-- 					</div> -->
	<!-- 					<div class="form-group"> -->
	<%-- 						<form:label class="form-label" path="descripcion">Descripcion: </form:label> --%>
	<%-- 						<form:errors class="text-danger" path="descripcion" /> --%>
	<%-- 						<form:input type="text" class="form-control" path="descripcion" /> --%>

	<!-- 					</div> -->
	<!-- 					<div> -->
	<%-- 						<form:label class="form-label" path="tamano">Tamaño en KL del desecho: </form:label> --%>
	<%-- 						<form:errors class="form-control" path="tamano" /> --%>
	<%-- 						<form:input path="tamano" type="number" class="form-control" /> --%>

	<!-- 					</div> -->

	<!-- 				</div> -->
	<!-- 				<div class="my-2"> -->
	<!-- 					<button class="btn btn-success">Publicar</button> -->
	<!-- 					<a href="/perfil" class="btn btn-danger">Cancel</a> -->
	<!-- 				</div> -->

	<%-- 			</form:form> --%>
	<!-- 		</div> -->
	<%-- 	</c:if> --%>

	<c:if test="${usuario.id == usuario.id }">
		<section class="vh-200">
			<div class="inicio text-end">
				<span class="navbar-text"></span> <a
					class="btn btn-light action-button" role="button" href="/perfil">Volver
				</a>
			</div>
			<div class="container h-100">
				<div class="row justify-content-center align-items-center h-100">
					<div class="col-12 col-lg-9 col-xl-7">
						<div class="card shadow-2-strong card-registration"
							style="border-radius: 15px;">
							<div class="card-body p-4s p-md-5">
								<h3 class="fw-normal mb-3 pb-3 text-center"
									style="letter-spacing: 1px;">
									¡Crea una nueva<span class="text-success"> publicación</span>!
								</h3>
								<hr class="mb-4">
								<form:form action="/crear/publicacion" method="POST"
									modelAttribute="publicacion">

									<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">
										Publica tu <span class="text-success">aviso.</span>
									</h5>
									<div class="form-group">
										<form:input type="hidden" path="emisor" value="${usuario.id}" />
										<form:input type="hidden" path="empresaEmisora"
											value="${empresa.id}" />
										<div class="form-group my-2">
											<form:label path="categoria"
												class="col-lg-4 control-label my-2">Categoría:</form:label>
											<form:select path="categoria" type="text"
												class="col-lg-4 form-control" items="${titulo}"
												itemLabel="categoria">
											</form:select>

										</div>
										<div class="form-group my-2">
											<form:label class="form-label" path="descripcion">Descripción: </form:label>
											<form:errors class="text-danger" path="descripcion" />
											<form:input type="text" class="form-control"
												path="descripcion" />

										</div>
										<div>
											<form:label class="form-label" path="tamano">Tamaño (kilográmos): </form:label>
											<form:errors class="form-control" path="tamano" />
											<form:input path="tamano" type="number" class="form-control" />

										</div>

									</div>
									<div class="my-3 text-center">
										<button class="btn btn-success">Publicar</button>
										<a href="/perfil" class="btn btn-danger">Cancelar</a>
									</div>

								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</c:if>

</body>
</html>