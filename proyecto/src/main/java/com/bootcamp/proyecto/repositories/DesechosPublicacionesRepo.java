package com.bootcamp.proyecto.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bootcamp.proyecto.models.DesechosPublicaciones;

@Repository
public interface DesechosPublicacionesRepo extends CrudRepository<DesechosPublicaciones, Long>{
	
}
