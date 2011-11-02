package main;

import java.util.ArrayList;

import main.bancoDeDados.ClienteDao;
import main.bancoDeDados.ConexaoDao;
import main.bean.ClienteBean;

public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		//Criando objeto da class Conexao
		
		//Utilizando metodo class Conexao
		ClienteBean cl = new ClienteBean();
		/*cl.setCpf(003);
		cl.setEmail("t3@teste.com");
		cl.setSenha("123");
		*/
		ConexaoDao con1 = new ConexaoDao();
		con1.buscarClientes();
		
		
		
		ArrayList<ClienteBean> clientes = con1.buscarClientes();
		
		for (ClienteBean cliente : clientes) {
			System.out.println("Cpf: " + cliente.getCpf());
			System.out.println("Email: " + cliente.getEmail());
			}
		
		//con1.getListaUsuarios();
				
		//ConexaoDao.main();
		//System.out.println("bla");
		//NOVO DAO
		

	}

}
