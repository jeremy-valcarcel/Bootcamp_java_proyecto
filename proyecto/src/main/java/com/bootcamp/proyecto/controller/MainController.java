package com.bootcamp.proyecto.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;

import com.bootcamp.proyecto.models.Empresas;
import com.bootcamp.proyecto.models.Roles;
import com.bootcamp.proyecto.models.Usuario;
import com.bootcamp.proyecto.services.DesechosPublicacionesService;
import com.bootcamp.proyecto.services.EmpresaService;
import com.bootcamp.proyecto.services.RolesServices;
import com.bootcamp.proyecto.services.UsuarioService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MainController {

	// Services
	// ------------------------------------------------------------------------------------
	private final UsuarioService userServ;
	private final EmpresaService empresaServ;
	private final DesechosPublicacionesService desechosPServ;
	private final RolesServices RolesServices;

	public MainController(UsuarioService uS, EmpresaService eS, DesechosPublicacionesService dPS, RolesServices rS) {
		this.userServ = uS;
		this.empresaServ = eS;
		this.desechosPServ = dPS;
		this.RolesServices = rS;
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

	// PerfilEditar-------------------------------------------------------------------------
	@GetMapping("/perfil/{userID}/edit")
	public String formEditPerfil(@PathVariable("userID") Long usuarioId, @ModelAttribute("usuario") Usuario Usuario,
			HttpSession sesion, Model viewModel) {

		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		}

		else if (userId != null && userId != empresasId) {
			
			Usuario usuario = userServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			List<Roles> rol = RolesServices.todosRoles();
			viewModel.addAttribute("roles", rol);
			return "perfilEdit.jsp";
		}
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);

		return "perfilEdit.jsp";
	}

	@PutMapping("/perfil/{id}/edit")
	public String editarSong(@Valid @ModelAttribute("usuario") Usuario Usuario, BindingResult resultado,
			@PathVariable("id") Long usuarioId, HttpSession sesion, Model viewModel) {

		// validar si la sesion del usuario esta activa
		Long userId = (Long) sesion.getAttribute("userID");
		Long empresaId = (Long) sesion.getAttribute("empresaID");
		if (userId == null && empresaId == null) {
			return "redirect:/Login";

		}
		
		else if (userId != null && userId != empresaId) {
			Usuario usuario = userServ.encontrarUserPorId(userId);
			if (resultado.hasErrors()) {
				List<Roles> rol = RolesServices.todosRoles();
				viewModel.addAttribute("roles", rol);
				return "perfilEdit.jsp";
			}
				userServ.actualizarUsuario(usuario);
				return "redirect:/perfil";
			
			

		}
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresaId);
		if (resultado.hasErrors()) {
			viewModel.addAttribute("empresa", empresa);
			return "perfilEdit.jsp";
		}
		empresaServ.actualizarEmpresa(empresa);
		return "redirect:/perfil";
	}

	@GetMapping("/empresas")
	public String empresas(@ModelAttribute("Usuario") Usuario Usuario, @ModelAttribute("empresa") Empresas Empresas,
			BindingResult resultado, HttpSession sesion, Model viewModel) {
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
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		
		return "empresas.jsp";
	}

	@GetMapping("/personas")
	public String infoPersonas(@ModelAttribute("Usuario") Usuario Usuario, @ModelAttribute("empresa") Empresas Empresas,
			BindingResult resultado, HttpSession sesion, Model viewModel) {
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
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		
		return "InfoPersonas.jsp";
	}

	@GetMapping("/empresa")
	public String infoEmpresas(@ModelAttribute("Usuario") Usuario Usuario, @ModelAttribute("empresa") Empresas Empresas,
			BindingResult resultado, HttpSession sesion, Model viewModel) {
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
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		
		return "InfoEmpresas.jsp";
	}

	@GetMapping("/nosotros")
	public String nosotros(@ModelAttribute("Usuario") Usuario Usuario, @ModelAttribute("empresa") Empresas Empresas,
			BindingResult resultado, HttpSession sesion, Model viewModel) {
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
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		
		return "nosotros.jsp";
	}

	@GetMapping("/reciclaje")
	public String reciclaje(@ModelAttribute("Usuario") Usuario Usuario, @ModelAttribute("empresa") Empresas Empresas,
			BindingResult resultado, HttpSession sesion, Model viewModel) {
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
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		
		return "reciclaje.jsp";
	}

	@GetMapping("/preguntasFrecuentes")
	public String preguntasFrecuentes(@ModelAttribute("Usuario") Usuario Usuario,
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
			return "preguntasFrec.jsp";
		}
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);

		return "preguntasFrec.jsp";
	}

}
