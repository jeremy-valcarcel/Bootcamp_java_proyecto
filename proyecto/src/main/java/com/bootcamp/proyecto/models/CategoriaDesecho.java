package com.bootcamp.proyecto.models;

import java.util.Date;
import java.util.List;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name = "categoriaDesechos")
public class CategoriaDesecho {

	//DatosTabla-----------------------------------------------------------------------------------
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotBlank(message=" Por favor ingresa un titulo")
	private String categoria;
	
	/* CODIGOS PARA INSERTEAR LAS DIFERENTES CATEGORIAS
	 
	  
INSERT INTO categoria_desechos (categoria) VALUES ('Aceites de cocina usados');
INSERT INTO categoria_desechos (categoria) VALUES ('Aserrín');
INSERT INTO categoria_desechos (descripcion) VALUES ('Bolsas de té usadas');
INSERT INTO categoria_desechos (descripcion) VALUES ('Cáscaras de frutas y verduras');
INSERT INTO categoria_desechos (descripcion) VALUES ('Cáscaras de huevo');
INSERT INTO categoria_desechos (descripcion) VALUES ('Café molido usado');
INSERT INTO categoria_desechos (descripcion) VALUES ('Estiércol animal');
INSERT INTO categoria_desechos (descripcion) VALUES ('Restos de poda');
INSERT INTO categoria_desechos (descripcion) VALUES ('Suero de leche');
INSERT INTO categoria_desechos (descripcion) VALUES ('Virutas de madera');

	 */
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	//RelacionesHaciaOtrasTablas-----------------------------------------------------------------------------------

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
	
	//ConstructorVacio-----------------------------------------------------------------------------------------------
	
	public CategoriaDesecho () {}

	//SetterYGetterDeRelacionesHaciaOtrasTablas-----------------------------------------------------------------------
	
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
	
	//SetterYGetterDeDatosTabla--------------------------------------------------------------------------------------
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
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
