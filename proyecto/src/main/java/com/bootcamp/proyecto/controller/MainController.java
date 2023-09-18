package com.bootcamp.proyecto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

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

	// PaginasSinInicioDeSesion------------------------------------------------------------------------

	@GetMapping("/")
	public String IndexGeneral() {
		return "/sinLogin/index.jsp";
	}

	@GetMapping("/nosotrosSinSesion")
	public String nosotrosSinSesion() {
		return "/sinLogin/nosotrosSin.jsp";
	}

	@GetMapping("/reciclajeSinSesion")
	public String reciclajeSinSesion() {
		return "/sinLogin/reciclajeSin.jsp";
	}

	@GetMapping("/preguntasFrecuentesSinSesion")
	public String preguntasFrecuentesSinSesion() {
		return "/sinLogin/preguntasFrecSin.jsp";
	}

	@GetMapping("/personasSinSesion")
	public String personasSinSesion() {
		return "/sinLogin/InfoPersonasSinSesion.jsp";
	}

	@GetMapping("/infoEmpresasSinSesion")
	public String infoEmpresasSinSesion() {
		return "/sinLogin/InfoEmpresasSinSesion.jsp";
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
		} else if (userId != null && userId != empresasId) {
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
	public String perfil(@ModelAttribute("Usuario") Usuario Usuario, @ModelAttribute("empresa") Empresas Empresas,
			BindingResult resultado, HttpSession sesion, Model viewModel) {

		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null && userId != empresasId) {
			Usuario usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			return "perfil_v2.jsp";
		}
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);

		return "perfil_v2.jsp";
	}

	@GetMapping("/empresas")
	public String empresas(@ModelAttribute("Usuario") Usuario Usuario, BindingResult resultado, HttpSession sesion,
			Model viewModel) {
		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null && userId != empresasId) {
			Usuario usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			return "empresas.jsp";
		}
		return "empresas.jsp";
	}

	@GetMapping("/personas")
	public String infoPersonas(@ModelAttribute("Usuario") Usuario Usuario, BindingResult resultado, HttpSession sesion,
			Model viewModel) {
		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null && userId != empresasId) {
			Usuario usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			return "InfoPersonas.jsp";
		}
		return "InfoPersonas.jsp";
	}

	@GetMapping("/empresa")
	public String infoEmpresas(@ModelAttribute("Usuario") Usuario Usuario, BindingResult resultado, HttpSession sesion,
			Model viewModel) {
		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null && userId != empresasId) {
			Usuario usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			return "InfoEmpresas.jsp";
		}
		return "InfoEmpresas.jsp";
	}

	@GetMapping("/nosotros")
	public String nosotros(@ModelAttribute("Usuario") Usuario Usuario, BindingResult resultado, HttpSession sesion,
			Model viewModel) {
		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null && userId != empresasId) {
			Usuario usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			return "nosotros.jsp";
		}
		return "nosotros.jsp";
	}

	@GetMapping("/reciclaje")
	public String reciclaje(@ModelAttribute("Usuario") Usuario Usuario, BindingResult resultado, HttpSession sesion,
			Model viewModel) {
		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null && userId != empresasId) {
			Usuario usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			return "reciclaje.jsp";
		}
		return "reciclaje.jsp";
	}

	@GetMapping("/preguntasFrecuentes")
	public String preguntasFrecuentes(@ModelAttribute("Usuario") Usuario Usuario, BindingResult resultado,
			HttpSession sesion, Model viewModel) {
		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null && userId != empresasId) {
			Usuario usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			return "preguntasFrec.jsp";
		}

		return "preguntasFrec.jsp";
	}

}
