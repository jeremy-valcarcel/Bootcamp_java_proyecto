package com.bootcamp.proyecto.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bootcamp.proyecto.models.Empresas;

@Repository
public interface EmpresaRepo extends CrudRepository<Empresas, Long>{
	
	//EncontrarEmpresaPorEmail-----------------------------------------------------------------------------------------
	Empresas findByEmail(String email);
	
	//TodasEmpresas----------------------------------------------------------------------------------------------------
	List<Empresas> findAll();
}
