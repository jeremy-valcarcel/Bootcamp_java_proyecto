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
<title>Registro usuario</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

</head>
<body>
<section class="vh-200" style="background-image: url(/imgs/Fondo-verde.jpg);">
	<div class="text-end">
		<a href="/">Volver a inicio</a>
	</div>
  <div class="container py-4 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4s p-md-5">
				<h2 class="text-center"><span style="font-family: 'Lucida Console';">Registro de </span>
				<span class="text-success"  style="font-family: 'Times New Roman';">ECO</span>
				<span  style="font-family: 'Lucida Console';">RESCATE</span></h2>
				<hr class="mb-4">
				<form:form method="POST" action="/Registro/Usuario"
					modelAttribute="user">
				<div class="row">
					<div class="col-md-6 mb-4">
						<div class="form-outline">
							<form:errors class="text-danger form-control is-invalid"
								path="nombre" />
							<form:label path="nombre" class="form-label">Nombre:</form:label>
							<form:input path="nombre" class="form-control form-control-lg border border-gray"
								placeholder="nombres"/>
						</div>
					</div>
					<div class="col-md-6 mb-4">
						<div class="form-outline">
						<form:errors class="text-danger form-control is-invalid"
							path="apellido" />
						<form:label path="apellido" class="form-label">Apellido:</form:label>
						<form:input path="apellido" class="form-control form-control-lg"
							placeholder="apellidos" />
						</div>
					</div>
					<div class="col-md-6 mb-4">
						<div class="form-outline">
							<form:errors class="text-danger form-control is-invalid"
								path="telefono" />
							<form:label path="telefono" class="form-label">Telefono:</form:label>
							<form:input type="tel" path="telefono"
								class="form-control form-control-lg" placeholder="telefono" />
						</div>
					</div>
					<div class="col-md-6 mb-4">
						<div class="form-outline">
							<form:errors class="text-danger form-control is-invalid"
								path="email" />
							<form:label path="email" class="form-label">Email:</form:label>
							<form:input type="email" path="email"
								class="form-control form-control-lg" placeholder="Name@example.com" />
						</div>
					</div>
					<div class="col-md-6 mb-4">
						<div class="form-outline">
							<form:errors class="text-danger form-control is-invalid"
								path="password" />
							<form:label path="password" class="form-label">Contraseña:</form:label>
							<form:password path="password" class="form-control form-control-lg"
								placeholder="minimo 8 caracteres" />
						</div>
					</div>
					<div class="col-md-6 mb-4">
						<div class="form-outline">
							<form:errors class="text-danger form-control is-invalid"
								path="passwordConfirmation" />
							<form:label path="passwordConfirmation"
								class="form-label">Confirmar Contraseña:</form:label>
							<form:password path="passwordConfirmation"
								class="form-control form-control-lg"
								placeholder="minimo 8 caracteres" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="rol" class="col-lg-4 control-label" >Rol:</form:label>
						<form:select path="rol" type="text" class="col-lg-4 form-control" items="${roles}" itemLabel="name"  >
						
						</form:select>

					</div>
					<div>
						<input type="submit" value="Registrarse" class="mt-4 w-100 btn btn-success" />
					</div>
				</div>
				</form:form>
				<p class="text-success">
					<c:out value="${registro }"></c:out>
				</p>
				<p class="text-center">
					Volver a <a href="/Login">inicio de sesion</a>
				</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>