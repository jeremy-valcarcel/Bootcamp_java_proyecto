package com.bootcamp.proyecto.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bootcamp.proyecto.models.Usuario;

@Repository
public interface UsuarioRepo extends CrudRepository<Usuario, Long>{
	
	Usuario findByEmail(String email);
	
	List<Usuario> findAll();

}
