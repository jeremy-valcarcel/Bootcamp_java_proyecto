package com.bootcamp.proyecto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.bootcamp.proyecto.models.Empresas;
import com.bootcamp.proyecto.models.Usuario;
import com.bootcamp.proyecto.services.EmpresaService;
import com.bootcamp.proyecto.services.RolesServices;
import com.bootcamp.proyecto.services.UsuarioService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	
	//Services ------------------------------------------------------------------------------------
	private final UsuarioService userServ;
	private final EmpresaService empresaServ;
	private final RolesServices rolesServices;
	public MainController(UsuarioService uS, EmpresaService eS , RolesServices rS) {
		this.userServ = uS;
		this.empresaServ = eS;
		this.rolesServices = rS;
	}
	
	//PaginaPrincipalSinInicioDeSesion-------------------------------------------------------------------------
	@GetMapping("/")
	public String IndexGeneral() {
		return "index.jsp";
	}
	
	//PaginaPrincipalConInicioDeSesion-------------------------------------------------------------------------
	@GetMapping("/Inicio")
	public String indexSesionIniciada( @ModelAttribute("Usuario") Usuario Usuario,@ModelAttribute("empresa") Empresas Empresas, BindingResult resultado,
			HttpSession sesion, Model viewModel) {
		
		// validar si la sesion del usuario o empresa esta activa
		Long empresasId =  (Long) sesion.getAttribute("empresaID");
		Long userId =  (Long) sesion.getAttribute("userID");
		if(userId == null && empresasId == null ) {
			return "redirect:/";
		}
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		Usuario usuario = userServ.encontrarUserPorId(userId);
		viewModel.addAttribute("empresa", empresa);
		viewModel.addAttribute("usuario", usuario);
		
		return "indexSesionIniciada.jsp";
	}

	//Perfil-------------------------------------------------------------------------
	@GetMapping("/perfil")
	public String perfil() {
		return "perfil_v2.jsp";
	}
	@GetMapping("/empresas")
	public String empresas() {
		return "empresas.jsp";
	}

	@GetMapping("/publicaciones")
	public String publicaciones() {
		return "publicaciones.jsp";
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
