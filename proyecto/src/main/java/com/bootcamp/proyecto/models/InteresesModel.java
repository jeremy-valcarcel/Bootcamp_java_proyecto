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
import jakarta.persistence.Table;

@Entity
@Table(name="intereses")
public class InteresesModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(updatable=false)
    private Date createdAt;
    private Date updatedAt;
    
    //Categoria Desecho
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="categoria_desecho_id")
    private CategoriaDesecho categoriaDesecho;
    
    //Usuario
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="usuario_id")
    private Usuario usuario;
}
