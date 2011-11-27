package Entidade.Painel.Impl;

import Entidade.Painel.Entidade;

public class Administrador extends Entidade{

@Override
public boolean equals(Object obj) {
    return cpf == ((Administrador) obj).getCpf();
}
    //encapsulamento
    private int cpf;
    private String nome;
    private String login;
    private String senha;

    public Administrador(){

    }
    public Administrador(int cpf, String nome, String login, String senha){
        this.cpf = cpf;
        this.nome = nome;
        this.login = login;
        this.senha = senha;
    }
    public int getCpf() {
        return cpf;
    }

    public void setCpf(int cpf) {
        this.cpf = cpf;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }



}
