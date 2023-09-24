package com.bootcamp.proyecto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bootcamp.proyecto.models.DesechosPublicaciones;
import com.bootcamp.proyecto.models.Empresas;
import com.bootcamp.proyecto.models.Usuario;
import com.bootcamp.proyecto.services.CategoriaDesechoService;
import com.bootcamp.proyecto.services.DesechosPublicacionesService;
import com.bootcamp.proyecto.services.EmpresaService;
import com.bootcamp.proyecto.services.UsuarioService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class PublicacionesController {
	private final DesechosPublicacionesService desechosPServ;
	private final UsuarioService usuarioServ;
	private final EmpresaService empresaServ;
	private final CategoriaDesechoService categoriaServ;

	public PublicacionesController(DesechosPublicacionesService dR,
			UsuarioService uS, EmpresaService eS, CategoriaDesechoService cDS) {
		this.desechosPServ = dR;
		this.usuarioServ = uS;
		this.empresaServ = eS;
		this.categoriaServ = cDS;
	}

    //CREAR PUBLICACION
	@GetMapping("/crear-publicacion")
	public String nuevaPublicacionEmpresa(@ModelAttribute("publicacion") DesechosPublicaciones publicacion,
			BindingResult resultado, HttpSession sesion, Model viewModel) {

		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null) {
			Usuario usuario = usuarioServ.encontrarUserPorId(userId);

			// Verificar si el usuario actual es generador
			boolean esGenerador = usuario.getRol().getId().equals(2L);
			if (esGenerador) {
				viewModel.addAttribute("usuario", usuario);
				viewModel.addAttribute("titulo", categoriaServ.todasLasCategorias());
				return "/publicaciones/newDesechoPubli.jsp";
			} else {
				return "redirect:/Inicio";
			}
		}
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		// Verificar si la empresa actual es generadora
		boolean esGenerador = empresa.getRol().getId().equals(2L);
		if (esGenerador) {
			viewModel.addAttribute("empresa", empresa);
			viewModel.addAttribute("titulo", categoriaServ.todasLasCategorias());
			return "/publicaciones/newDesechoPubli.jsp";
		} else {
			return "redirect:/Inicio";
		}
	}

	@PostMapping("/crear-publicacion")
	public String crearPublicacionEmpresa(@Valid @ModelAttribute("publicacion") DesechosPublicaciones publicacion,
			BindingResult resultado, HttpSession sesion, Model viewModel) {

		// validar si la sesion del usuario esta activa
		Long userId = (Long) sesion.getAttribute("userID");
		Long empresaId = (Long) sesion.getAttribute("empresaID");
		if (userId == null && empresaId == null) {
			return "redirect:/Login";
		} else if (userId != null) {

			if (resultado.hasErrors()) {
				Usuario usuario = usuarioServ.encontrarUserPorId(userId);
				viewModel.addAttribute("usuario", usuario);
				viewModel.addAttribute("titulo", categoriaServ.todasLasCategorias());
				return "/publicaciones/newDesechoPubli.jsp";
			}
			desechosPServ.crearPublicacion(publicacion);
			return "redirect:/perfil";
		}
		if (resultado.hasErrors()) {
			Empresas empresa = empresaServ.encontrarEmpresaPorId(empresaId);
			viewModel.addAttribute("empresa", empresa);
			viewModel.addAttribute("titulo", categoriaServ.todasLasCategorias());
			return "/publicaciones/newDesechoPubli.jsp";
		}
		desechosPServ.crearPublicacion(publicacion);
		return "redirect:/perfil";
	}

    //MOSTRAR PUBLICACIONES DE USUARIO 
	@GetMapping("/publicacionesPersonas")
	public String publicacionesPersonas(@ModelAttribute("publicacionEmpresa") DesechosPublicaciones publicacion,
			BindingResult resultado, HttpSession sesion, Model viewModel) {
		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null) {
			Usuario usuario = usuarioServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			viewModel.addAttribute("publicacionEmpresa", desechosPServ.desechosUsuario());
			return "/publicaciones/publicacionesPersonas_v2.jsp";
		}

		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		viewModel.addAttribute("publicacionEmpresa", desechosPServ.desechosUsuario());
		return "/publicaciones/publicacionesPersonas_v2.jsp";

	}

	
    //MOSTRAR PUBLICACIONES DE EMPRESA 
	@GetMapping("/publicacionesEmpresas")

	public String publicacionesEmpresas(@ModelAttribute("publicacionEmpresa") DesechosPublicaciones publicacion,
			BindingResult resultado, HttpSession sesion, Model viewModel) {
		// validar si la sesion del usuario o empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null) {
			Usuario usuario = usuarioServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			viewModel.addAttribute("publicacionEmpresa", desechosPServ.desechosEmpresas());
			return "/publicaciones/publicacionesEmpresas_v2.jsp";
		}

		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		viewModel.addAttribute("publicacionEmpresa", desechosPServ.desechosEmpresas());
		return "/publicaciones/publicacionesEmpresas_v2.jsp";

	}

