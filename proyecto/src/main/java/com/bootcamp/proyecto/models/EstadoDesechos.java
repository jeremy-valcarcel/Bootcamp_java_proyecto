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
@Table(name = "estadosDesechos")
public class EstadoDesechos {
	
	//Datos de la tabla
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	@Min(value = 1, message = "por favor, debe elegir  un estado")
	private Integer estado;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	//relacion 1:n hacia desechosPublicados
	@OneToMany(mappedBy = "estado", fetch = FetchType.LAZY)
	private List<DesechosPublicaciones> DesechosPublicaciones;
	
	//constructor
	public EstadoDesechos () {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getEstado() {
		return estado;
	}

	public void setEstado(Integer estado) {
		this.estado = estado;
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

	public List<DesechosPublicaciones> getDesechosPublicaciones() {
		return DesechosPublicaciones;
	}

	public void setDesechosPublicaciones(List<DesechosPublicaciones> desechosPublicaciones) {
		DesechosPublicaciones = desechosPublicaciones;
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
