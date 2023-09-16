package com.bootcamp.proyecto.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bootcamp.proyecto.models.Comentarios;
import com.bootcamp.proyecto.models.DesechosPublicaciones;

@Repository
public interface DesechosPublicacionesRepo extends CrudRepository<DesechosPublicaciones, Long>{

	List<DesechosPublicaciones> findAll();
	
//	Desechos con tamaño menor a 7
	 @Query(value=
			 "SELECT * FROM ecorescateapp.desechos_publicaciones "
				+ "WHERE tamano < 7",
			 nativeQuery=true)
	 List<DesechosPublicaciones> desechosTamañoMenor();
	 
//		Desechos con tamaño mayor a 7
	 @Query(value =
			    "SELECT * FROM ecorescateapp.desechos_publicaciones "
			    + "WHERE tamano > 7",
			    nativeQuery = true)
			List<DesechosPublicaciones> desechosTamañoMayor();

	
}