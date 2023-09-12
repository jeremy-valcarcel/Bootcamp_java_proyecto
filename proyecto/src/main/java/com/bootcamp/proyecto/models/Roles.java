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
import jakarta.persistence.Table;

@Entity
@Table(name="roles")
public class Roles {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String descripcion;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	//relacion 1:N (Usuarios)
	@OneToMany(mappedBy = "rol", fetch = FetchType.LAZY)
	private List<Usuario> usuario;
	
	
	
	//constructor
	public Roles() {}

}
