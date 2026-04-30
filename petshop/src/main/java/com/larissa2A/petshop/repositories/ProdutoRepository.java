package com.larissa2A.petshop.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.larissa2A.petshop.entities.Produto;



public interface ProdutoRepository extends JpaRepository<Produto, Integer> {



    List<Produto> findByIdCategoriaAndAtivoTrue(Integer idCategoria);

}