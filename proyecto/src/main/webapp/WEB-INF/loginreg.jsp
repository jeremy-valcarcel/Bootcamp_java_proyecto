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
<title>Task Manager</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script type="text/javascript" src="/js/app.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
<body>

	<div class="container">

		<div class="row">

			<div class="col-4 offset-1">
				<h2>Register!</h2>

				<form:form method="POST" action="/registration"
					modelAttribute="user">
					<div>
						<form:label path="nombre">First Name:</form:label>
						<form:input type="text" path="nombre" />
						<form:errors class="text-danger form-control is-invalid" path="nombre" />
					</div>
					<div>
						<form:label path="email">Email:</form:label>
						<form:input type="email" path="email" />
						<form:errors class="text-danger form-control is-invalid" path="email" />
					</div>
					<div>
						<form:label path="password">Password:</form:label>
						<form:password path="password" />
						<form:errors class="text-danger form-control is-invalid" path="password" />
					</div>
					<div>
						<form:label path="passwordConfirmation">Password Confirmation:</form:label>
						<form:password path="passwordConfirmation" />
						<form:errors class="text-danger form-control is-invalid" path="passwordConfirmation" />
					</div>
					<input type="submit" value="Register!" />
				</form:form>
				<p class="text-success">
					<c:out value="${registro }"></c:out>
				</p>
			</div>

			<div class="col-4 offset-1">
				<h2>Login</h2>

				<form:form method="POST" action="/login" modelAttribute="login">
					<div>
						<form:label path="email">Email:</form:label>
						<form:input type="email" path="email" />
						<form:errors class="text-danger form-control is-invalid" path="email" />
					</div>
					<div>
						<form:label path="password">Password:</form:label>
						<form:password path="password" />
						<form:errors class="text-danger form-control is-invalid" path="password" />
					</div>

					<input type="submit" value="Login!" />
				</form:form>
			</div>
		</div>


	</div>


</body>
</html>