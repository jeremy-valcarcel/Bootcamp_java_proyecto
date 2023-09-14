package com.bootcamp.proyecto.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/sesion")
	public String sesion() {
		return "sesion_v2.jsp";
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

	@GetMapping("/publicacionesPersonas")
	public String publicacionesPersonas() {
		return "publicacionesPersonas.jsp";
	}
	@GetMapping("/publicacionesEmpresas")
	public String publicacionesEmpresas() {
		return "publicacionesEmpresas.jsp";
	}
	
	
	@GetMapping("/perfil")
	public String perfil() {
		return "perfil_v2.jsp";
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
