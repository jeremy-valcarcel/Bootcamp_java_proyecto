package com.bootcamp.proyecto.models;

import java.util.Date;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "categoria_desecho")
public class CategoriaDesecho {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String descripcion;

	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "intereses", 
	joinColumns = @JoinColumn(name = "categoria_desecho_id"), inverseJoinColumns = @JoinColumn(name = "usuario_id"))
	private List<Usuario> usuario;
	
}
