package com.larissa2A.petshop.entities;

import jakarta.persistence.*;



@Entity

@Table(name = "produto")

public class Produto {



    @Id

    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Integer id_produto;



    @Column(nullable = false)

    private String nome;



    private String descricao;



    private Double preco;

    private Double preco_desconto;



    @Column(columnDefinition = "LONGTEXT")

    private String imagem;



    private Integer qtd_estoque;

    private Boolean ativo = true;



    @Column(name = "id_categoria")

    private Integer idCategoria;



    // getters e setters

    public Integer getId_produto() { return id_produto; }

    public void setId_produto(Integer id_produto) { this.id_produto = id_produto; }



    public String getNome() { return nome; }

    public void setNome(String nome) { this.nome = nome; }



    public String getDescricao() { return descricao; }

    public void setDescricao(String descricao) { this.descricao = descricao; }



    public Double getPreco() { return preco; }

    public void setPreco(Double preco) { this.preco = preco; }



    public Double getPreco_desconto() { return preco_desconto; }

    public void setPreco_desconto(Double preco_desconto) { this.preco_desconto = preco_desconto; }



    public String getImagem() { return imagem; }

    public void setImagem(String imagem) { this.imagem = imagem; }



    public Integer getQtd_estoque() { return qtd_estoque; }

    public void setQtd_estoque(Integer qtd_estoque) { this.qtd_estoque = qtd_estoque; }



    public Boolean getAtivo() { return ativo; }

    public void setAtivo(Boolean ativo) { this.ativo = ativo; }



    public Integer getIdCategoria() { return idCategoria; }

    public void setIdCategoria(Integer idCategoria) { this.idCategoria = idCategoria; }

}
