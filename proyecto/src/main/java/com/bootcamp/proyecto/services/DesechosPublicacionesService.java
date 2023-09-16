package com.bootcamp.proyecto.services;

import org.springframework.stereotype.Service;

import com.bootcamp.proyecto.models.Comentarios;
import com.bootcamp.proyecto.models.DesechosPublicaciones;
import com.bootcamp.proyecto.models.Empresas;
import com.bootcamp.proyecto.models.Usuario;
import com.bootcamp.proyecto.repositories.ComentarioRepo;
import com.bootcamp.proyecto.repositories.DesechosPublicacionesRepo;

@Service
public class DesechosPublicacionesService {
	private final DesechosPublicacionesRepo desechosPR;
	private final ComentarioRepo comentarioRepo;
	public DesechosPublicacionesService(DesechosPublicacionesRepo dPR, ComentarioRepo cR) {
		this.desechosPR = dPR;
		this.comentarioRepo = cR;
	}
	
//	Crear publicacion
	public DesechosPublicaciones crearPublicacion(DesechosPublicaciones publicacion) {
		return desechosPR.save(publicacion);
	}
	
//	Actializar publicacion
	public DesechosPublicaciones actualizarPublicacion(DesechosPublicaciones publicacion) {
		return desechosPR.save(publicacion);
	}

//	Borrar publicacion
	public void borrarPublicacion(Long id) {
		desechosPR.deleteById(id);
	}
	
//	mostar una publicacion
	public DesechosPublicaciones unEvento(Long id) {
		return desechosPR.findById(id).orElse(null);
	}
	
//	agregar comentario usuario
	public void comentarioUsuario(Usuario usuario, DesechosPublicaciones publicacion, String comentario) {
		Comentarios mensaje = new Comentarios(usuario, publicacion, comentario);
		comentarioRepo.save(mensaje);
	}
	
//	agregar comentario empresa
	public void comentarioEmpresa(Empresas empresa, DesechosPublicaciones publicacion, String comentario) {
		Comentarios mensaje = new Comentarios(empresa, publicacion, comentario);
		comentarioRepo.save(mensaje);
	}
	
	
	
	
}