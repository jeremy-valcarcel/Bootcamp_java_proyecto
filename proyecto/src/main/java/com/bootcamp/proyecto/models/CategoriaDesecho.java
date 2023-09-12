package com.bootcamp.proyecto.models;

import java.util.Date;
import java.util.List;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name = "categoriaDesechos")
public class CategoriaDesecho {

	//datos de tabla
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotBlank(message=" Por favor ingresa una descripcion")
	private String descripcion;

	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;

	//relacion n:m a usuarios
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "interesesUsuarios", 
	joinColumns = @JoinColumn(name = "categoria_desecho_id"), 
	inverseJoinColumns = @JoinColumn(name = "usuario_id"))
	private List<Usuario> usuario;
	
	//relacion n:m a empresas
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "interesesEmpresas", 
	joinColumns = @JoinColumn(name = "categoria_desecho_id"), 
	inverseJoinColumns = @JoinColumn(name = "empresa_id"))
	private List<Empresas> empresa;
	
	//constructor
	public CategoriaDesecho () {}

	
	//set y get
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

	public List<Usuario> getUsuario() {
		return usuario;
	}

	public void setUsuario(List<Usuario> usuario) {
		this.usuario = usuario;
	}

	public List<Empresas> getEmpresa() {
		return empresa;
	}

	public void setEmpresa(List<Empresas> empresa) {
		this.empresa = empresa;
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
