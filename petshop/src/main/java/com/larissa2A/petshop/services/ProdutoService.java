package com.larissa2A.petshop.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.larissa2A.petshop.entities.Produto;

import com.larissa2A.petshop.repositories.ProdutoRepository;



@Service

public class ProdutoService {



    @Autowired

    private ProdutoRepository repository;



    public List<Produto> listar() {

        return repository.findAll();

    }



    public Produto salvar(Produto p) {

        return repository.save(p);

    }



    public Produto atualizar(Integer id, Produto p) {

        p.setId_produto(id);

        return repository.save(p);

    }



    public void deletar(Integer id) {

        repository.deleteById(id);

    }



    public List<Produto> getProdutosPorCategoria(Integer idCategoria) {

        return repository.findByIdCategoriaAndAtivoTrue(idCategoria);

    }



    public Produto buscarPorId(Integer id) {

        return repository.findById(id).orElse(null);

    }

}
