package com.bootcamp.proyecto.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.util.List;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bootcamp.proyecto.models.Empresas;
import com.bootcamp.proyecto.models.Roles;
import com.bootcamp.proyecto.models.Usuario;
import com.bootcamp.proyecto.services.DesechosPublicacionesService;
import com.bootcamp.proyecto.services.EmpresaService;
import com.bootcamp.proyecto.services.RolesServices;
import com.bootcamp.proyecto.services.UsuarioService;

import jakarta.servlet.http.HttpServletResponse;
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

//	@GetMapping("/imagen/{usuarioId}")
//	public void mostrarImagen(@PathVariable Long usuarioId, HttpServletResponse response) throws IOException {
//		Usuario usuario = userServ.unUsuario(usuarioId);
//		Empresas empresa = empresaServ.unaEmpresa(empresaId);
//
//		if (usuario != null && usuario.getFoto() != null) {
//			response.setContentType("image/jpeg"); // Establece el tipo de contenido
//			InputStream is = new ByteArrayInputStream(usuario.getFoto());
//
//			
//			IOUtils.copy(is, response.getOutputStream());
//		}
//	}
	
	@GetMapping("/imagen/{tipo}/{id}")
	public void mostrarImagen(@PathVariable String tipo, @PathVariable Long id, HttpServletResponse response) throws IOException {
	    if ("usuario".equals(tipo)) {
	        Usuario usuario = userServ.unUsuario(id);
	        if (usuario != null && usuario.getFoto() != null) {
	            response.setContentType("image/jpeg");
	            InputStream is = new ByteArrayInputStream(usuario.getFoto());
	            IOUtils.copy(is, response.getOutputStream());
	        }
	    } else if ("empresa".equals(tipo)) {
	        Empresas empresa = empresaServ.encontrarEmpresaPorId(id);
	        if (empresa != null && empresa.getFoto() != null) {
	            response.setContentType("image/jpeg");
	            InputStream is = new ByteArrayInputStream(empresa.getFoto());
	            IOUtils.copy(is, response.getOutputStream());
	        }
	    }
	}

	@GetMapping("/cargar-imagen")
	public String mostrarFormularioCarga() {
		return "perfilEdit.jsp"; // Nombre de la vista JSP
	}

	@PostMapping("/cargar-imagen")
	public String cargarImagen(@RequestParam("archivo") MultipartFile archivo, Principal principal,
			HttpSession sesion) {
		// Validar si la sesión del usuario está activa
		Long userId = (Long) sesion.getAttribute("userID");
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		if (userId == null && empresasId == null) {
			return "redirect:/"; // Redirige al inicio si no hay una sesión de usuario activa
		} else if (userId != null && userId != empresasId) {
			try {
				Usuario usuario = userServ.encontrarUserPorId(userId);
				byte[] imagenBytes = archivo.getBytes();
				usuario.setFoto(imagenBytes);
				userServ.guardar(usuario);
			} catch (IOException e) {
				// Manejar errores de lectura del archivo
				// Puedes registrar el error o mostrar un mensaje de error al usuario
				return "redirect:/cargar-imagen"; // Redirige nuevamente al formulario de carga
			}

			return "redirect:/perfil"; // Redirige a la página de perfil después de cargar la imagen
		}

		try {
			Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
			byte[] imagenBytes = archivo.getBytes();
			empresa.setFoto(imagenBytes);
			empresaServ.guardar(empresa);
		} catch (IOException e) {
			// Manejar errores de lectura del archivo
			// Puedes registrar el error o mostrar un mensaje de error al usuario
			return "redirect:/cargar-imagen"; // Redirige nuevamente al formulario de carga
		}

		return "redirect:/perfil"; // Redirige a la página de perfil después de cargar la imagen

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
			viewModel.addAttribute("publicaciones", desechosPServ.publicacionesDelUsuario(usuario));
			return "perfil_v2.jsp";
		}
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		viewModel.addAttribute("publicaciones", desechosPServ.publicacionesDeLaEmpresa(empresa));
		return "perfil_v2.jsp";
	}

	// PerfilEditar-------------------------------------------------------------------------
	@GetMapping("/perfil-{userId}-edit")
	public String formEditPerfil(@PathVariable("userId") Long usuarioId, @ModelAttribute("user") Usuario user,
			HttpSession sesion, Model viewModel) {

		// validar si la sesion del usuario o empresa esta activa
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null) {
			return "redirect:/";
		}

		Usuario unUser = userServ.unUsuario(usuarioId);
		viewModel.addAttribute("user", unUser);
		Usuario usuario = userServ.encontrarUserPorId(userId);
		viewModel.addAttribute("usuario", usuario);
		List<Roles> rol = RolesServices.todosRoles();
		viewModel.addAttribute("roles", rol);
		return "perfilEdit.jsp";
	}

	@PutMapping("/perfil-{id}-edit")
	public String editarUsuario(@Valid @ModelAttribute("user") Usuario user, BindingResult resultado,
			@PathVariable("id") Long usuarioId, HttpSession sesion, Model viewModel) {

		// validar si la sesion del usuario esta activa
		Long userId = (Long) sesion.getAttribute("userID");
		Long empresaId = (Long) sesion.getAttribute("empresaID");
		if (userId == null && empresaId == null) {
			return "redirect:/Login";
		}

//		else if (userId != null && userId != empresaId) {
		Usuario usuario = userServ.encontrarUserPorId(userId);
		Usuario unUser = userServ.unUsuario(usuarioId);
		if (resultado.hasErrors()) {
			List<Roles> rol = RolesServices.todosRoles();
			viewModel.addAttribute("roles", rol);
			viewModel.addAttribute("user", unUser);
			viewModel.addAttribute("usuario", usuario);

			return "perfilEdit.jsp";
		}
		user.setPassword(unUser.getPassword());
		userServ.actualizarUsuario(user);
		return "redirect:/perfil";

	}

	// PerfilEditar-------------------------------------------------------------------------
	@GetMapping("/perfil-{empresaId}-editar")
	public String editPerfil(@PathVariable("empresaId") Long empresaId, @ModelAttribute("empresas") Empresas empresas,
			HttpSession sesion, Model viewModel) {

		// validar si la sesion de la empresa esta activa
		Long empresasId = (Long) sesion.getAttribute("empresaID");
		if (empresasId == null) {
			return "redirect:/";
		}

		Empresas unaEmpresa = empresaServ.unaEmpresa(empresaId);
		viewModel.addAttribute("empresas", unaEmpresa);
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresasId);
		viewModel.addAttribute("empresa", empresa);
		List<Roles> rol = RolesServices.todosRoles();
		viewModel.addAttribute("roles", rol);
		return "perfilEdit.jsp";
	}

	@PutMapping("/perfil-{id}-editar")
	public String editarEmpresa(@Valid @ModelAttribute("empresas") Empresas empresas, BindingResult resultado,
			@PathVariable("id") Long emrpesaId, HttpSession sesion, Model viewModel) {

		// validar si la sesion del usuario esta activa
		Long empresaId = (Long) sesion.getAttribute("empresaID");
		if (empresaId == null) {
			return "redirect:/Login";
		}

		Empresas unaEmpresa = empresaServ.unaEmpresa(emrpesaId);
		Empresas empresa = empresaServ.encontrarEmpresaPorId(empresaId);
		if (resultado.hasErrors()) {
			List<Roles> rol = RolesServices.todosRoles();
			viewModel.addAttribute("roles", rol);
			viewModel.addAttribute("empresa", empresa);
			viewModel.addAttribute("empresas", unaEmpresa);
			return "perfilEdit.jsp";
		}
		empresas.setPassword(unaEmpresa.getPassword());
		empresas.setFoto(empresa.getFoto());
		empresas.setRazonSocial(empresa.getRazonSocial());
		empresaServ.actualizarEmpresa(empresas);
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
