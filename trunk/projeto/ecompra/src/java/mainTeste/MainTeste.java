package mainTeste;

import java.util.ArrayList;

import Persistencia.Portal.Impl.ClienteTesteDao;
import Entidade.Portal.Impl.ClienteTesteBean;

public class MainTeste {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		//executar como JAVA APLICATION

		ClienteTesteBean cl = new ClienteTesteBean();
		/*cl.setCpf(006);
		cl.setEmail("t6@teste.com");
		cl.setSenha("123");*/

		ClienteTesteDao con1 = new ClienteTesteDao();
		//con1.incluirCliente(cl);
		con1.buscarClientes();


		//imprimindo o resultado do select

		ArrayList<ClienteTesteBean> clientes = con1.buscarClientes();

		for (ClienteTesteBean cliente : clientes) {
			System.out.println("Cpf: " + cliente.getCpf());
			System.out.println("Email: " + cliente.getEmail());
			}


		//con1.getListaUsuarios();

		//ConexaoDao.main();
		//System.out.println("bla");
		//NOVO DAO


	}

}

