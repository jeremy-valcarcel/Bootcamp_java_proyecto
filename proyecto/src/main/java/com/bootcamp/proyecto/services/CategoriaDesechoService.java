package com.bootcamp.proyecto.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bootcamp.proyecto.models.CategoriaDesecho;
import com.bootcamp.proyecto.repositories.CategoriasDesechosRepo;

@Service
public class CategoriaDesechoService {
	private final CategoriasDesechosRepo categoriaRepo;
	public CategoriaDesechoService(CategoriasDesechosRepo cRP) {
		this.categoriaRepo = cRP;
	}
	
//	Todas las categorias
	public List<CategoriaDesecho> todasLasCategorias(){
		return categoriaRepo.findAll();
	}

}
