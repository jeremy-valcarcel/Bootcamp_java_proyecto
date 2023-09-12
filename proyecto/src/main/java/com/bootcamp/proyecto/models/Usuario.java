package com.bootcamp.proyecto.models;

import java.util.Date;

import jakarta.persistence.*;

@Entity
@Table(name="Usuario")
public class Usuario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String nombre;
	
	private String apellido;
	
	@Not
	@Email(message="ingrese...")
	private String email;
	
	@NotBlank(message="Por favor, ingresa el password")
	@Size(min=8, max=64, message= "Password debe contener minimo 8 caracteres")
	private String password;
	
	@Transient
	@NotBlank(message="Por favor confirma la contrasenia")
	@Size(min=8, message= "Password debe contener minimo 8 caracteres")
	private String passwordConfirmation;
	
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	

}
