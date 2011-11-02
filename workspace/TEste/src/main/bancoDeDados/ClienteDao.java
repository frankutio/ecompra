package main.bancoDeDados;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import main.bean.ClienteBean;

public class ClienteDao {
	
	//Objeto unico
	private static ClienteDao objetoUnico = null;
	
	//dados para conexao com o banco
	private String nomeDriver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/mysql";
	private String user = "root";
	private String senha = "root";
	private Connection conexao;
	
	//Construtor
	private ClienteDao(){ 
		
	}
	//nao sei o que faz. para que?
		public static ClienteDao getInstancia(){
			if(objetoUnico==null){
				objetoUnico = new ClienteDao();
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
		
		ArrayList<ClienteBean> listaUsuarios = new ArrayList<ClienteBean>();
		
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
			
			while( rs.next() ){
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
	
	//verifica se o usuario existe. Se existir, verifica se a senha esta correta. Usado para login
	public boolean logar( String email , String senha ){
		
		ArrayList<ClienteBean> listaUsuarios = new ArrayList<ClienteBean>();
		
		try{
			conectar();
			
			Statement stm = conexao.createStatement();
			String query = "select * from crud_usuario.tb_usuario where email='"+
							email+"' and senha='"+senha+"'";
			
			System.out.println( query );
			
			ResultSet rs = stm.executeQuery(query);
			
			while( rs.next() ){
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
	
	
	//lista todos os usuarios
	public ArrayList<ClienteBean> getListaUsuarios(){
		
		ArrayList<ClienteBean> retorno = new ArrayList<ClienteBean>(); 
		
		try{
			conectar();
			
			Statement stm = conexao.createStatement();
			String query = "select * from crud_usuario.tb_usuario order by nome,email";
			
			System.out.println( query );
			
			ResultSet rs = stm.executeQuery(query);
			
			while( rs.next() ){
				retorno.add(
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
			}
			stm.close();
		}catch( SQLException e ){
			e.printStackTrace();
		}finally{
			desconectar();
		}
		
		return retorno;
	}
	
	public ClienteBean getUsuario( int id ){
		ClienteBean retorno = null;
		try{
			conectar();
			
			Statement stm = conexao.createStatement();
			String query = "select * from crud_usuario.tb_usuario where id_usuario = "+id;
			
			System.out.println( query );
			
			ResultSet rs = stm.executeQuery(query);
			
			
			while( rs.next() ){
				retorno = new ClienteBean(
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
						rs.getString( "senha" )
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
	
	//inclui e altera usuarios
	public boolean save( ClienteBean usuario ){
		if( usuario == null ){
			return false;
		}
		
		String query ;
		
		//se id eh zero, eh uma inclusao
		if( usuario.getCpf()==0 ){
			//insert into tb_usuario values (null,'nome','nome','nome')
			query = "insert into crud_usuario.tb_usuario values(null,'"+
					usuario.getNome()+"','"+usuario.getEmail()+"','"+usuario.getSenha()+"')";
		}else{//se id eh diferente de zero, eh alteracao
			query = "update crud_usuario.tb_usuario set nome = '"+
					usuario.getNome()+"', email='"+usuario.getEmail()+
					"',senha='"+usuario.getSenha()+"' where id_usuario="+usuario.getCpf();
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
	}
	
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
		ClienteDao us = new ClienteDao();
	}
}