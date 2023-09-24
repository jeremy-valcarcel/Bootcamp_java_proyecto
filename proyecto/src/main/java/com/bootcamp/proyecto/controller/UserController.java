package com.bootcamp.proyecto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bootcamp.proyecto.models.LogReg;
import com.bootcamp.proyecto.models.Usuario;
import com.bootcamp.proyecto.services.UsuarioService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class UserController {
	
	private final UsuarioService userServ;
	
	public UserController (UsuarioService uSer) {
		this.userServ = uSer;
	}
	
//	@GetMapping("/")
//	public String raiz(Model viewModel) {
//		viewModel.addAttribute("user", new Usuario());
//		viewModel.addAttribute("login", new LogReg());
//		return "loginreg.jsp";
//	}
//	
	
	@PostMapping("/registration")
	public String registro(@Valid @ModelAttribute("user") Usuario usuario,
			BindingResult resultado, Model viewModel ) {
		if(resultado.hasErrors()) {
			viewModel.addAttribute("login", new LogReg());
			return "loginreg.jsp";
		}
		Usuario usuarioRegistrado = userServ.registroUsuario(usuario, resultado);
		viewModel.addAttribute("login", new LogReg());
		if(usuarioRegistrado != null) {
			viewModel.addAttribute("registro", "Gracias por registrarte, ahora login por favor");
		}
		return "loginreg.jsp";
	}
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("login") LogReg loginuser,
			BindingResult resultado, Model viewModel, HttpSession sesion) {
		if (resultado.hasErrors()) {
			viewModel.addAttribute("user", new Usuario());
			return "loginreg.jsp";
		}
		
		if(userServ.authenthicateUser(
				loginuser.getEmail(), 
				loginuser.getPassword(), 
				resultado )) {
			Usuario usuarioLog = userServ.encontrarPorEmail(loginuser.getEmail());
			sesion.setAttribute("userID",usuarioLog.getId());
			return "redirect:/tasks";
		}else {
			viewModel.addAttribute("errorLog", "Por favor intenta de nuevo");
			viewModel.addAttribute("user", new Usuario());
			return "loginreg.jsp";
		}
		
	}
	
	
	
//	@GetMapping("/logout")
//	public String logout(HttpSession sesion) {
//		sesion.setAttribute("userID", null);
//		return "redirect:/";
//	}

}
