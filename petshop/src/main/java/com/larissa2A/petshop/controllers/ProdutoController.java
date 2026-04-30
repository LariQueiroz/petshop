package com.larissa2A.petshop.controllers;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;



import com.larissa2A.petshop.entities.Produto;

import com.larissa2A.petshop.services.ProdutoService;



@RestController

@RequestMapping("/api/produtos")

@CrossOrigin("*")

public class ProdutoController {



    @Autowired

    private ProdutoService service;



    @GetMapping

    public List<Produto> listar() {

        return service.listar();

    }



    @PostMapping

    public Produto salvar(@RequestBody Produto p) {

        return service.salvar(p);

    }



    @PutMapping("/{id}")

    public Produto atualizar(@PathVariable Integer id, @RequestBody Produto p) {

        return service.atualizar(id, p);

    }



    @DeleteMapping("/{id}")

    public void deletar(@PathVariable Integer id) {

        service.deletar(id);

    }



    @GetMapping("/categoria/{idCategoria}")

    public List<Produto> getProdutosByCategoria(@PathVariable Integer idCategoria) {

        return service.getProdutosPorCategoria(idCategoria);

    }



    @GetMapping("/{id}")

    public Produto buscarPorId(@PathVariable Integer id) {

        return service.buscarPorId(id);

    }

}