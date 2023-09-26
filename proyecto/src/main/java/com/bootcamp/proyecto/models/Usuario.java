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
import jakarta.persistence.Lob;
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
@Table(name = "usuarios")
public class Usuario {

	// DatosTabla-----------------------------------------------------------------------------------

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotBlank(message = " Por favor ingresa un Nombre")
	private String nombre;

	@NotBlank(message = " Por favor ingresa un Apellido")
	private String apellido;

	@NotBlank(message = " Por favor ingresa un numero de telefono")
	private String telefono;

	@NotBlank(message = " Por favor ingresa un correo electronico")
	@Email(message = "El correo ingresado no es correcto")
	private String email;

	@Lob
	@Column(name = "foto", columnDefinition = "LONGBLOB")
	private byte[] foto;

	// @NotBlank(message = "Por favor, ingresa el password")
	@Size(min = 8, max = 64, message = "Por favor, ingresa una contraseña")
	private String password;

	@Transient
	// @NotBlank(message = "Por favor confirma la contrasenia")
	@Size(min = 8, message = "Por favor confirma la contraseña")
	private String passwordConfirmation;

	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;

	// RelacionesHaciaOtrasTablas-----------------------------------------------------------------------------------

	// relacion 1:n hacia comentarios
	@OneToMany(mappedBy = "emisor", fetch = FetchType.LAZY)
	private List<DesechosPublicaciones> publicadosUsuarios;

	// relacion n:1 hacia roles
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "rol_id")
	private Roles rol;

	// relacion n:m hacia categoriaDesecho
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "interesesUsuarios", joinColumns = @JoinColumn(name = "usuario_id"), inverseJoinColumns = @JoinColumn(name = "categoria_desecho_id"))
	private List<CategoriaDesecho> categoriaDesecho;

	// relacion 1:n hacia comentarios
	@OneToMany(mappedBy = "usuarioCreador", fetch = FetchType.LAZY)
	private List<Comentarios> comentariosUser;

	// ConstructorVacio-----------------------------------------------------------------------------------------------

	public Usuario() {
	}

	// SetterYGetterDeRelacionesHaciaOtrasTablas-----------------------------------------------------------------------

	public List<Comentarios> getComentariosUser() {
		return comentariosUser;
	}

	public void setComentariosUser(List<Comentarios> comentariosUser) {
		this.comentariosUser = comentariosUser;
	}

	public List<DesechosPublicaciones> getPublicadosUsuarios() {
		return publicadosUsuarios;
	}

	public void setPublicadosUsuarios(List<DesechosPublicaciones> publicadosUsuarios) {
		this.publicadosUsuarios = publicadosUsuarios;
	}

	public Roles getRol() {
		return rol;
	}

	public void setRol(Roles rol) {
		this.rol = rol;
	}

	public List<CategoriaDesecho> getCategoriaDesecho() {
		return categoriaDesecho;
	}

	public void setCategoriaDesecho(List<CategoriaDesecho> categoriaDesecho) {
		this.categoriaDesecho = categoriaDesecho;
	}

	// SetterYGetterDeDatosTabla--------------------------------------------------------------------------------------

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

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
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

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	public byte[] getFoto() {
		return foto;
	}

	public void setFoto(byte[] foto) {
		this.foto = foto;
	}

}
