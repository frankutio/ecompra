package Controle.Service;

import Entidade.Portal.Impl.Cliente;
import Persistencia.Portal.Impl.ClienteDao;

public class LoginService {

    private ClienteDao ClienteDao;

    public LoginService(ClienteDao ClienteDao) {
        this.ClienteDao = ClienteDao;
    }


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