package com.larissa2A.petshop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.larissa2A.petshop.entities.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Integer> {
}
