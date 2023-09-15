package com.bootcamp.proyecto.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.bootcamp.proyecto.models.Empresas;
import com.bootcamp.proyecto.repositories.EmpresaRepo;

@Service
public class EmpresaService {

	// Repositories----------------------------------------------------------------------------------------------
	private final EmpresaRepo empresaRepo;
	public EmpresaService(EmpresaRepo eR) {
		this.empresaRepo = eR;
	}

	//EncontrarUsuarioTravesEmail-------------------------------------------------------------------------------
	public Empresas encontrarPorEmail(String email) {
		return empresaRepo.findByEmail(email);
	}

	//TodasEmpresas----------------------------------------------------------------------------------------------
	public List<Empresas> todasEmpresas() {
		return empresaRepo.findAll();
	}

	//EmpresasPorId---------------------------------------------------------------------------------------------
	public Empresas encontrarEmpresaPorId(Long id) {
		Optional<Empresas> empresa = empresaRepo.findById(id);
		if (empresa.isPresent()) {
			return empresa.get();
		}
		return null;
	}

	//RegistarEmpresas-------------------------------------------------------------------------------------------
	public Empresas registroEmpresa(Empresas empresa, BindingResult resultado) {

		Empresas empresaRegistrado = empresaRepo.findByEmail(empresa.getEmail());

		if (empresaRegistrado != null) {
			resultado.rejectValue("email", "Matches", "Correo electronico ya existe");
		}
		if (!empresa.getPassword().equals(empresa.getPasswordConfirmation())) {
			resultado.rejectValue("password", "Matches", "Password no coincide");
		}
		if (resultado.hasErrors()) {
			return null;
		}
		String hashed = BCrypt.hashpw(empresa.getPassword(), BCrypt.gensalt());
		empresa.setPassword(hashed);
		return empresaRepo.save(empresa);

	}

	//AutenticacionDeUsuario(LOGIN)---------------------------------------------------------------------------------
	public boolean authenthicateEmpresa(String email, String password, BindingResult resultado) {

		Empresas empresaRegistrado = empresaRepo.findByEmail(email);

		if (empresaRegistrado == null) {
			resultado.rejectValue("email", "Matches", "Email no valido");
			return false;
		} else {
			if (BCrypt.checkpw(password, empresaRegistrado.getPassword())) {
				return true;
			} else {
				resultado.rejectValue("password", "Matches", "Password no valido");
				return false;
			}
		}
	}

}
