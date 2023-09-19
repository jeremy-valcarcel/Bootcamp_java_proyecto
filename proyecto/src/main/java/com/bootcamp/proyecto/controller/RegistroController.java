package com.bootcamp.proyecto.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bootcamp.proyecto.models.Empresas;
import com.bootcamp.proyecto.models.LogReg;
import com.bootcamp.proyecto.models.Roles;
import com.bootcamp.proyecto.models.Usuario;
import com.bootcamp.proyecto.services.EmpresaService;
import com.bootcamp.proyecto.services.RolesServices;
import com.bootcamp.proyecto.services.UsuarioService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class RegistroController {
	
	//Services ------------------------------------------------------------------------------------
	private final UsuarioService userServ;
	private final EmpresaService empresaServ;
	private final RolesServices RolesServices;
	public RegistroController(UsuarioService uS, EmpresaService eS , RolesServices rS) {
		this.userServ = uS;
		this.empresaServ = eS;
		this.RolesServices = rS;
	}
	
	
	//InicioSesion ------------------------------------------------------------------------------------
	@GetMapping("/Login")
	public String raiz(Model viewModel) {
		viewModel.addAttribute("login", new LogReg());
		return "registro/sesion_v2.jsp";
	}
	
	@PostMapping("/Login")
	public String login(@Valid @ModelAttribute("login") LogReg loginuser,
			BindingResult resultado, Model viewModel, HttpSession sesion) {
		if (resultado.hasErrors()) {
			viewModel.addAttribute("user", new Usuario());
			viewModel.addAttribute("empresa", new Empresas());
			return "registro/sesion_v2.jsp";
		}
		
		if(userServ.authenthicateUser(
				loginuser.getEmail(), 
				loginuser.getPassword(), 
				resultado )) {
			Usuario usuarioLog = userServ.encontrarPorEmail(loginuser.getEmail());
			sesion.setAttribute("userID",usuarioLog.getId());

			return "redirect:/Inicio";}
		
		if(empresaServ.authenthicateEmpresa(
				loginuser.getEmail(), 
				loginuser.getPassword(), 
				resultado )) {
			Empresas empresaLog = empresaServ.encontrarPorEmail(loginuser.getEmail());
			sesion.setAttribute("empresaID",empresaLog.getId());
			return "redirect:/Inicio";
			
		}else {
			viewModel.addAttribute("errorLog", "Por favor intenta de nuevo");
			viewModel.addAttribute("user", new Usuario());
			viewModel.addAttribute("empresa", new Empresas());
			return "registro/sesion_v2.jsp";
		}
		
	}
	
	//RegistroUsuarios ------------------------------------------------------------------------------------
	@GetMapping("/Registro/Usuario")
	public String registroUser(Model viewModel) {
		viewModel.addAttribute("user", new Usuario());
		
		List<Roles> rol = RolesServices.todosRoles();
		viewModel.addAttribute("roles", rol);
		return "registro/registroUser_v2.jsp";
	}
	
	@PostMapping("/Registro/Usuario")
	public String registroU(@Valid @ModelAttribute("user") Usuario usuario,
			BindingResult resultado, Model viewModel ) {
		if(resultado.hasErrors()) {
			List<Roles> rol = RolesServices.todosRoles();
			viewModel.addAttribute("roles", rol);
			
			return "registro/registroUser_v2.jsp";
		}
		Usuario usuarioRegistrado = userServ.registroUsuario(usuario, resultado);
		viewModel.addAttribute("login", new LogReg());
		if(usuarioRegistrado != null) {
			return "redirect:/Login";
		}
		return "registro/registroUser_v2.jsp";
	}
	
	//RegistroEmpresas ------------------------------------------------------------------------------------
	@GetMapping("/Registro/Empresa")
	public String registroEmpresa(Model viewModel) {
		viewModel.addAttribute("empresa", new Empresas());
		
		List<Roles> rol = RolesServices.todosRoles();
		viewModel.addAttribute("roles", rol);
		return "registro/registroEmpresa_v2.jsp";
	}
	
	@PostMapping("/Registro/Empresa")
	public String registroE(@Valid @ModelAttribute("empresa") Empresas emrpresa,
			BindingResult resultado, Model viewModel ) {
		if(resultado.hasErrors()) {
			List<Roles> rol = RolesServices.todosRoles();
			viewModel.addAttribute("roles", rol);
			
			return "registro/registroEmpresa_v2.jsp";
		}
		Empresas empresaRegistrado = empresaServ.registroEmpresa(emrpresa, resultado);
		if(empresaRegistrado != null) {
			return "redirect:/Login"; 
		}
		return "registro/registroEmpresa_v2.jsp";
	}
	
	//CerrarSesion ------------------------------------------------------------------------------------
	@GetMapping("/logout")
	public String logout(HttpSession sesion) {
		sesion.setAttribute("empresaID", null);
		sesion.setAttribute("userID", null);
		return "redirect:/";
	}

	
	
	
	
}
