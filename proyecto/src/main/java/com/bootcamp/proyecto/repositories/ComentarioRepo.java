package com.bootcamp.proyecto.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bootcamp.proyecto.models.Comentarios;

@Repository
public interface ComentarioRepo extends CrudRepository<Comentarios, Long>{

}