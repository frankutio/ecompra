package main.bean;
/*
CREATE  TABLE IF NOT EXISTS `crud_usuario`.`tb_usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(100) NOT NULL ,
  `email` VARCHAR(200) NOT NULL ,
  `senha` VARCHAR(100) NOT NULL ,
  PRIMARY KEY (`id_usuario`) )
)

*/

public class ClienteBean {
	//encapsulamento
	private int cpf;
	/*private int tel_fixo;	
	private int tel_celular;
	private String nome;
	private String endereco;
	private String estado;
	private String uf;
	private String sexo;
	private String est_civil;
	*/
	private String email;
	private String senha;
	
	//atribuição de valores
	public ClienteBean(){
		cpf = 0;
		/*tel_fixo = 0;
		tel_celular = 0;
		nome = "";
		endereco = "";
		estado = "";
		uf = "";
		sexo = "";
		est_civil = "";
		*/
		email = "";
		senha = "";
	}
	//??
	public ClienteBean( int cpf, /*int tel_fixo, int tel_celular, String  nome,String endereco,
			String estado, String uf, String sexo, String est_civil,*/ String email, String senha ){
		this.cpf = cpf;
		/*this.tel_fixo = tel_fixo;
		this.tel_celular = tel_celular;
		this.nome = nome;
		this.endereco = endereco;
		this.estado = estado;
		this.uf = uf;
		this.sexo = sexo;
		this.est_civil = est_civil;
		*/
		this.email = email;
		this.senha = senha;
	}
	public int getCpf() {
		return cpf;
	}
	public void setCpf(int cpf) {
		this.cpf = cpf;
	}
	/*public int getTel_fixo() {
		return tel_fixo;
	}
	public void setTel_fixo(int tel_fixo) {
		this.tel_fixo = tel_fixo;
	}
	public int getTel_cel() {
		return tel_celular;
	}
	public void setTel_cel(int tel_celular) {
		this.tel_celular = tel_celular;
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
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getEst_civil() {
		return est_civil;
	}
	public void setEst_civil(String est_civil) {
		this.est_civil = est_civil;
	}*/
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	
}
