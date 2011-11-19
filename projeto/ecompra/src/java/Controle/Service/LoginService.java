package Controle.Service;

import Persistencia.Portal.Impl.ClienteDao;
import Entidade.Portal.Impl.Cliente;

public class LoginService {

	private ClienteDao ClienteDao;

	public LoginService() {
		ClienteDao = new ClienteDao();
	}

	public Cliente logar( String login , String senha ){

		Cliente user = ClienteDao.getByLogin(login);
		if( user != null ){
			if( user.getSenha().equals(senha) ){
				return user;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}

}