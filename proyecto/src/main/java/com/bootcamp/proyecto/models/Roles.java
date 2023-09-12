package com.bootcamp.proyecto.models;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name="roles")
public class Roles {
	
	//datos de tabla
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	@Min(value = 1, message = "por favor, debe elegir  un rol")
	private Integer rol;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	//relacion 1:N (Usuarios)
	@OneToMany(mappedBy = "rol", fetch = FetchType.LAZY)
	private List<Usuario> usuario;
	
	//relacion 1:N (Empresas)
	@OneToMany(mappedBy = "rol", fetch = FetchType.LAZY)
	private List<Empresas> empresa;
	
	//constructor
	public Roles() {}

	
	//set y get
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getRol() {
		return rol;
	}

	public void setRol(Integer rol) {
		this.rol = rol;
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
