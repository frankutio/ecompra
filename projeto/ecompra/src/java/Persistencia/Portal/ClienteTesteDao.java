package Persistencia.Portal;

import java.sql.*;
import java.util.ArrayList;

import Entidade.Portal.ClienteTesteBean;


public class ClienteTesteDao {
	//dados para conexao com o banco VARIAVEIS
	private String nomeDriver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/mysql";
	private String user = "root";
	private String senha = "root";
	private Connection conexao;

	private boolean conectar(){

		try {

			Class.forName(nomeDriver);
			conexao = DriverManager.getConnection(url, user, senha);
			if (conexao != null){

				System.out.println("conectado");
			}

		} catch (Exception e) {

			e.printStackTrace();
			return false;
		}
		return true;

	}
	private boolean desconectar(){
		try{
			conexao.close();
			System.out.println("Desconectado");

		}catch( Exception e ){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	//Verifica se existe usuario com email e cpf no banco
	public boolean verificaUsuarioExixtente( String email , int cpf){

		ArrayList<ClienteTesteBean> listaUsuarios = new ArrayList<ClienteTesteBean>();

		try{
			conectar();

			Statement stm = conexao.createStatement();
			String query ;

			if( cpf==0 ){
				query = "select * from crud_usuario.tb_usuario where email='"+email+"'";
			}else{
				query = "select * from crud_usuario.tb_usuario where email='"+email+"' and cpf <> "+cpf;
			}

			System.out.println( query );

			ResultSet rs = stm.executeQuery(query);

			while( rs.next() ){
				listaUsuarios.add(
					new ClienteTesteBean(
							rs.getInt( "cpf" ),
							/*rs.getInt("tel_fixo"),
							rs.getInt("tel_celular"),
							rs.getString( "nome" ),
							rs.getString( "endereco" ),
							rs.getString( "estado" ),
							rs.getString( "uf" ),
							rs.getString( "sexo"),
							rs.getString( "est_civil"),
							*/
							rs.getString( "email" ),
							rs.getString( "senha" ))
					);
			}
			stm.close();
		}catch( SQLException e ){
			e.printStackTrace();
		}finally{
			desconectar();
		}

		if( listaUsuarios.size()==0 ){
			return false;
		}else{
			return true;
		}
	}
		//busca todos usuarios
	public ArrayList<ClienteTesteBean> getListaUsuarios(){
ArrayList<ClienteTesteBean> retorno = new ArrayList<ClienteTesteBean>();

		try{
			conectar();

			Statement stm = conexao.createStatement();
			String query = "select * from crud_usuario.tb_usuario";

			System.out.println( query );

			ResultSet rs = stm.executeQuery(query);
			//criando loop p/preencher arraylist
			while( rs.next() ){

				retorno.add(
					new ClienteTesteBean(
						rs.getInt( "cpf" ),
						rs.getString( "email" ),
						rs.getString( "senha" ))
					);
			}
			stm.close();
		}catch( SQLException e ){
			e.printStackTrace();
		}finally{
			desconectar();
		}

		return retorno;
	}
		//Salva novo usuario ou altera existente
	/*public boolean save( ClienteBean usuario ){
		if( usuario == null ){
			return false;
		}

		String query ;

		//se cpf eh zero, eh uma inclusao
		if( usuario.getCpf()==0 ){
			//insert into tb_usuario values (null,'nome','nome','nome')
			query = "insert into crud_usuario.tb_usuario values(null,'"+
					usuario.getNome()+"','"+usuario.getEmail()+"','"+usuario.getSenha()+"')";
		}else{//se cpf eh diferente de zero, eh alteracao
			query = "update crud_usuario.tb_usuario set nome = '"+
					usuario.getNome()+"', email='"+usuario.getEmail()+
					"',senha='"+usuario.getSenha()+"' where cpf="+usuario.getCpf();
		}
		System.out.println(query);

		//grava no bancos
		conectar();
		try{
			Statement stm = conexao.createStatement();
			stm.executeUpdate( query );

			stm.close();
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		desconectar();


		return true;
	}*/

	public ArrayList<ClienteTesteBean> buscarClientes(){
		conectar();
		String sql = "select * from crud_usuario.tb_usuario";

		try {
			//preparando statement para inserção
			PreparedStatement stmt = conexao.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);

			ArrayList<ClienteTesteBean> clientes = new ArrayList<ClienteTesteBean>();

			while (rs.next()){
				//criando obj ClienteBean
				ClienteTesteBean cliente = new ClienteTesteBean();
				cliente.setCpf(rs.getInt("cpf"));
				cliente.setEmail(rs.getString("email"));
				//adicionando obj à lista
				clientes.add(cliente);
			}
			rs.close();
			stmt.close();
			return clientes;

		}catch(SQLException e) {
			 throw new RuntimeException(e);
		 }
	}

	public void incluirCliente(ClienteTesteBean cliente){
		conectar();

		String sql = "insert into crud_usuario.tb_usuario (cpf,email,senha) values (?,?,?)";

		 try {
		 // prepared statement para inserção
		 PreparedStatement stmt = conexao.prepareStatement(sql);

		 // seta os valores
		 stmt.setInt(1,cliente.getCpf());
		 stmt.setString(2,cliente.getEmail());
		 stmt.setString(3,cliente.getSenha());

		 // executa
		 stmt.execute();
		 stmt.close();
		 } catch (SQLException e) {
		 throw new RuntimeException(e);
		 	}
		 }

	//metodo main
	public static void main(){

		ClienteTesteDao con = new ClienteTesteDao();



	}

}
