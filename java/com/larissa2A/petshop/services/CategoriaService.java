package com.larissa2A.petshop.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.larissa2A.petshop.entities.Categoria;
import com.larissa2A.petshop.repositories.CategoriaRepository;

@Service
public class CategoriaService {

    @Autowired
    private CategoriaRepository repository;

    public List<Categoria> listar() {
        return repository.findAll();
    }

    public Categoria salvar(Categoria categoria) {
        return repository.save(categoria);
    }

    public Categoria atualizar(Integer id, Categoria categoria) {
        categoria.setId_categoria(id);
        return repository.save(categoria);
    }

    public void deletar(Integer id) {
        repository.deleteById(id);
    }
}