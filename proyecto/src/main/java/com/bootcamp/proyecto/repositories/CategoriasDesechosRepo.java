package com.bootcamp.proyecto.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bootcamp.proyecto.models.CategoriaDesecho;

@Repository
public interface CategoriasDesechosRepo extends CrudRepository<CategoriaDesecho, Long>{

	List<CategoriaDesecho> findAll();
	
}
