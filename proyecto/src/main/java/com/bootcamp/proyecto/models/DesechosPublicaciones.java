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
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name="desechos")
public class DesechosPublicaciones {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String descripcion;
	
	@NotNull(message="Por favor indeque un taño")
	private Integer tamaño;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	public Long getId() {
		return id;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "usuario_id")
	private Usuario emisor;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "categoria_desecho_id")
	private CategoriaDesecho categoria;
	
	//Relacion 1:n hacia TaskModel
	@OneToMany(mappedBy="creador", fetch=FetchType.LAZY)
	private List<Comentarios> comentarios;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "estado_desecho_id")
	private EstadoDesechos estado;
	
	public DesechosPublicaciones() {
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
	public Integer getTamaño() {
		return tamaño;
	}
	public void setTamaño(Integer tamaño) {
		this.tamaño = tamaño;
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