//	MOSTRAR UNA PUBLICACION PARA PODER AGREGAR COMENTARIO
	@GetMapping("publicaciones-{idPublicacion}")
	public String unaPublicacion(@PathVariable("idPublicacion") Long idPublicacion, HttpSession sesion,
			RedirectAttributes errores, Model viewModel) {
		// validar si la sesion del usuario esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/Login";
		} else if (userId != null) {
			DesechosPublicaciones unaPublicacion = desechosPServ.unaPublicacion(idPublicacion);
			if (unaPublicacion == null) {
				return "redirect:/perfil";
			}
			Usuario usuario = usuarioServ.encontrarUserPorId(userId);
			viewModel.addAttribute("usuario", usuario);
			viewModel.addAttribute("publicacion", unaPublicacion);

			return "/publicaciones/comentarios.jsp";
		}
		DesechosPublicaciones unaPublicacion = desechosPServ.unaPublicacion(idPublicacion);
		if (unaPublicacion == null) {
			return "redirect:/perfil";
		}
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		viewModel.addAttribute("publicacion", unaPublicacion);
		return "/publicaciones/comentarios.jsp";

	}

//	AGREGAR COMENTARIO

	@PostMapping("publicaciones-{idPublicacion}-comentario")
	public String agregarComentariosEmpresas(@PathVariable("idPublicacion") Long idPublicacion,
			@RequestParam("comment") String comentario, HttpSession sesion, RedirectAttributes errores) {
		// validar si la sesion del usuario esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null) {
			if (comentario.isEmpty() || comentario.isBlank()) {
				errores.addFlashAttribute("error", "Por favor no envias comentarios vacios");
				return "redirect:/publicaciones/{idPublicacion}";
			}
			DesechosPublicaciones unaPublicacion = desechosPServ.unaPublicacion(idPublicacion);
			Usuario usuario = usuarioServ.encontrarUserPorId(userId);

			desechosPServ.comentarioUsuario(usuario, unaPublicacion, comentario);

			return "redirect:/publicaciones/" + idPublicacion;
		}
		if (comentario.isEmpty() || comentario.isBlank()) {
			errores.addFlashAttribute("error", "Por favor no envias comentarios vacios");
			return "redirect:/publicaciones/" + idPublicacion;
		}
		DesechosPublicaciones unaPublicacion = desechosPServ.unaPublicacion(idPublicacion);
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);

		desechosPServ.comentarioEmpresa(empresa, unaPublicacion, comentario);

		return "redirect:/publicaciones/" + idPublicacion;
	}
	
	@PostMapping("publicaciones-{idPublicacion}-comentar")
	public String agregarComentariosUsuarios(@PathVariable("idPublicacion") Long idPublicacion,
			@RequestParam("comentario") String comentario, HttpSession sesion, RedirectAttributes errores) {
		// validar si la sesion del usuario esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null && empresasId == null) {
			return "redirect:/";
		} else if (userId != null) {
			if (comentario.isEmpty() || comentario.isBlank()) {
				errores.addFlashAttribute("error", "Por favor no envias comentarios vacios");
				return "redirect:/publicaciones/{idPublicacion}";
			}
			DesechosPublicaciones unaPublicacion = desechosPServ.unaPublicacion(idPublicacion);
			Usuario usuario = usuarioServ.encontrarUserPorId(userId);

			desechosPServ.comentarioUsuario(usuario, unaPublicacion, comentario);

			return "redirect:/publicacionesPersonas";
		}
		if (comentario.isEmpty() || comentario.isBlank()) {
			errores.addFlashAttribute("error", "Por favor no envias comentarios vacios");
			return "redirect:/publicaciones/" + idPublicacion;
		}
		DesechosPublicaciones unaPublicacion = desechosPServ.unaPublicacion(idPublicacion);
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);

		desechosPServ.comentarioEmpresa(empresa, unaPublicacion, comentario);

		return "redirect:/publicacionesPersonas";
	}

}
