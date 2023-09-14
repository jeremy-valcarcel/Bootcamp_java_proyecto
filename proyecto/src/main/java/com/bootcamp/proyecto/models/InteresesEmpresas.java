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

@Entity
@Table(name="interesesEmpresas")
public class InteresesEmpresas {

	//DatosTabla-----------------------------------------------------------------------------------
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	//RelacionesHaciaOtrasTablas-----------------------------------------------------------------------------------
	
    //relacion n:1 hacia categoriaDesechos
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="categoria_desecho_id")
    private CategoriaDesecho categoriaDesecho;
    
    //relacion n:1 hacia empresas
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="empresa_id")
    private Empresas empresa;
    
    //ConstructorVacio-----------------------------------------------------------------------------------------------
    
    public InteresesEmpresas () {}

    //SetterYGetterDeRelacionesHaciaOtrasTablas-----------------------------------------------------------------------
    
	public CategoriaDesecho getCategoriaDesecho() {
		return categoriaDesecho;
	}

	public void setCategoriaDesecho(CategoriaDesecho categoriaDesecho) {
		this.categoriaDesecho = categoriaDesecho;
	}

	public Empresas getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresas empresa) {
		this.empresa = empresa;
	}
    
	//SetterYGetterDeDatosTabla--------------------------------------------------------------------------------------
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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
