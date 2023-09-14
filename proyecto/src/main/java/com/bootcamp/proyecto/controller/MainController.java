package com.bootcamp.proyecto.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/sesion")
	public String sesion() {
		return "sesion.jsp";
	}
	
	@GetMapping("/registro")
	public String registro() {
		return "registro.jsp";
	}
	
	@GetMapping("/")
	public String bienvenida() {
		return "index.jsp";
	}

	@GetMapping("/empresas")
	public String empresas() {
		return "empresas.jsp";
	}

	@GetMapping("/publicaciones")
	public String publicaciones() {
		return "publicaciones.jsp";
	}
	
	@GetMapping("/perfil")
	public String perfil() {
		return "perfil.jsp";
	}
	
	@GetMapping("/personas")
	public String infoPersonas() {
		return "InfoPersonas.jsp";
	}
	
	@GetMapping("/empresa")
	public String infoEmpresas() {
		return "InfoEmpresas.jsp";
	}
	
	@GetMapping("/nosotros")
	public String nosotros() {
		return"nosotros.jsp";
	}
	
	@GetMapping("/reciclaje")
	public String reciclaje() {
		return "reciclaje.jsp";
	}
	
	@GetMapping("/preguntasFrecuentes")
	public String preguntasFrecuentes() {
		return"preguntasFrec.jsp";
	}
	
	
	
}
