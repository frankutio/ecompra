package Entidade.Painel.Impl;

import Entidade.Painel.Entidade;

public class Produto extends Entidade{

    @Override
    public boolean equals(Object obj) {
        return cod_produto == ((Produto) obj).getCod_produto();
    }

        private int cod_produto;
        private String nome;
        private String descricao;
        private int preco;
        private int quantidade;
        private String fabricante;
        private String foto;
        private String arquivo;

        public Produto(){

        }

        public Produto(int cod_produto, String nome, String descricao, int preco, int quantidade, String fabricante){

            this.cod_produto = cod_produto;
            this.nome = nome;
            this.descricao = descricao;
            this.preco = preco;
            this.quantidade = quantidade;
            this.fabricante = fabricante;
        }

    public int getCod_produto() {
        return cod_produto;
    }

    public void setCod_produto(int cod_produto) {
        this.cod_produto = cod_produto;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getFabricante() {
        return fabricante;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getPreco() {
        return preco;
    }

    public void setPreco(int preco) {
        this.preco = preco;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getArquivo() {
        return arquivo;
    }

    public void setArquivo(String arquivo) {
        this.arquivo = arquivo;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }


}
