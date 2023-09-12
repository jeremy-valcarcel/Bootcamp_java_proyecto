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
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "empresas")
public class Empresas {

	//Datos de la tabla
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message=" Por favor ingresa un Nombre")
	private String nombre;
	
	@NotBlank(message=" Por favor ingresa un telefono")
	private String telefono;
	
	@NotBlank(message=" Por favor ingresa una razon social")
	private String razonSocial;
	
	@NotBlank(message=" Por favor ingresa una direccion")
	private String direccion;
	
	@NotBlank(message=" Por favor ingresa un correo electronico")
	@Email(message="El correo ingresado no es correcto")
	private String email;
	
	@Size(min=8, max=64, message= "Por favor ingresa el password")
	private String password;
	
	@Transient
	@Size(min=8, message= "Por favor confirma el password")
	private String passwordConfirmation;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;

	
	//relacion 1:n hacia comentarios
	@OneToMany(mappedBy = "empresaEmisora", fetch = FetchType.LAZY)
	private List<DesechosPublicaciones> publicadosEmpresas;
	
	
	//relacion n:1 hacia roles
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "rol_id")
	private Roles rol;
	
	
	// relacion n:m hacia categoriaDesecho
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "interesesEmpresas",
	joinColumns = @JoinColumn(name = "empresa_id"),
	inverseJoinColumns = @JoinColumn(name = "categoria_desecho_id"))
	private List<CategoriaDesecho> categoriaDesecho;
	
	//relacion 1:n hacia comentarios
	@OneToMany(mappedBy = "empresaCreador", fetch = FetchType.LAZY)
	private List<Comentarios> comentariosCreador;


	
	
	
	//constructor
	public Empresas() {}

	
	//set y get
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getRazonSocial() {
		return razonSocial;
	}

	public void setRazonSocial(String razonSocial) {
		this.razonSocial = razonSocial;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
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

	public List<CategoriaDesecho> getCategoriaDesecho() {
		return categoriaDesecho;
	}

	public void setCategoriaDesecho(List<CategoriaDesecho> categoriaDesecho) {
		this.categoriaDesecho = categoriaDesecho;
	}

	public Roles getRol() {
		return rol;
	}

	public void setRol(Roles rol) {
		this.rol = rol;
	}
	
	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	public List<Comentarios> getComentariosCreador() {
		return comentariosCreador;
	}


	public void setComentariosCreador(List<Comentarios> comentariosCreador) {
		this.comentariosCreador = comentariosCreador;
	}


	public List<DesechosPublicaciones> getPublicadosEmpresas() {
		return publicadosEmpresas;
	}


	public void setPublicadosEmpresas(List<DesechosPublicaciones> publicadosEmpresas) {
		this.publicadosEmpresas = publicadosEmpresas;
	}
	
	
}
