
package Persistencia.Portal.Impl;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import Entidade.Portal.Impl.ClienteTesteBean;

public class UsuarioDao {

	//Objeto unico
	private static UsuarioDao objetoUnico = null;

	//dados para conexao com o banco
	private String nomeDriver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/mysql";
	private String user = "root";
	private String senha = "root";
	private Connection conexao;

	//Construtor
	private UsuarioDao(){

	}
	//nao sei o que faz. para que?
        public static UsuarioDao getInstancia(){
                if(objetoUnico==null){
                        objetoUnico = new UsuarioDao();
                }
                return objetoUnico;
        }

	//Conexao ao banco
	private boolean conectar(){
		try{

			Class.forName(nomeDriver);

			conexao = DriverManager.getConnection( url , user , senha );

			System.out.println("Conectado");

		}catch( Exception e ){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	//Desconectar
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

	//verifica se o usuario existe. Usado para validar inclusao e alteracao
	public boolean verificaUsuarioExixtente( String email , int id){

		ArrayList<ClienteTesteBean> listaUsuarios = new ArrayList<ClienteTesteBean>();

		try{
			conectar();

			Statement stm = conexao.createStatement();
			String query ;

			if( id==0 ){
				query = "select * from crud_usuario.tb_usuario where email='"+email+"'";
			}else{
				query = "select * from crud_usuario.tb_usuario where email='"+email+"' and id_usuario <> "+id;
			}

			System.out.println( query );

			ResultSet rs = stm.executeQuery(query);

	/*		while( rs.next() ){
				listaUsuarios.add(
					new ClienteBean(
							rs.getInt( "cpf" ),
							rs.getInt("tel_fixo"),
							rs.getInt("tel_celular"),
							rs.getString( "nome" ),
							rs.getString( "endereco" ),
							rs.getString( "estado" ),
							rs.getString( "uf" ),
							rs.getString( "sexo"),
							rs.getString( "est_civil"),
							rs.getString( "email" ),
							rs.getString( "senha" ))
					);
			}*/
			stm.close();
		}catch( SQLException e ){
			e.printStackTrace();
		}finally{
			desconectar();
		}
		//fim do tratamento select
		//teste select result retornou resultado
		if( listaUsuarios.size()==0 ){
			return false;
		}else{
			return true;
		}
	}

	//verifica se o usuario existe. Se existir, verifica se a senha esta correta. Usado para login
      /*  public UsuarioBean getByLogin( String login ){

		conexao = iniciarConexao();

		try{
			Statement stm = conexao.createStatement();
			ResultSet rs = stm.executeQuery("select * from tb_usuario where txt_login = '"+ login + "'" );

			UsuarioBean usr = null;
			boolean passou = false;

			if(rs != null){
				usr = new UsuarioBean();


				while( rs.next() ){
					usr.setId(rs.getInt("id"));
					usr.setNome(rs.getString("txt_nome"));
					usr.setLogin(rs.getString("txt_login"));
					usr.setSenha(rs.getString("txt_senha"));
					usr.setAtivo(rs.getBoolean("bool_ativo"));
					passou = true;
				}
				fecharConexao(conexao);
			}
			if( passou ){
				return usr;
			}else{
				return null;
			}
		}catch (SQLException e) {
			e.printStackTrace();
			fecharConexao(conexao);
			return null;
		}
	}*/


	//lista todos os usuarios
//	public ArrayList<ClienteTesteBean> getListaUsuarios(){
//
//		ArrayList<ClienteTesteBean> retorno = new ArrayList<ClienteTesteBean>();
//
//		try{
//			conectar();
//
//			Statement stm = conexao.createStatement();
//			String query = "select * from crud_usuario.tb_usuario order by nome,email";
//
//			System.out.println( query );
//
//			ResultSet rs = stm.executeQuery(query);
//
//	/*		while( rs.next() ){
//				retorno.add(
//					new ClienteBean(
//							rs.getInt( "cpf" ),
//							rs.getInt("tel_fixo"),
//							rs.getInt("tel_celular"),
//							rs.getString( "nome" ),
//							rs.getString( "endereco" ),
//							rs.getString( "estado" ),
//							rs.getString( "uf" ),
//							rs.getString( "sexo"),
//							rs.getString( "est_civil"),
//							rs.getString( "email" ),
//							rs.getString( "senha" ))
//					);
//			}*/
//			stm.close();
//		}catch( SQLException e ){
//			e.printStackTrace();
//		}finally{
//			desconectar();
//		}
//
//		return retorno;
//	}
//
//	public ClienteTesteBean getUsuario( int id ){
//		ClienteTesteBean retorno = null;
//		try{
//			conectar();
//
//			Statement stm = conexao.createStatement();
//			String query = "select * from crud_usuario.tb_usuario where id_usuario = "+id;
//
//			System.out.println( query );
//
//			ResultSet rs = stm.executeQuery(query);
//
//		/*
//			while( rs.next() ){
//				retorno = new ClienteBean(
//						rs.getInt( "cpf" ),
//						rs.getInt("tel_fixo"),
//						rs.getInt("tel_celular"),
//						rs.getString( "nome" ),
//						rs.getString( "endereco" ),
//						rs.getString( "estado" ),
//						rs.getString( "uf" ),
//						rs.getString( "sexo"),
//						rs.getString( "est_civil"),
//						rs.getString( "email" ),
//						rs.getString( "senha" )
//				);
//			}*/
//			stm.close();
//		}catch( SQLException e ){
//			e.printStackTrace();
//		}finally{
//			desconectar();
//		}
//		return retorno;
//	}


	//exclui usuario
	public boolean exclui( int id ){
		String delete = "delete from crud_usuario.tb_usuario where id_usuario="+id;

		conectar();
		try{
			Statement stm = conexao.createStatement();
			stm.executeUpdate( delete );
			stm.close();
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		desconectar();

		return true;
	}

	public static void main(String[] args){
		UsuarioDao us = new UsuarioDao();
	}
}
