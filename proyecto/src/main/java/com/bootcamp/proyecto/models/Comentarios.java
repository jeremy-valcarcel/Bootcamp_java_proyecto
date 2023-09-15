package com.bootcamp.proyecto.models;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name="comentarios")
public class Comentarios {

	//DatosTabla-----------------------------------------------------------------------------------
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message=" Por favor ingresa un comentario")
	private String contenido;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	//RelacionesHaciaOtrasTablas-----------------------------------------------------------------------------------
	
	//relacion n:1 hacia publicaciones
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "desechosPublicaciones_id")
	private DesechosPublicaciones creador;
	
	//relacion n:1 hacia publicaciones
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "usuario_id")
	private Usuario usuarioCreador;
	
	//relacion n:1 hacia publicaciones
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "empresa_id")
	private Empresas empresaCreador;
	
	//ConstructorVacio-----------------------------------------------------------------------------------------------
	
	public Comentarios () {}
	
	
	public Comentarios(Usuario usuario, DesechosPublicaciones publicacion, String comentario) {
		this.usuarioCreador = usuario;
		this.creador = publicacion;
		this.contenido = comentario;
	}
	
	public Comentarios(Empresas empresa, DesechosPublicaciones publicacion, String comentario) {
		this.empresaCreador = empresa;
		this.creador = publicacion;
		this.contenido = comentario;
	}

	//SetterYGetterDeRelacionesHaciaOtrasTablas-----------------------------------------------------------------------
	
	public DesechosPublicaciones getCreador() {
		return creador;
	}

	public void setCreador(DesechosPublicaciones creador) {
		this.creador = creador;
	}

	public Usuario getUsuarioCreador() {
		return usuarioCreador;
	}

	public void setUsuarioCreador(Usuario usuarioCreador) {
		this.usuarioCreador = usuarioCreador;
	}

	public Empresas getEmpresaCreador() {
		return empresaCreador;
	}

	public void setEmpresaCreador(Empresas empresaCreador) {
		this.empresaCreador = empresaCreador;
	}
	
	//SetterYGetterDeDatosTabla--------------------------------------------------------------------------------------
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getContenido() {
		return contenido;
	}

	public void setContenido(String contenido) {
		this.contenido = contenido;
	}
	
	public Date getCreatedAt() {
		return createdAt;
	}


	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}


	public Date getUpdatedAt() {
		return updatedAt;
	}


	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}


	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}
}
