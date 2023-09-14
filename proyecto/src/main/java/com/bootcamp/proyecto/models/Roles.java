package com.bootcamp.proyecto.models;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name="roles")
public class Roles {
	
	//DatosTabla-----------------------------------------------------------------------------------
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	private String name;
	
	//RelacionesHaciaOtrasTablas-----------------------------------------------------------------------------------
	
	//relacion 1:N (Usuarios)
	@OneToMany(mappedBy = "rol", fetch = FetchType.LAZY)
	private List<Usuario> usuario;
	
	//relacion 1:N (Empresas)
	@OneToMany(mappedBy = "rol", fetch = FetchType.LAZY)
	private List<Empresas> empresa;
	
	//ConstructorVacio-----------------------------------------------------------------------------------------------
	
	public Roles() {}

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

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}

}
