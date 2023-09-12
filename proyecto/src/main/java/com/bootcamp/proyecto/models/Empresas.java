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
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "empresas")
public class Empresas {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String nombre;

	private String razonSocial;

	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;

	// intereses
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "intereses", joinColumns = @JoinColumn(name = "empresas_id"), inverseJoinColumns = @JoinColumn(name = "categoria_desecho_id"))
	private List<CategoriaDesecho> categoriaDesecho;

	// N:1 (Roles)
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "rol_id")

	private Roles rol;
}
