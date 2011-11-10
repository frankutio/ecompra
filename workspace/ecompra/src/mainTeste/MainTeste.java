package mainTeste;

import java.util.ArrayList;
import main.bancoDeDados.UsuarioDao;
import main.bancoDeDados.ClienteDao;
import main.bean.ClienteBean;

public class MainTeste {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		//executar como JAVA APLICATION
		
		ClienteBean cl = new ClienteBean();
		/*cl.setCpf(006);
		cl.setEmail("t6@teste.com");
		cl.setSenha("123");*/
		
		ClienteDao con1 = new ClienteDao();
		//con1.incluirCliente(cl);
		con1.buscarClientes();
		
		
		//imprimindo o resultado do select 
		
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
