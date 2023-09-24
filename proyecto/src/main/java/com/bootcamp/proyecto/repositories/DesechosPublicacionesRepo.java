package com.bootcamp.proyecto.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bootcamp.proyecto.models.DesechosPublicaciones;
import com.bootcamp.proyecto.models.Empresas;
import com.bootcamp.proyecto.models.Usuario;

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

	 // publicaciones hechas por el usuario
	 List<DesechosPublicaciones> findByEmisor(Usuario emisor);
	 
	 // publicaciones hechas por el usuario
	 List<DesechosPublicaciones> findByEmpresaEmisora(Empresas empresa);
	 
}