package com.bootcamp.proyecto.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.bootcamp.proyecto.models.Roles;

public interface RolesRepo extends CrudRepository<Roles, Long> {

	//TodosRoles---------------------------------------------------------------------------------
	List<Roles> findAll();
}
