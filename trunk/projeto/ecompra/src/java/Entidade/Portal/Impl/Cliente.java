package Entidade.Portal.Impl;

import Entidade.Portal.Entidade;

public class Cliente extends Entidade{

@Override
public boolean equals(Object obj) {
    return cpf == ((Cliente) obj).getCpf();
}


    //encapsulamento
	private int cpf;
	private String nome;
	private String endereco;
	private String cidade;
	private String uf;
	private int tel_fixo;	
	private int tel_cel;
	private String sexo;
	private String estado_civil;
	private String email;
	private String login;
	private String senha;
	private String conf_senha;
	
	//atribuição de valores
	public Cliente(){

	}
	
	public Cliente( int cpf, String nome, String endereco, String estado, String uf, int tel_fixo, int tel_cel,
		 String sexo, String estado_civil, String email, String login, String senha,String conf_senha ){
		this.cpf = cpf;
		this.nome = nome;
		this.endereco = endereco;
		this.cidade = estado;
		this.uf = uf;
		this.tel_fixo = tel_fixo;
		this.tel_cel = tel_cel;
		this.sexo = sexo;
		this.estado_civil = estado_civil;
		this.email = email;
		this.login = login;
		this.senha = senha;
		this.conf_senha = conf_senha;
	}
	public int getCpf() {
		return cpf;
	}
	public void setCpf(int cpf) {
		this.cpf = cpf;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	public int getTel_fixo() {
		return tel_fixo;
	}
	public void setTel_fixo(int telFixo) {
		tel_fixo = telFixo;
	}
	public int getTel_cel() {
		return tel_cel;
	}
	public void setTel_cel(int telCel) {
		tel_cel = telCel;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getEstado_civil() {
		return estado_civil;
	}
	public void setEstado_civil(String estadoCivil) {
		estado_civil = estadoCivil;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getConf_senha() {
		return conf_senha;
	}
	public void setConf_senha(String confSenha) {
		conf_senha = confSenha;
	}
		
	
}
