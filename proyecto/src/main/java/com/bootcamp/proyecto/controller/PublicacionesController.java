package com.bootcamp.proyecto.controller;

import org.springframework.stereotype.Controller;

import com.bootcamp.proyecto.repositories.DesechosPublicacionesRepo;

@Controller
public class PublicacionesController {
	private final DesechosPublicacionesRepo desechosPServ;
	public PublicacionesController(DesechosPublicacionesRepo dR) {
		this.desechosPServ = dR;
	}
	
//	@PostMapping("/")
//	public String crearEvento(@Valid @ModelAttribute("evento") EventModel evento, BindingResult resultado,
//			HttpSession sesion, Model viewModel) {
//		// validar si la sesion del usuario esta activa
//		Long userId = (Long) sesion.getAttribute("userID");
//		if (userId == null) {
//			return "redirect:/";
//		}
//		if (resultado.hasErrors()) {
//			User usuario = userServ.encontrarUserPorId(userId);
//			viewModel.addAttribute("usuario", usuario);
//			viewModel.addAttribute("provincias", Provincias.provincias);
//			return "dashboard.jsp";
//		}
//		eventService.crearEvento(evento);
//		return "redirect:/events";
//	}
	
	
}
