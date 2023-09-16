package com.bootcamp.proyecto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.bootcamp.proyecto.models.DesechosPublicaciones;
import com.bootcamp.proyecto.models.Empresas;
import com.bootcamp.proyecto.models.Usuario;
import com.bootcamp.proyecto.services.DesechosPublicacionesService;
import com.bootcamp.proyecto.services.EmpresaService;
import com.bootcamp.proyecto.services.UsuarioService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {

	// Services
	// ------------------------------------------------------------------------------------
	private final UsuarioService userServ;
	private final EmpresaService empresaServ;
	private final DesechosPublicacionesService desechosPServ;

	public MainController(UsuarioService uS, EmpresaService eS, DesechosPublicacionesService dPS) {
		this.userServ = uS;
		this.empresaServ = eS;
		this.desechosPServ = dPS;
	}
	
	//PaginasSinInicioDeSesion------------------------------------------------------------------------
	
	@GetMapping("/")
	public String IndexGeneral() {
		return "/sinLogin/index.jsp";
	}
	
	@GetMapping("/nosotrosSinSesion")
	public String nosotrosSinSesion() {
		return"/sinLogin/nosotrosSin.jsp";
	}
	
	@GetMapping("/reciclajeSinSesion")
	public String reciclajeSinSesion() {
		return "/sinLogin/reciclajeSin.jsp";
	}
	
	@GetMapping("/preguntasFrecuentesSinSesion")
	public String preguntasFrecuentesSinSesion() {
		return"/sinLogin/preguntasFrecSin.jsp";
	}
	@GetMapping("/personasSinSesion")
	public String personasSinSesion() {
		return "/sinLogin/InfoPersonasSinSesion.jsp";
	}
	
	@GetMapping("/infoEmpresasSinSesion")
	public String infoEmpresasSinSesion() {
		return"/sinLogin/InfoEmpresasSinSesion.jsp";
	}

	// PaginaPrincipalConInicioDeSesion-------------------------------------------------------------------------
	@GetMapping("/Inicio")
	public String indexSesionIniciada(@ModelAttribute("Usuario") Usuario Usuario,
			@ModelAttribute("empresa") Empresas Empresas, BindingResult resultado, HttpSession sesion,
			Model viewModel) {

		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null) {
			Usuario usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			return "indexSesionIniciada.jsp";
		}
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);

		return "indexSesionIniciada.jsp";
	}

	// Perfil-------------------------------------------------------------------------
	@GetMapping("/perfil")
	public String perfil() {
		return "perfil_v2.jsp";
	}

	@GetMapping("/empresas")
	public String empresas() {
		return "empresas.jsp";
	}

	@GetMapping("/publicacionesPersonas")
	public String publicacionesPersonas(@ModelAttribute("publicacionUsario") DesechosPublicaciones publicacionE,
			BindingResult resultado, HttpSession sesion, Model viewModel) {
		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null) {
			Usuario usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			return "publicacionesPersonas.jsp";
		}
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		
		viewModel.addAttribute("publicacionUsario", desechosPServ.desechosUsuario());
		return "publicacionesPersonas.jsp";
	}

	@GetMapping("/publicacionesEmpresas")
	public String publicacionesEmpresas(@ModelAttribute("publicacionEmpresa") DesechosPublicaciones publicacionE,
			BindingResult resultado, HttpSession sesion, Model viewModel) {
		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null) {
			Usuario usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			return "publicacionesEmpresas.jsp";
		}
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		
		viewModel.addAttribute("publicacionEmpresa", desechosPServ.todasPublicaciones());
		return "publicacionesEmpresas.jsp";

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
		return "nosotros.jsp";
	}

	@GetMapping("/reciclaje")
	public String reciclaje() {
		return "reciclaje.jsp";
	}

	@GetMapping("/preguntasFrecuentes")
	public String preguntasFrecuentes() {
		return "preguntasFrec.jsp";
	}

}
