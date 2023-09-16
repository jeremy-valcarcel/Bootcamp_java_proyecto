package com.bootcamp.proyecto.models;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name="desechosPublicaciones")
public class DesechosPublicaciones {
	
	//DatosTabla-----------------------------------------------------------------------------------
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message=" Por favor ingresa una descripcion")
	private String descripcion;
	
	@NotNull(message="Por favor indeque un tamaño")
	@Min(value=1, message="El tamaño debe ser mayor de 0")
	private int tamano;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	//RelacionesHaciaOtrasTablas-----------------------------------------------------------------------------------
	
	// relacion n:1 a usuario
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "usuario_id")
	private Usuario emisor;
	
	// relacion n:1 a empresas
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "empresa_id")
	private Empresas empresaEmisora;
	
	//relacion n:1 a categoria desechos
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "categoria_desecho_id")
	private CategoriaDesecho categoria;
	
	//Relacion 1:n hacia comentarios
	@OneToMany(mappedBy="creador", fetch=FetchType.LAZY)
	private List<Comentarios> comentarios;
	
	//relacion n:1 hacia estadoDesecho
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "estado_desecho_id")
	private EstadoDesechos estado;
	
	//ConstructorVacio-----------------------------------------------------------------------------------------------
	
	public DesechosPublicaciones() {
	}
	
	//SetterYGetterDeRelacionesHaciaOtrasTablas-----------------------------------------------------------------------
	
	public Usuario getEmisor() {
		return emisor;
	}


	public void setEmisor(Usuario emisor) {
		this.emisor = emisor;
	}


	public Empresas getEmpresaEmisora() {
		return empresaEmisora;
	}


	public void setEmpresaEmisora(Empresas empresaEmisora) {
		this.empresaEmisora = empresaEmisora;
	}


	public CategoriaDesecho getCategoria() {
		return categoria;
	}


	public void setCategoria(CategoriaDesecho categoria) {
		this.categoria = categoria;
	}


	public List<Comentarios> getComentarios() {
		return comentarios;
	}


	public void setComentarios(List<Comentarios> comentarios) {
		this.comentarios = comentarios;
	}


	public EstadoDesechos getEstado() {
		return estado;
	}


	public void setEstado(EstadoDesechos estado) {
		this.estado = estado;
	}
	
	//SetterYGetterDeDatosTabla--------------------------------------------------------------------------------------
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	
	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getTamano() {
		return tamano;
	}

	public void setTamano(int tamano) {
		this.tamano = tamano;
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
