package Controle.Service;


import Entidade.Painel.Impl.Administrador;
import Persistencia.Painel.Impl.AdministradorDao;


public class LoginPainelService {

    private AdministradorDao AdministradorDao;

    public LoginPainelService(AdministradorDao AdministradorDao) {

        this.AdministradorDao = AdministradorDao;
    }

    public LoginPainelService() {
		AdministradorDao = new AdministradorDao();
	}
    
    public Administrador adminLogar( String login , String senha ){

                Administrador user1 = AdministradorDao.getByLogin(login);
                if( user1 != null ){
                        if( user1.getSenha().equals(senha) ){
                                return user1;
                        }else{
                                return null;
                        }
                }else{
                        return null;
                }
	}
}
