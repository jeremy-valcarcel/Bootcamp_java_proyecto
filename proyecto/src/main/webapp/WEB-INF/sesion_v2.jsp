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
<title>Sesion</title>

<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

<link rel="stylesheet"  type="text/css" href="style.css">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
<section class="vh-100" style="background-color: #99f5f8;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="/img/imagen_sesion.jpg" alt="imagen sesion" class="img-fluid mt-5 ml-4" style="border-radius: 1rem 0 0 2rem;height:400px" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

				<p><form:errors path="usuario.*" class="text-danger"/></p>
                <form method="POST" action="/sesion" modelAttribute="usuario">
                
                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">
                    	<p>¡Bienvenido a <span class="logo-font text-success">Eco</span>Rescate!</p>
                  </h5>

                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example17">Email:</label>
                    <input type="email" id="form2Example17" class="form-control form-control-lg" placeholder="Ingresa tu email">
                  </div>

                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example27">Contraseña:</label>
                    <input type="password" id="form2Example27" class="form-control form-control-lg" placeholder="ingresa tu contraseña"/>
                  </div>

                  <div class="pt-1 mb-4">
                    <button class="btn btn-success btn-lg btn-block" type="button">Iniciar</button>
                  </div>

                  <a class="small text-muted" href="#!">Olvidaste la contraseña?</a>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>