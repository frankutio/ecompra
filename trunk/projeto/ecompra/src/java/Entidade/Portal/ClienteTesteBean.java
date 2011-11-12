package Entidade.Portal;

public class ClienteTesteBean {
    //encapsulamento
	private int cpf;
	
	private String email;
	private String senha;
	
	//atribuição de valores
	public ClienteTesteBean(){
		cpf = 0;
		
		email = "";
		senha = "";
	}
	//??
	public ClienteTesteBean( int cpf, /*int tel_fixo, int tel_celular, String  nome,String endereco,
			String estado, String uf, String sexo, String est_civil,*/ String email, String senha ){
		this.cpf = cpf;
		
		this.email = email;
		this.senha = senha;
	}
	public int getCpf() {
		return cpf;
	}
	public void setCpf(int cpf) {
		this.cpf = cpf;
	}
	
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
