package com.bootcamp.proyecto.services;

import java.util.List;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.bootcamp.proyecto.models.Usuario;
import com.bootcamp.proyecto.repositories.UsuarioRepo;

@Service
public class UsuarioService {
	
	//Repositories------------------------------------------------------------------------------------------------
	private final UsuarioRepo userRepo;
	public UsuarioService(UsuarioRepo uR ) {
		this.userRepo = uR;
	}
	
	//EncontrarUsuarioTravesEmail-----------------------------------------------------------------------------------
	public Usuario encontrarPorEmail(String email) {
		return userRepo.findByEmail(email);
	}
	
	//TodosUsuarios-----------------------------------------------------------------------------------------------
	public List<Usuario> todosUsuarios(){
		return userRepo.findAll();
	}
	
	//UsuarioPorId-----------------------------------------------------------------------------------------------
	public Usuario encontrarUserPorId(Long id) {
		Optional<Usuario> user = userRepo.findById(id);
		if(user.isPresent()) {
			return user.get();
		}
		return null;
	}

	//RegistrarUsuario-----------------------------------------------------------------------------------------------------
	public Usuario registroUsuario(Usuario user, BindingResult resultado) {

		Usuario usuarioRegistrado = userRepo.findByEmail(user.getEmail());

		if (usuarioRegistrado != null) {
			resultado.rejectValue("email", "Matches", "Correo electronico ya existe");
		}
		if (!user.getPassword().equals(user.getPasswordConfirmation())) {
			resultado.rejectValue("password", "Matches", "Password no coincide");
		}
		if (resultado.hasErrors()) {
			return null;
		}
		String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(hashed);
		return userRepo.save(user);

	}

	//AutenticacionUsuario(LOGIN)-------------------------------------------------------------------------------------------------
	public boolean authenthicateUser(String email, String password, BindingResult resultado) {

		Usuario usuarioRegistrado = userRepo.findByEmail(email);

		if (usuarioRegistrado == null) {
			resultado.rejectValue("email", "Matches", "Email no valido");
			return false;
		} else {
			if (BCrypt.checkpw(password, usuarioRegistrado.getPassword())) {
				return true;
			} else {
				resultado.rejectValue("password", "Matches", "Password no valido");
				return false;
			}
		}
	}
	
	// EditarUsuario---------------------------------------------------------------------------------------------------------
	public Usuario actualizarUsuario(Usuario Usuario) {
		return userRepo.save(Usuario);
	}
	
	//EliminarUsuario-------------------------------------------------------------------------------------------------------
	public void borrarUsuario(Long id) {
		userRepo.deleteById(id);
	}

}
