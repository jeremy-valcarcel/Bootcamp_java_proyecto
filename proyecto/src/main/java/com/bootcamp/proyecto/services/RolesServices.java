package com.bootcamp.proyecto.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bootcamp.proyecto.models.Roles;
import com.bootcamp.proyecto.repositories.RolesRepo;

@Service
public class RolesServices {

	//Repositories-------------------------------------------------------------------------------------
	private final RolesRepo RolesRepo;
	public RolesServices(RolesRepo rolesR) {
		this.RolesRepo = rolesR;
	}
	
	//TodosRoles---------------------------------------------------------------------------------------
	public List<Roles> todosRoles(){
		return RolesRepo.findAll();
	}
	
}
